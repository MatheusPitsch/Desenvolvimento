using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class TypeValueNunbers
    {
        public void Executa()
        {           

            byte byteMin = byte.MinValue;
            byte byteMax = byte.MaxValue;
            Console.WriteLine("Byte Min:" + byteMin);
            Console.WriteLine("Byte Max:" + byteMax);

            Console.WriteLine();
            sbyte sbyteMin = sbyte.MinValue;
            sbyte sbyteMax = sbyte.MaxValue;
            Console.WriteLine("Sbyte min:" + sbyteMin);
            Console.WriteLine("Sbyte max:" + sbyteMax);

            Console.WriteLine();
            short shortMin = short.MinValue;
            short shortMax = short.MaxValue;
            Console.WriteLine("Short min:" + shortMin);
            Console.WriteLine("Short max:" + shortMax);
            
            Console.WriteLine();
            ushort UshortMin = ushort.MinValue;
            ushort UshortMax = ushort.MaxValue;
            Console.WriteLine("Ushort min:" + UshortMin);
            Console.WriteLine("Ushort max:" + UshortMax);

            


        }
    }
}
