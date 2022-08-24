using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class Enumerate
    {
        public static void Execute()
        {
            Console.WriteLine(DayWeek.Friday);
            Console.WriteLine((byte)DayWeek.Friday);
            Console.WriteLine();
            
            DayWeek sun = DayWeek.Sunday;
            Console.WriteLine(sun);

            DayWeek mon = (DayWeek)2;
            Console.WriteLine(mon );
        }

    }
    public enum DayWeek
    {
        Sunday,
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
    }
}
