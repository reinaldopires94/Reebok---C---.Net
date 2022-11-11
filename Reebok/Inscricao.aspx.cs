using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Configuration;



namespace Reebok
{
    public partial class Inscricao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //session de segura. -> para sempre passar pelo login.
                if (Session["email"] == null)
                Response.Redirect("Login.aspx");

            //data
            lbl_dataHora.Text = DateTime.Now.ToString("dd/MM/yyyy - HH:mm:ss");

        }



        protected void rbl_generoFem_CheckedChanged(object sender, EventArgs e)
        {
            if (rbl_generoFem.Checked)
            {
                rbl_generoMas.Checked = false;
            }
        }

        protected void rbl_generoMas_CheckedChanged(object sender, EventArgs e)
        {
            if (rbl_generoMas.Checked)
            {
                rbl_generoFem.Checked = false;
            }

        }

        protected void ddl_regime_SelectedIndexChanged(object sender, EventArgs e)
        {
            //limpar memoria
            ddl_curso.Items.Clear();

            ddl_curso.Items.Add(" ");
            if (ddl_regime.SelectedItem.Text == "Diurno")
            {
                //ddl_curso.Items.Add(" ");
                ddl_curso.Items.Add("Curso Diurno (1)");
                ddl_curso.Items.Add("Curso Diurno (2)");

            }
           else if (ddl_regime.SelectedItem.Text == "Noturno")
            {
                //ddl_curso.Items.Add(" ");
                ddl_curso.Items.Add("Curso Noturno (1)");
                ddl_curso.Items.Add("Curso Noturno (2)");
            }

        }

        protected void btn_limpar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inscricao.aspx", false);
        }

        protected void btn_submeter_Click(object sender, EventArgs e)
        {
            // senha
            Regex maiusculas = new Regex("[A-Z]");
            Regex minusculas = new Regex("[a-a]");
            Regex numeros = new Regex("[0-9]");
            Regex espicial = new Regex("[^A-Z a-z 0-9]"); // ^ negação 
            Regex plica = new Regex("'");

            string tipo_palavraPasse = "Senha Forte";
         
            if (tb_senha.Text.Length < 6)
                tipo_palavraPasse = "Senha Fraca";
            lbl_resultado.Text = tipo_palavraPasse;
            if (maiusculas.Matches(tb_senha.Text).Count < 1)
                tipo_palavraPasse = "Senha Fraca";
            lbl_resultado.Text = tipo_palavraPasse;
            if (minusculas.Matches(tb_senha.Text).Count < 1)
                tipo_palavraPasse = "Senha Fraca";
            lbl_resultado.Text = tipo_palavraPasse;
            if (numeros.Matches(tb_senha.Text).Count < 1)
                tipo_palavraPasse = "Senha Fraca";
            lbl_resultado.Text = tipo_palavraPasse;
            if (espicial.Matches(tb_senha.Text).Count < 1)
                tipo_palavraPasse = "Senha Fraca";
            lbl_resultado.Text = tipo_palavraPasse;
            if (plica.Matches(tb_senha.Text).Count > 0)
            {
                tipo_palavraPasse = "Senha Fraca";
                lbl_resultado.Text = tipo_palavraPasse;
            }
               

            // senha forte
            else if(tipo_palavraPasse == "Senha Forte")
            {
                //formulario
                Session["Nome"] = tb_nome.Text;
                Session["Email"] = tb_email.Text;
                Session["Senha"] = tb_senha.Text;
                Session["Morada"] = tb_morada.Text;
                Session["Código-Postal"] = tb_codigoPostal.Text;
                Session["GéneroF"] = rbl_generoFem.Text;
                Session["GéneroM"] = rbl_generoMas.Text;
                Session["Regime"] = ddl_regime.Text;

                

                Session["Curso"] = ddl_curso.Text;
                Session["total"] += "" + Session["Regime"] + " - " +
                    Session["Curso"];
                

                // pag. dados.aspx
                Response.Redirect("Dados.aspx");

            }

        }

        protected void cb_xadrez_CheckedChanged(object sender, EventArgs e)
        {
            if(cb_xadrez.Checked)
            {


            }
        }

        protected void tb_morada_TextChanged(object sender, EventArgs e)
        {
           
         
        }
    }
}