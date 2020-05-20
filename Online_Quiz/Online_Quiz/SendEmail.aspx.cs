using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Online_Quiz
{
    public partial class SendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage(txtFrom.Text, txtTo.Text, txtSubject.Text, txtBody.Text);
                mailMessage.IsBodyHtml = true; // so we can right html tags in message
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("ccyang.work@gmail.com", "Pft96255"); //here
                smtpClient.Send(mailMessage);
                lblStatus.Text = "Email sent successfully!";
            }
            catch (Exception ex)
            {

                lblStatus.Text = ex.Message;
            }
        }


    }
}