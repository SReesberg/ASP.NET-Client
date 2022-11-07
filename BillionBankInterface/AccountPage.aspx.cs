/*
 * Programmer: Stefan Reesberg
 * Purpose: This Web Form simply houses a menu control that enables the user to navigate to each page in the menu.
 * Date: 04/10/2022
 * 
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillionBankInterface
{
    public partial class AccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["id"] == null || (string)Session["id"] == "0")                           //Checks if the session variable is null or equal to 0.
            {
                Response.Redirect("LogIn.aspx");                                                         //If so, redirect the user to the Log In page.
            }

        }
    }
}