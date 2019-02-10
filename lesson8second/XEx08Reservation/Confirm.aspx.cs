using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx08Reservation
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYear.Text = DateTime.Today.Year.ToString();
            DisplayReservation();
        }

        private void DisplayReservation()
        {
            Reservation Reservation = (Reservation)Session["Reservation"];

            lblArrivalDate.Text         = Reservation.ArrivalDate.ToShortDateString();
            lblDepartureDate.Text       = Reservation.DepartureDate.ToShortDateString();
            lblFirstName.Text           = Reservation.FirstName;
            lblLastName.Text            = Reservation.LastName;
            lblEmail.Text               = Reservation.Email;
            lblPhone.Text               = Reservation.Phone;
            lblPreferredMethod.Text     = Reservation.PreferredMethod;
            //lblSpecialRequests          = Reservation.SpecialRequests; // can not imagine what is happening
            string lblBedType           = Reservation.BedType;
            //lblDepartureDate           = Reservation.DepartureDate;
            int lblNoOfPeople           = Reservation.NoOfPeople;

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thank you for your request. " + "<br />" + "We will get back to you within 24 hours.";
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
                Response.Redirect("Request.aspx");
        }
    }
}