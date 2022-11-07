/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form handles the creation of new bank accounts tied to the currently logged in user.
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
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["id"] == null || (string)Session["id"] == "0")               //Upon page load, check if the session variable is null or equal to 0.
            {
                Response.Redirect("LogIn.aspx");                                             //If so, redirect the user to the Log In page.
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)                           //Clicking on the Create Account button executes the following code:
        {
            string accountType;                                                              //Create an empty string variable to save account type selection.
            
            WebService1SoapClient ws = new WebService1SoapClient();                          //Establish a connection to the Web Service via Soap Client.
           
            if(accountTypeDDL.SelectedIndex == 0)                                            //If the selected index of AccountType Drop Down List is 0:
            {
                accountType = "Credit";                                                      //Set the accountType variable equal to "Credit".
                ws.CreateAccount((string)Session["id"], accountType);                        //Invoke the CreateAccount WebMethod, passing the session variable and accountType as parameters.
            }
            else if (accountTypeDDL.SelectedIndex == 1)                                      //Otherwise, if the selected index of AccountType Drop Down List is 1:
            {
                accountType = "Debit";                                                       //Set the accountType variable equal to "Debit".
                ws.CreateAccount((string)Session["id"], accountType);                        //Invoke the CreateAccount WebMethod, passing the session variable and accountType as parameters.
            }
            
            lblConf.Text = "Account created successfully!";                                  //Once either step is completed, notify the user that the account was created successfully.
        }
    }
}