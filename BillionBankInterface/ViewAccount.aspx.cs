/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form handles the population of dropboxes for user interaction and the display of account and transaction details pertaining to the results of the dropboxes.
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
using System.Collections;
using System.Data;

namespace BillionBankInterface
{
    public partial class ViewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)                                     //As the page loads:
        {
            if ((string)Session["id"] == null || (string)Session["id"] == "0")                   //Perform the standard securty check using existing Session variable. If null/0, redirect user.
            {
                Response.Redirect("LogIn.aspx");
            }
            
            if (!IsPostBack)                                                                     //Checks if page is being rendered for first time or responding to a postback. If not:
            {
                WebService1SoapClient ws = new WebService1SoapClient();                          //Connect to the Web Serivce via Soap Client.

                List<int> returnedAccounts = ws.GetAccounts((string)Session["id"]);              //Create a List of integers and store the returned value of the getAccounts WebMethod inside. Session variable is passed as parameter.

                if (returnedAccounts != null)                                                    //As long as returnedAccounts are not equal to null:
                { 
                    foreach (var item in returnedAccounts)                                       //Iterate through the List, adding each value as an item to the specified Drop Box.
                    {
                        accountDropDownList.Items.Add(item.ToString());
                    }
                }
            }
            
            if (accountDropDownList.Items.Count <= 1)                                            //Checks if the amount of items is less than or equal to 1.
            {
                detailsListBox.Items.Add("You do not own any accounts.");                        //If the only value in dropbox is the default added value, notify user of the lack of accounts.
                recentTransactionLB.Items.Clear();                                               //Clear the Transaction List Box of entries.
                recentTransactionLB.Items.Add("No transactions to display.");                    //If there is no account there can be no transactions, display this info to user.
            }

        }

        protected void accountDropDownList_SelectedIndexChanged(object sender, EventArgs e)     //Every time the index of accountDropDownList is changed, execute the following code:
        {
            if (accountDropDownList.SelectedIndex == 0)                                         //Check if the user did not select an item besides the default entry.
            {
                lblError.Text = "Please select an account.";                                    //If so, prompt the user to select an account.
            }
            else                                                                                //Otherwise:
            {
                WebService1SoapClient ws = new WebService1SoapClient();                         //Connect to Web Service via Soap Client.

                int number = Int32.Parse(accountDropDownList.SelectedValue);                    //Create an integer that saves the value of the selected item in the Drop Down List.
                
                List<string> returnedDetails = ws.PopulateList((string)Session["id"], number);  //Create a List to store the returned Account Details from the populateList WebMethod.
               
                List<string> returnedTrans = ws.GetRecentTransaction(number);                   //Create an additional List to store the returned Transaction Details from the getRecentTransactions WebMethod.

                detailsListBox.Items.Clear();                                                   //Clear the Account Listbox of items to prep for display.
                recentTransactionLB.Items.Clear();                                              //Clear the Transaction Listbox of items to prep for display.
                
                
                if (returnedDetails.Count != 0 && returnedDetails != null)                      //Check if the returnedDetails List is not empty or equal to null.
                {
                    detailsListBox.Items.Clear();                                               //Clear the textbox before adding new entries.
                    detailsListBox.Items.Add("ACCOUNT DETAILS");                                //Header 
                    detailsListBox.Items.Add("--------------------------------");               //Because the amount of values returned is certain, they can be reliably added to a Listbox this way.
                    detailsListBox.Items.Add("Account Number: " + returnedDetails[0]);          //Add first value of returnedDetails to the Listbox
                    detailsListBox.Items.Add("Account Creation Date: " + returnedDetails[1]);   //Second
                    detailsListBox.Items.Add("Current Balance: R" + returnedDetails[2]);        //Third
                    detailsListBox.Items.Add("Holder ID: " + returnedDetails[3]);               //Fourth
                    detailsListBox.Items.Add("Account Type: " + returnedDetails[4]);            //Fifth
                }
                else
                {
                    detailsListBox.Items.Add("You do not own any accounts.");                   //If the returned List is empty, notify user.
                }
                

                if (returnedTrans.Count != 0 && returnedTrans != null)                          //Check if the returnedTrans List is not empty and not equal to null.
                {
                    recentTransactionLB.Items.Clear();
                    recentTransactionLB.Items.Add("MOST RECENT TRANSACTION");                          //Header 
                    recentTransactionLB.Items.Add("-------------------------------------------------");//This List adding applies the same concept of the previous list where return value amount is certain.
                    recentTransactionLB.Items.Add("TransactionID: " + returnedTrans[0]);               //Add first value of returnedTrans
                    recentTransactionLB.Items.Add("Source Account Number: " + returnedTrans[1]);       //Second
                    recentTransactionLB.Items.Add("Destination Account Number: " + returnedTrans[2]);  //Third
                    recentTransactionLB.Items.Add("Amount Transferred: R" + returnedTrans[3]);         //Fourth

                }
                else                                                                                   //If the returned List is empty, notify user.
                {
                    recentTransactionLB.Items.Add("No transactions associated with this account exist.");
                }

            }



        }

        
    }
}