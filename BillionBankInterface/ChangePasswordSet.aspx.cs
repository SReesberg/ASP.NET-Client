/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form allows the user to reset their password after the previous verification checks have been succesfully completed.
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
    public partial class ChangePasswordSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if ((string)Session["Check"] == "MISMATCH" || (string)Session["Check"]==null)                    //Upon loading the page, check if the session variable is the failed value or null.
            {
                Response.Redirect("ChangePasswordCheck.aspx");                                              //If so, boot the user back to the ChangePasswordCheck page.
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)                                                                               //Upon clicking on the Confirm button, the Page is checked for any failed validators.
            {
                WebService1SoapClient ws = new WebService1SoapClient();                                     //A connection to the Web Service is established.
                
                ws.SetPassword((string)Session["Check"], tbNewPass.Text);                                      //The WebMethod SetPassword is invoked, the session variable is passed along with the new password specified by the user.

                //Notify user of success with a message encouraging them to navigate to the Log In page.
                Response.Write("<script>alert('You have successfully changed your password. Please navigate to the Log In page to make use of it.');</script>");
                
                tbNewPass.Text = "";                                                                        //Clears the textbox of any entries.                                                 
            }
            
            

            


        }
    }
}