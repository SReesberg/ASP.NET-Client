/*
 * Programmer: Stefan Reesberg
 * Purpose: This web form handles the log in process from the client side and creates a session variable to identify the user throughout the application.
 * Date: 04/10/2022
 */
using BillionBankInterface.localhost;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BillionBankInterface.ServiceReference1;

namespace BillionBankInterface
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)                                       //Clicking the Log In button results in the following code:
        {
            WebService1SoapClient ws = new WebService1SoapClient();                                     //Establish Soap Client connection to the web service.

            
            Session["id"] = ws.LogIn(tbLogInEmail.Text, tbLogInPassword.Text);                          //Create and equate a session variable to the value returned by the LogIn WebMethod.

            

            if ((string)Session["id"] != "0")                                                           //If the session variable is not equal to zero, redirect the user to the Account Page.
            {                                                                                           //If the verification check on the web service side fails, a value of 0 is returned, blocking access.
                tbLogInEmail.Text = "";                                                                 //Clear the E-mail textbox.
                tbLogInPassword.Text = "";                                                              //Clear the Password textbox.
                Response.Redirect("AccountPage.aspx");                                                  //Redirect user to AccountPage.
            }
            else if((string)Session["id"] == "ERROR")
            {
                errorLabel.Text = "The Web Service is currently unavailable. Please contact your service provider.";  //This value is returned if an exception occured Web Service-side during the Log-in process.
            }
            else                                                                                        //Otherwise, notify the user that the login details do not match any records.
            {
                tbLogInEmail.Text = "";                                                                 //Clear the E-mail textbox.
                tbLogInPassword.Text = "";                                                              //Clear the Password textbox.
                errorLabel.Text = "Your e-mail and password are incorrect.";
            }
            

        }
    }
}