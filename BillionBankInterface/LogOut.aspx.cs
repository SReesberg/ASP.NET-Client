/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form handles the Log Out functionality of the application.
 * Date: 04/10/2022
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBankInterface
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["id"] == null || (string)Session["id"] == "0")            //When the page loads, perform a check to see if the Session variable is null or equal to 0.
            {
                Response.Redirect("LogIn.aspx");                                          //Redirect to Log In page if the check succeeds.
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();                                                           //If the user is logged in already, they are able to access the page and click on the Log Out button.
            Response.Redirect("LogIn.aspx");                                             //This terminates the session, and redirects the user to the Log In page for a fresh session.
        }
    }
}