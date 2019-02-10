using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coding0504
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            decimal salesPrice = (decimal)HttpContext.Current.Session["salesPrice"];
            lblSalesPrice.Text = salesPrice.ToString();

            decimal discountAmount = (decimal)HttpContext.Current.Session["discountAmount"];
            lblDiscountAmount.Text = discountAmount.ToString();

            decimal totalPrice = (decimal)HttpContext.Current.Session["totalPrice"];
            lblTotalPrice.Text = totalPrice.ToString();

            

        }

        protected void btnSendQuote_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {


                lblQuotation.Text = "Quotation sent to " + txtName.Text + " at " + txtEmail.Text + ".";
                Session.Remove("salesPrice");
                Session.Remove("discountAmount");
                Session.Remove("totalPrice");

            }
        }
           
    }
}