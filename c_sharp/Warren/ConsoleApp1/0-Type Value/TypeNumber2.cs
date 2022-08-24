using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class TypeNumber2
    {

        public static void Execute()
        {
            char letra = 'M';
            Console.WriteLine("Char:" + letra);
            char charMin = char.MinValue;
            char charMax = char.MaxValue;

            Console.WriteLine(charMax);
            Console.WriteLine(charMin);

            Console.WriteLine("Letra M:" + (byte)letra);

        }

    }
}
