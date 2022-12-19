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
using System.Data;
using System.Windows.Controls;

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

        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = dataClass.get_tbl("SELECT * FROM [tbl_chz] WHERE ([id] = "+ Session["yzdr"].ToString() + ")");
            DataList1.DataBind();
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=TakipNo"+ Session["yzdr"].ToString() + ".doc");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-word ";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            // Gridviewdakı bütün verileri aktarabilmek için sayfalama özelleğini iptal edip , Gridview’mızdaki değişikliklerin geçerli olabilmesi için tekrar dolduruyoruz
            //DataList1.AllowPaging = false;
            DataList1.DataBind();
            // Gridview’daki değerlerimizi html formatına renderlıyoruz
            DataList1.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();


        }
    }
}