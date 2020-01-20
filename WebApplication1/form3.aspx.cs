using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class form3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            // jeżeli user submittował formularz
            if (IsPostBack)
            {
                Validate(); // validate the form

                // jeżeli się zwalidował
                if (IsValid)
                {
                    //przechwytuje wartości wpisane przez usera
                    string name = inputName.Text;
                    string email =inputEmail.Text;
                    string phone = inputPhone.Text;

                    // show the the submitted values
                    outputLabel.Text = "Dziękujemy za wypełnienie formularza<br/>" +
               "Otrzymaliśmy następujące informacje:<br/>";
                    outputLabel.Text +=
                       String.Format("Imię: {0}{1}E-mail: {2}{1}Telefon: {3}",
                          name, "<br/>", email, phone);
                    outputLabel.Visible = true; // display the output message
                } 
            } 
        } 
    }
}