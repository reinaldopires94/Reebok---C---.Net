using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Xml.Linq;

namespace Reebok
{
    public partial class Dados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("login.aspx");
            //data
            lbl_dataHora.Text = DateTime.Now.ToString("dd/MM/yyyy - HH:mm:ss");

            lbl_nome.Text = Session["Nome"].ToString();
            lbl_email.Text = Session["Email"].ToString();
            lbl_senha.Text = Session["Senha"].ToString();
            lbl_morada.Text = Session["Morada"].ToString();
            lbl_codigoPostal.Text = Session["Código-Postal"].ToString();
            lbl_fem.Text = Session["GéneroF"].ToString();
            lbl_fem.Text = Session["GéneroM"].ToString();
            lbl_total.Text = Session["total"].ToString();

            
          

        }

        protected void btn_xml_Click(object sender, EventArgs e)
        {
            //enviar via XML
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=xmlfile.xml");


            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.ContentType = "text/xml";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<Inscrição><nome>" + lbl_nome.Text + "</nome><email> " +
              lbl_email.Text + "</email>" +
              "<senha> "+lbl_senha.Text + "</senha>" +
              "<morada>"+ lbl_morada.Text+"</morada>" +
              "<codigoPostal>"+lbl_codigoPostal.Text+"</codigoPostal>" +
              "<curso>"+lbl_total.Text+"</curso>" +
              "<data>"+lbl_dataHora.Text+"</data>" +
              "</Inscrição>");


            Response.Write(sw.ToString());
            Response.End();

        }

        protected void btn_excel_Click(object sender, EventArgs e)
        {
            //Download via excel
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=excel.xls");


            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.ContentType = "application/vnd.ms-excel";
            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<table><tr><td><b>Nome</b></td><td>" + lbl_nome.Text + "</td></tr>" +
                "<tr><td><b>Email</b></td><td>" + lbl_email.Text + "</td></tr>" +
                "<tr><td><b>Senha</b></td><td>" + lbl_senha.Text + "</td></tr>"+
                "<tr><td><b>Morada</b></td><td>" + lbl_morada.Text + "</td></tr>" +
                "<tr><td><b>Código Postal</b></td><td>" + lbl_codigoPostal.Text + "</td></tr>" +
                 "<tr><td><b>Curso</b></td><td>" + lbl_total.Text + "</td></tr>" +
                "</table>");

            Response.Write(sw.ToString());
            Response.End();

        }

        protected void btn_word_Click(object sender, EventArgs e)
        {
            // Download via word
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=wordfile.doc");


            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.ContentType = "application/vnd.ms-word";
            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<table><tr><td><b>Nome:</b></td><td>" + lbl_nome.Text + "</td></tr>" +
                "<tr><td><b>Email:</b></td><td>" + lbl_email.Text + "</td></tr>" +
                "<tr><td><b>Senha:</b></td><td>" + lbl_senha.Text + "</td></tr>" +
                "<tr><td><b>Morada:</b></td><td>" + lbl_morada.Text + "</td></tr>" +
                "<tr><td><b>Código Postal:</b></td><td>" + lbl_codigoPostal.Text + "</td></tr>" +
                 "<tr><td><b>Curso:</b></td><td>" + lbl_total.Text + "</td></tr>" +
                "</table>");

            Response.Write(sw.ToString());
            Response.End();
        }

        protected void btn_pdf_Click(object sender, EventArgs e)
        {
            // Download via PDF
            string caminho = ConfigurationSettings.AppSettings.Get("PathFicheirosPDFS");

            string urlsite = ConfigurationSettings.AppSettings.Get("SiteURL");

            string pdfTemplate = caminho + "Template\\reebokPDFs.pdf";



            string nomePDF = DateTime.Now.ToString().Replace(":", "").Replace
                ("/", "").Replace(" ", "") + ".pdf";


            string novoFicheiro = caminho + nomePDF;

            PdfReader pdfreader = new PdfReader(pdfTemplate);

            PdfStamper pdfstamper = new PdfStamper(pdfreader, new FileStream
                (novoFicheiro, FileMode.Create));

            AcroFields campos = pdfstamper.AcroFields;
            campos.SetField("data",lbl_dataHora.Text);
            campos.SetField("nome", lbl_nome.Text);
            campos.SetField("email", lbl_email.Text);
            campos.SetField("morada", lbl_morada.Text);
            campos.SetField("cod",lbl_codigoPostal.Text);
            campos.SetField("regime", lbl_total.Text);

            pdfstamper.Close();



            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient servidor = new SmtpClient();

                mail.From = new MailAddress("reinaldo.bezerra.t0121950@edu.atec.pt");
                mail.To.Add(new MailAddress(lbl_email.Text));

                mail.Subject = "Reebok";

                mail.IsBodyHtml = true;
                mail.Body = "Obrigado pela sua Inscrição";


                System.Net.Mail.Attachment anexo;

                anexo = new System.Net.Mail.Attachment(caminho + nomePDF);

                mail.Attachments.Add(anexo);

                servidor.Host = "smtp.office365.com";
                servidor.Port = 587;

                servidor.Credentials = new NetworkCredential("reinaldo.bezerra.t0121950@edu.atec.pt",
                    "REI@939652");

                servidor.EnableSsl = true;
                servidor.Send(mail);

               // lbl_men.Text = "Efetuado com Sucesso.";

            }
            catch (Exception ex)
            {
                //lbl_menErro.Text = "Erro";
            }
            Response.Redirect(urlsite + "/PDFS/" + nomePDF);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loja.aspx");
        }
    }
}