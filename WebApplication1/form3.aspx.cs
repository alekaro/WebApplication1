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
            // if this is not the first time the page is loading
            // (i.e., the user has already submitted form data)
            if (IsPostBack)
            {
                Validate(); // validate the form

                // if the form is valid
                if (IsValid)
                {
                    // retrieve the values submitted by the user
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
                } // end if
            } // end if
        } // end method Page_Load
    }
}