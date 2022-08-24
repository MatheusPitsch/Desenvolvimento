using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp1._0_Type_Value;
using ConsoleApp1._99_Exercise;
using ConsoleApp1._1_TypeReferenci;


namespace ConsoleApp1._1_TypeReferenci
{
    class TestPerson
    {

        public static void ExecutePerson()
        {
            PhysicalPerson physicalPerson = new PhysicalPerson("Matheus", "Pitsch", "105904309200");
            PhysicalPerson physicalPerson1 = new PhysicalPerson("Laun", "Zin", "56562086213");

            //Console.WriteLine(physicalPerson.Saudation());

            CrudPerson crud = new CrudPerson();
            crud.Create(physicalPerson1);

            string msg = crud.Create(physicalPerson);
            string msg1 = crud.Delet(physicalPerson);
            Console.WriteLine(msg);
            Console.WriteLine(msg1);

            Console.WriteLine();

            List<PhysicalPerson> person = crud.Read();
            foreach (PhysicalPerson item in person)
            {
                Console.WriteLine(item.Saudation());
            }

            PersonLegal personLegal = new PersonLegal("Lucas", "Doctor", "0001");
            Console.WriteLine(personLegal.Saudation());
        }
        //=====================================================================================================
        //=====================================================================================================
        public static void ExecutePersonLegal()
        {
                PersonLegal physicalPersonLegal = new PersonLegal("Ecoville", "Store", "0000");
                PersonLegal physicalPersonLegal1 = new PersonLegal("Warren", "Invest", "0001");

                CrudPersonLegal crudPersonLegal = new CrudPersonLegal();
                crudPersonLegal.Create(physicalPersonLegal1);

                string sms = crudPersonLegal.Create(physicalPersonLegal);
                string sms1 = crudPersonLegal.Delet(physicalPersonLegal1);
                Console.WriteLine("\n=========================//=========================\n");
                Console.WriteLine(sms);
                Console.WriteLine(sms1);

                Console.WriteLine();

                List<PersonLegal> PersonLegal = crudPersonLegal.Read();
                foreach (PersonLegal item in PersonLegal)
                {
                    Console.WriteLine(item.Saudation());
                }
            }
        
    }
}
