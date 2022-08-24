using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class Enumerate2
    {
        public static void Execute()
        {
            Console.WriteLine(DayWeek2.Sunday);
            DayWeek2 dayPresension = (DayWeek2)64;
            Console.WriteLine(dayPresension);
        }

    }
    [Flags]
    public enum DayWeek2
    {
        Sunday = 1,
        Monday = 2,
        Tuesday = 4,
        Wednesday = 8,
        Thursday = 16,
        Friday = 32,
        Saturday = 64
    }
}
