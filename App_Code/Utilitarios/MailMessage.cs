using System.Collections.Generic;
using System.Collections;


namespace Utilities
{
    /// <summary>
    /// Classe respons�vel herdada do (System.Net.Mail.MailMessage), com a algumas expans�es
    /// </summary>
    public class MailMessage : System.Net.Mail.MailMessage
    {
        private IDictionary _dictionary = new Dictionary<string, string>();
        private string _pathTemplate = string.Empty;

        public MailMessage()
        {
            //Contructor
        }

        /// <summary>
        /// Propriedade respons�vel pela implementa��o da funcionalidade de substitui��o de palavras chaves no Template por parametros da aplica��o.
        /// </summary>
        /// <example> This sample shows how to call the GetZero method.
        /// <code>
        ///   MailMessage msg = new MailMessage();
        ///   msg.PathTemplate = "C:\Template\template.htm";
        ///   msg.Dicionary.Add("#nome#", variavel);
        /// </code>
        /// </example>
        public IDictionary Dicionary
        {
            get { return this._dictionary; }
        }

        /// <summary>
        /// Propriedade respons�vel em indicar o caminho f�sico do Template de e-mail para a aplica��o.
        /// </summary>
        /// <example> This sample shows how to call the GetZero method.
        /// <code>
        ///   MailMessage msg = new MailMessage();
        ///   msg.PathTemplate = "C:\Template\template.htm";
        /// </code>
        /// </example>
        public string PathTemplate
        {
            get { return this._pathTemplate; }
            set { this._pathTemplate = value; }
        }
    }
}
    
