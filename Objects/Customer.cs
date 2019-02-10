using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Objects
{
    class Customer
    {
        // Properties
        public int    custID  { get; set; }
        public string fName   { get; set; }
        public string lName   { get; set; }
        public string address { get; set; }
        public string city    { get; set; }
        public string state   { get; set; }
        public string zip     { get; set; }

        // Constructors
        public Customer()
        {
            custID    = 0;   // 0 should not be used for valid customer
            fName     = lName = address = city = state = zip = "";
        }

        public Customer(int id, string fn, string ln, string addr, string cy, string st, string zp)
        {
            custID    = id;
            fName     = fn;
            lName     = ln;
            address   = addr;
            city      = cy;
            state     = st;
            zip       = zp;

        }

        //Methods 
        public void PrintBlock()
        {
            Console.WriteLine("Customer ID: " + custID);
            Console.WriteLine("First Name:  " + fName);
            Console.WriteLine("Last Name:   " + lName );
            Console.WriteLine("Address:     " + address );
            Console.WriteLine("City, State, zip: " + city  + ", " + state + ", " + zip + " ");
        }


    }
}
