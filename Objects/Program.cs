using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Objects
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine();
            //create new customer
            Customer cust     = new Objects.Customer(11011, "Roxana", "Vasile", "852 Main St.", "Raleigh", "NC", "27603");

            //create the second customer a different way
            Customer nextCust = new Objects.Customer(11011, "Andrei", "Vasile", "852 Fire St.", "Raleigh", "OH", "27603"); ;

            //create the second customer a different way
            Customer thirdCust = new Objects.Customer(11011, "Ion", "Vasile", "852 Alex St.", "Raleigh", "NC", "56231"); ;

            //output customer block
            cust.PrintBlock();
            Console.WriteLine();
            nextCust.PrintBlock();
            Console.WriteLine();
            thirdCust.PrintBlock();
            Console.WriteLine();
            Console.ReadLine();
        }
    }
}
