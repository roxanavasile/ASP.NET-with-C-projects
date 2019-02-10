using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx02Quotation
{
    public partial class _default : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                decimal salesPrice          = Convert.ToDecimal(txtSalesPrice.Text);
                decimal discountPercent     = Convert.ToDecimal(txtDiscountPercent.Text) / 100;

                decimal discountAmount      = salesPrice * discountPercent;
                decimal totalPrice          = salesPrice - discountAmount;

                lblDiscountAmount.Text      = discountAmount.ToString("c");
                lblTotalPrice.Text          = totalPrice.ToString("c");
            }
           

        }
    }
}