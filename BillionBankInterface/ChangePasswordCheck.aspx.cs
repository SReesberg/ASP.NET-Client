/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form handles access control to the Set Password page through another session variable in combination with Web Server-side queries.
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
    public partial class ChangePasswordCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
           
        }

        protected void btnSubmitAnswer_Click(object sender, EventArgs e)                            //Clicking the Submit button executes the following code:
        {
           
            WebService1SoapClient ws = new WebService1SoapClient();                                 //Connecting to the Web Service.
            Session["Check"] = ws.CheckPassword(tbAnswer.Text, tbEmail.Text);                       //Creating and setting a new Session variable specifically for the Secret Answer verification.
                                                                                                    //This variable is equal to the returned result of the CheckPassword WebMethod.

            if ((string)Session["Check"] != "MISMATCH" || (string)Session["Check"] == null)         //If the session variable is not returned as "MISMATCH" or has a value of null, allow access to the Password Set page.
            {
                Response.Redirect("ChangePasswordSet.aspx");

            }
            else                                                                                    //If the query returned no matches, the user is notified.
            {
                errorLabel.Text = "There are no matches for your answer.";
            }
        }

        protected void btnRevealQ_Click(object sender, EventArgs e)                                 //Clicking the "Reveal Question" button executes the following code:
        {
            errorLabel.Text = "";                                                                   //Reset the errorLabel in case of previous triggering.
            
            WebService1SoapClient ws = new WebService1SoapClient();                                 //Connect to the Web Service.
       
            if (tbEmail.Text != "")                                                                 //Check if the required textbox is not empty.
            {
                
                List<string> question = ws.GetQuestion(tbEmail.Text);                               //Create a generic List to store the returned result of the getQuestion WebMethod.
                
                if(question.Count != 0 && question != null)                                         //Check if the List contains any values and is not null.
                {
                    
                    tbDisplayQuestion.Text = question[0];                                           //Set the DisplayQuestion Textbox to the string value stored in the List.
                }
                else                                                                                //If the List is empty, notify the user.
                {
                    errorLabel.Text = "No matches for this email address!";
                }
                
            }
            else                                                                                    //If the textbox is empty, prompt the user to enter their details.
            {
               errorLabel.Text = "Please enter your email address first!";
            }
        }
    }
}