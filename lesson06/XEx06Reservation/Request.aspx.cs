using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
    public partial class Request : System.Web.UI.Page
    {
        private string currentDate = DateTime.Today.ToShortDateString();
        private string currentYear = DateTime.Today.Year.ToString();


        protected void Page_Load(object sender, EventArgs e)
        {
            txtArrivalDate.Text = DateTime.Today.ToString("dd-MM-yyyy");
            lblYear.Text = currentYear;
            DropDownList1.Items.Add("1");
            DropDownList1.Items.Add("2");
            DropDownList1.Items.Add("3");
            DropDownList1.Items.Add("4");

            DropDownList2.Items.Add("Telephone");
            DropDownList2.Items.Add("Email");

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thank you for your request." + "<br/>" + "We will get back to you within 24 hours.";


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            txtArrivalDate.Text = "";
            txtDepartureDate.Text = "";
            txtEmailAddress.Text = "";
            txtFirstName.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhoneNumber.Text = "";
            lblMessage.Text = "";
            RadioButtonList1.ClearSelection();
            // dropDown.SelectedIndex = 1;
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();

            DropDownList1.Items.Add("1");
            DropDownList1.Items.Add("2");
            DropDownList1.Items.Add("3");
            DropDownList1.Items.Add("4");

            DropDownList2.Items.Add("Telephone");
            DropDownList2.Items.Add("Email");


        }
    }

}