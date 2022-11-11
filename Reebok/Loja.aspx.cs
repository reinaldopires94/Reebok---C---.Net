using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reebok
{
    public partial class Loja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("login.aspx");

            //data
            lbl_dataHora.Text = DateTime.Now.ToString("dd/MM/yyyy - HH:mm:ss");


        }

        protected void ddl_filtrar_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddl_filtrar.SelectedItem.Text == "Filtrar")
            {
                Xml1.TransformSource = "todos.xslt";
            }
            else if (ddl_filtrar.SelectedItem.Text == "Masculino")
            {
                Xml1.TransformSource = "tenisMas.xslt";
            }
            else if (ddl_filtrar.SelectedItem.Text == "Feminino")
            {
                Xml1.TransformSource = "tenisFem.xslt";
            }
            else if (ddl_filtrar.SelectedItem.Text == "Unisexo")
            {
                Xml1.TransformSource = "tenisUnisexo.xslt";
            }
            
        }
    }
}