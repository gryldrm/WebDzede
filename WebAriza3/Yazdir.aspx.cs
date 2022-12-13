using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using System.Xml;
using iTextSharp.text.xml;
using iTextSharp.text.html;


namespace WebAriza3
{
    public partial class Yazdir : System.Web.UI.Page
    {
        public string RelativeToAbsoluteURLS(string text)
        {
            if (String.IsNullOrEmpty(text))
                return text;

            string absoluteUrl = Request.PhysicalApplicationPath;
            String value = Regex.Replace(text, "<(.*?)(src)=\"(?!http)(.*?)\"(.*?)>", "<$1$2=\"" + absoluteUrl + "$3\"$4>", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            return value.Replace(absoluteUrl + "/", absoluteUrl);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //IEnumerable<int> data = Enumerable.Range(1, 4);
            //gv.DataSource = data;
            //gv.DataBind();
            //lbl.Text = DateTime.Now.ToString();

            Page p = new Page();
            HtmlForm f = new HtmlForm();
            f.Controls.Add(form1);
            p.Controls.Add(f);

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            f.Controls[0].RenderControl(htw);
            string content = sw.ToString();

            Document doc = new Document(iTextSharp.text.PageSize.A4);
            MemoryStream output = new MemoryStream();
            PdfWriter.GetInstance(doc, output);
            doc.Open();

            //XmlTextReader xr = new XmlTextReader(new StringReader(content));
            //HtmlParser.Parse(doc, xr);
            content = RelativeToAbsoluteURLS(content);

            List<IElement> dizi = HTMLWorker.ParseToList(new StringReader(content), null);

            foreach (var item in dizi)
                doc.Add(item);


            Phrase phrase = new Phrase(Environment.NewLine);
            doc.Add(phrase);
            //doc.Add(phrase);
            //doc.Add(phrase);


            doc.Close();

            Response.Clear();
            Response.AddHeader("content-disposition", "inline;");
            Response.ContentType = "application/pdf";
            Response.BinaryWrite(output.ToArray());
            Response.End();

        }
    }
}