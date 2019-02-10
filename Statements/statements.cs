using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Statements
{
    class statements
    {
        static void Main(string[] args)
        {
            int a;
            int b = 2,
                c = 3,
                d = 5;
            a = 1;
            const float pi = 3.1415927f;
            const double g = 9.80665;
            const int r = 25;


            string s = "Roxana";
            if (s.Length == 0)
            {
                Console.WriteLine("No Arguments");
            }
            else
            {
                Console.WriteLine("One or more arguments. String has length of " + s.Length);
            }

            Console.WriteLine();

            string[] t =
            {
                "one", "two", "three",
                "four", "five", "six"
            };
            int n = t.Length;
            switch (n)
            {
                case 0:
                    Console.WriteLine("No Arguments");
                    break;

                case 1:
                    Console.WriteLine("One argyment");
                    break;

                case 2:
                    Console.WriteLine("Two argyments");
                    break;

                case 3:
                    Console.WriteLine("Four argyments");
                    break;

                case 4:
                    Console.WriteLine("Three argyments");
                    break;

                default:
                    Console.WriteLine($"{n} arguments");
                    break;
            }
            Console.WriteLine();

            int i = 0;
            while (i < t.Length)
            {
                Console.WriteLine($"{i}" + " : " + t[i]);
                i++;
            }
            Console.WriteLine();




// Do ... while loop


                string u = "";
                List<string> termsList = new List<string>();
                termsList.Add(u);
                int l = termsList.IndexOf(u);

                do
                {
                    l++;
                    Console.Write("Enter a string:");
                    u = Console.ReadLine();
                    Console.Write(l + " : " + u + Environment.NewLine);

                } while (!string.IsNullOrEmpty(u));
                Console.WriteLine();

            // nested for loop

            int e, p;
            for (e =0; e < 10; e++ )
            {
                for (p = 0; p < 10-e; p++)
                {
                    Console.Write("r");
                }
                Console.Write("\n");
            }
            Console.WriteLine();

            int w = 0;
            foreach (string v in t)
            {
  
                    w++;          
                    Console.WriteLine(v + "(" + w + ")");
             

            }
            Console.WriteLine();


            



            Console.WriteLine();
                Console.Read();
            }
        }
    }

