using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;


namespace Reebok
{
    public partial class App : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //session de segura. -> para sempre passar pelo login.
            if (Session["email"] == null)
                Response.Redirect("Login.aspx");


         // xml
         XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load("https://www.noticiasaominuto.com/rss/desporto");

            // Xml1 -> vai alimentar o xmlDoc.
            Xml1.Document = xmlDoc;


            //data

            lbl_data.Text = DateTime.Now.ToString("dd/MM/yyyy - HH:mm:ss");


        }

        protected void btn_inscricao_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inscricao.aspx");
              
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DropDownList1 <--
            if (DropDownList1.SelectedItem.Text == "Todas Notícias")
            {
                Xml1.TransformSource = "formata_news.xslt";
            }
            if (DropDownList1.SelectedItem.Text == "5 Notícias")
            {
                Xml1.TransformSource = "formata_news5.xslt";
            }
            if (DropDownList1.SelectedItem.Text == "10 Notícias")
            {
                Xml1.TransformSource = "formata_news10.xslt";
            }
            if (DropDownList1.SelectedItem.Text == "25 Notícias")
            {
                Xml1.TransformSource = "formata_news25.xslt";
            }

        } 
    }
}