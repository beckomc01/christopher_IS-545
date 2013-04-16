using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace index
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Namefield_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            result.Text = "User name: " + Namefield.Text;
            result.Text += "<br />Credit card type: " + Card.Text;
            result.Text += "<br />Expiration Date: " + Calendar1.SelectMonthText + "12:00:00 AM";
            result.Text += "<br />will be used for the payment.";

        }
    }
}