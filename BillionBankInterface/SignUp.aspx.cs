/*
 * Programmer: Stefan Reesberg
 * Purpose: This web form handles the client-side addition of user details, to be passed to the web service and subsequently to the database.
 * Date: 04/10/2022
 * 
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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)               
        {
            if (Page.IsValid)                                                                                   //If the page has no failed validators, continue.
            {
                WebService1SoapClient ws = new WebService1SoapClient();                                         //Set up a soap client connection to the Web Service.

                ws.AddUserDetails(tbName.Text, tbSurname.Text, tbID.Text,                                       //Call the specified WebMethod and pass the textbox values as parameters.
                    tbEmail.Text, tbConNum.Text, tbSecretQuestion.Text,
                    tbSecretAnswer.Text, tbPhysAdd.Text, tbPassword.Text);
               
                //Display a popup box guiding the user.
                Response.Write("<script>alert('Welcome! You are now a registered user with Billion Banks. Please click on the Log In link to be redirected.');</script>"); 
               
                //Reset every textbox after the prompt appears.
                tbName.Text = "";
                tbSurname.Text = "";
                tbID.Text = "";
                tbEmail.Text = "";
                tbConNum.Text = "";
                tbSecretAnswer.Text = "";
                tbSecretQuestion.Text = "";
                tbPhysAdd.Text = "";
                tbPassword.Text = "";
                tbConfPassword.Text = "";
                
                
            }
            else
            {
                errorLabel.Text = "Failed, please try again after applying the requested corrections.";       //If the Page.IsValid check fails, display an error message.
            }
                
            
            
        }
    }
}