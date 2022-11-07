/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form handles all transaction-related requests sent to the Web Service, handles the returned values and displays the relevant information to the user.
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
    public partial class Transactions : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)                            //Upon page load:
        {

            if ((string)Session["id"] == null || (string)Session["id"] == "0")          //Check if the session variable is equal to null/0, redirect to LogIn if so.
            {
                Response.Redirect("LogIn.aspx");
            }
           
            WebService1SoapClient ws = new WebService1SoapClient();                     //Establish connection to Web Service.

            List<int> returnedAccounts = ws.GetAccounts((string)Session["id"]);         //Create List of integers to store Account Number values returned from getAccounts WebMethod. Pass session variable as parameter.

            if (!IsPostBack)                                                            //Check if IsPostBack value is false (meaning the first time the page is rendered, perform the following:)
            {
                foreach (var item in returnedAccounts)                                  //For each item in returnedAccounts, add each to the Source and Destination Account Drop Down Lists.
                {
                    accountsDDLSource.Items.Add(item.ToString());      
                    accountsDDLDest.Items.Add(item.ToString());

                }
            }
        }

       

        protected void btnTransfer_Click(object sender, EventArgs e)                                              //Clicking the Transfer Money button execuutes the following code:
        {
            if (accountsDDLSource.SelectedIndex != 0 && accountsDDLDest.SelectedIndex != 0)                       //Check if selected indexes of both source and destination account drop down lists are not equal to zero.
            {                                                                                                     //This ensures that the user must select source and destination accounts in order for the transaction to occur.
                
                WebService1SoapClient ws = new WebService1SoapClient();                                           //Connect to Web Service via Soap Client.

                int selectedSourceAccount = Int32.Parse(accountsDDLSource.SelectedValue);                         //Create a variable to store the selected value of source drop down list for later use.
                int selectedDestAccount = Int32.Parse(accountsDDLDest.SelectedValue);                             //Create a variable to store the selected value of destination drop down list for later use.
                                                                                                                  //Both are parsed to int in order to be passed to getCurrentBalance WebMethod later.
                
                List<decimal> returnedSBalance =                                                                  //Create a List of decimals to store returned values of invoked getCurrentBalance WebMethod for Source account.
                    ws.GetCurrentBalance((string)Session["id"], selectedSourceAccount);
               
                List<decimal> returnedDBalance =                                                                  //Create a List of decimals to store returned values of invoked getCurrentBalance WebMethod for Destination account.
                    ws.GetCurrentBalance((string)Session["id"], selectedDestAccount);

               
                if (selectedSourceAccount != selectedDestAccount && returnedSBalance != null && returnedDBalance != null)//Check if the Source account does not equal the Destination account and neither account's balance equals null. Prevents account shenanigans.
                {
                    if (returnedSBalance[0] >= Decimal.Parse(tbTransferAmount.Text))                              //After initial check succeeds, ensure that the source account's current balance is greater than the transfer amount.
                    {
                        ws.TransferMoney(selectedDestAccount, selectedSourceAccount,                              //Invoke transferMoney WebMethod, passing Destination and Source accounts as well as transfer amount, and balances of both accounts as parameters.
                            Decimal.Parse(tbTransferAmount.Text), returnedSBalance[0], returnedDBalance[0]);
                        
                        lblError.Text = "Transaction successful!";                                                //Notify user that the transaction was successful.
                       

                        ws.WriteToLog(selectedDestAccount, selectedSourceAccount,                                 //Invoke the writeToLog WebMethod, passing the transaction details as parameters and using the session variable (email) as a naming parameter for log file.
                            Decimal.Parse(tbTransferAmount.Text), (string)Session["id"] + ".log");

                        //Display a message to user prompting them to navigate elsewhere.
                        Response.Write("<script>alert('Transaction successful. To view transaction details and account balances, please navigate to the Account page.');</script>");

                        tbTransferAmount.Text = "";                                                               //Clear the textbox.
                        accountsDDLSource.SelectedIndex = 0;                                                      //Reset the drop-down list.
                        accountsDDLDest.SelectedIndex = 0;                                                        //Reset the drop-down list.
                    }
                    else
                    {
                        lblError.Text = "You cannot transfer an amount greater than your current balance!";       //If balance check fails, notify user.
                    }
                }
                else
                {
                    lblError.Text = "You cannot transfer money to and from the same account!";                    //If Source and Destination accounts are the same, stop the user and notify.
                }
            }
            else
            {
                lblError.Text = "You did not select a source or a destination account. Please do so.";            //Notify user that a source account or destination account was not selected.
            }
        }

       
    }
}