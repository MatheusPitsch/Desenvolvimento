using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class TypeNumber3
    {
        public static void Execute()
        {
            { 
            float floatMin = float.MinValue;
            float floatMax = float.MaxValue;
            Console.WriteLine("Float Min: " + floatMin);
            Console.WriteLine("Float Max: " + floatMax);

            Console.WriteLine();

            double doubleMin = double.MinValue;
            double doubleMax = double.MaxValue;
            Console.WriteLine("Double Min: " + doubleMin);
            Console.WriteLine("Double Max: " + doubleMax);

            Console.WriteLine();

            decimal decimalMin = decimal.MinValue;
            decimal decimalMax = decimal.MaxValue;
            Console.WriteLine("Decimal Min: " + decimalMin);
            Console.WriteLine("Decimal Max: " + decimalMax);
        }

            {//Double
                Console.WriteLine();
                Console.WriteLine("Double");
                double n1 = 10.10;
                double n2 = 20.20;
                double result = 30.30;

                Console.WriteLine((n1 + n2) + "  -  " + result);               
                Console.WriteLine((n1 + n2) == result);
                Console.WriteLine();

            }
            
            {//Decimal
                Console.WriteLine("Decimal");
                Decimal d1 = 10.1m;
                Decimal d2 = 20.2m;
                Decimal result = 30.3m;

                Console.WriteLine((d1 + d2) + "  -  " + result);                
                Console.WriteLine((d1 + d2) == result);
                Console.WriteLine();
            }
        }
    }
}



