using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._0_Type_Value
{
    class Struct
    {
        public static void Execute()
        {
            int age = 10;
            PhysicalPerson2 p1 = new PhysicalPerson2();
            p1.Name = "Chimbinha";
            
            PersonStruct  p2 = new PersonStruct();
            p2.Name = "Jojo";

            Console.WriteLine(p1.Name);
            Console.WriteLine(p2.Name);
            
            
            PhysicalPerson2 p3 = new PhysicalPerson2();
            p3 = p1;
            PersonStruct  p4 = new PersonStruct();
            p4 = p2;

            Console.WriteLine(p3.Name);
            Console.WriteLine(p4.Name);

            p1.Name = "Chimbinha melhor cara";
            p2.Name = "Jojo melhor pessoa";

            Console.WriteLine();
            Console.WriteLine(p1.Name);
            Console.WriteLine(p2.Name);
            Console.WriteLine(p3.Name);
            Console.WriteLine(p4.Name);
        }
    }

    struct PersonStruct
    {        
        public string Name { get; set; }
        public string LastName { get; set; }
        public byte age { get; set; }
    }

    class PhysicalPerson2
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public byte age{ get; set; }        

        //public string getName()
        //{
        //    return this.name;
        //}

        //public void setName(string name)
        //{
        //    this.name = name;
        //}

    }
}
