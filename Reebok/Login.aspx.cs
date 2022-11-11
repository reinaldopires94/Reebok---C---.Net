using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reebok
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            if (tb_email.Text == "admin" &&  tb_senha.Text ==
              "123")
            {
                Session["email"] = "loginOk";
                Response.Redirect("App.aspx");
            }
            else
            {
                lbl_erroLogin.Visible = true;
            }

        }
    }
}