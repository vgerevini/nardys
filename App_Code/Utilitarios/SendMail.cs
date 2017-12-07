using System.Collections;
using System.Configuration;
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Threading;

namespace Utilities
{
    /// <summary>
    /// Classe responsável pelo mecanisco de envio de e-mail. As configuração de smtp.ag2.com.br devem ficar no web.Config TAG (System.Net)
    /// </summary>
    public class SendMail
    {
        /// <summary>
        /// Envia e-mail de forma que a aplicação fique aguardando o término do envio.
        /// </summary>
        /// <param name="mailMessage"></param>
        public SendMail(MailMessage mailMessage)
        {
            new SendMail(mailMessage, true);
        }

        /// <summary>
        /// Envia o e-mail abrindo uma thread, ou seja, a aplicação não aguarda o envio do e-mail, o envio se torna independente da aplicação.
        /// </summary>
        /// <param name="mailMessage"></param>
        /// <param name="thread"></param>
        public SendMail(MailMessage mailMessage, bool thread)
        {
            if (thread)
            {
                Thread tr = new Thread(new ParameterizedThreadStart(StartSendMail));
                tr.Start(mailMessage);
            }
            else
            {
                StartSendMail(mailMessage);
            }
        }

        static public string defaultSenderEmail = ConfigurationManager.AppSettings["RemetentePadrao"];

        private void StartSendMail(object param)
        {
            MailMessage DadosEmail = (MailMessage)param;

            if (DadosEmail.Dicionary.Count > 0)
                ReadTemplate(DadosEmail);

            //Para evitar problemas com caracteres especiais configuramos o Charset            
            DadosEmail.BodyEncoding = Encoding.GetEncoding("utf-8");

            // Adiciona Remetente
            DadosEmail.From = new MailAddress(defaultSenderEmail);

            //cria o eto SMTP, pega as configurações do App.config ou Web.Config
            SmtpClient SmtpClient = new SmtpClient(ConfigurationManager.AppSettings["HostPadrao"]);

            //SmtpClient SmtpClient = new SmtpClient("smtp.gmail.com", 587);
            //SmtpClient.EnableSsl = true;
            //SmtpClient.Credentials = new System.Net.NetworkCredential("email", "senha");
           
            try
            {
                SmtpClient.Send(DadosEmail);
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            DadosEmail.Dispose();
        }

        private void ReadTemplate(MailMessage mailMessage)
        {
            StreamReader sr = new StreamReader(mailMessage.PathTemplate, Encoding.Default);
            string content = sr.ReadToEnd();
            sr.Close();

            foreach (DictionaryEntry item in mailMessage.Dicionary)
            {
                content = content.Replace(item.Key.ToString(), item.Value.ToString());
            }

            mailMessage.Body = content;
        }
    }
}
    
