/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form allows the user to enter user details they would like to replace/correct  that are stored on the Web Service database.
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
    public partial class ChangeUserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["id"] == null || (string)Session["id"] == "0")             //On page load, check if session variable is = null or 0. Redirect to LogIn if true.
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)                         
        {
            if (Page.IsValid)                                                             //Check if all validator requirements on the page have been met.
            {
                WebService1SoapClient ws = new WebService1SoapClient();                   //Connect to Web Service via Soap Client.

                ws.UpdateDetails((string)Session["id"], tbName.Text, tbSurname.Text,      //Invoke the updateDetails WebMethod, passing entered user details as parameters as well as the session variable.
                    tbEmail.Text, tbConNum.Text, tbSecretQuestion.Text,
                    tbSecretAnswer.Text, tbPhysAdd.Text);

                Session["id"] = tbEmail.Text;                                             //Set the session variable's value to the newly edited user e-mail address.

                //Creates a popup notifying the user of success and suggesting a potential action.
                Response.Write("<script>alert('Your changes have been saved. Please navigate to the Account Page for all account and transaction-related requirements.');</script>");

                //Reset textbox values after updating.
                tbName.Text = "";
                tbSurname.Text = "";
                tbEmail.Text = "";
                tbConNum.Text = "";
                tbSecretAnswer.Text = "";
                tbSecretQuestion.Text = "";
                tbPhysAdd.Text = "";


            }
            
        }
    }
}