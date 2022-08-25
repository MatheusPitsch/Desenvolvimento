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
            Person p = new Person("Matheus", "Pitsch");
            Person pf = new PhysicalPerson("Matheus", "Pitsch", "1");
            Person pj = new PersonLegal("Matheus", "Pitsch", "2");

            PhysicalPerson pf2 = (PhysicalPerson)pf;
            PersonLegal pj2 = (PersonLegal)pj;

            //Console.WriteLine(p.Saudation());
            //Console.WriteLine(pf.Saudation());
            //Console.WriteLine(pj.Saudation());

            BaseRepository<Person> repository = new BaseRepository<Person>();
            repository.Create(p);
            repository.Create(pf2);
            repository.Create(pj2);

            foreach (var item in repository.Read())
            {
                Console.WriteLine(item.Saudation());
            }

        }
        public static void ExecutePersonNormal()
        {
            PhysicalPerson physicalPerson = new PhysicalPerson("Matheus", "Pitsch", "105904309200");
            PhysicalPerson physicalPerson1 = new PhysicalPerson("Laun", "Zin", "56562086213");

            //Console.WriteLine(physicalPerson.Saudation());

            PhysicalPersonRepository crud = new PhysicalPersonRepository();
            crud.Create(physicalPerson1);

            string msg = crud.Create(physicalPerson);
            string msg1 = crud.Delet(physicalPerson.Id);
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

        public static void ExecutePersonLegal()
        {
            PersonLegal physicalPersonLegal = new PersonLegal("Ecoville", "Store", "0000");
            PersonLegal physicalPersonLegal1 = new PersonLegal("Warren", "Invest", "0001");

            PersonLegalRepository crudPersonLegal = new PersonLegalRepository();
            crudPersonLegal.Create(physicalPersonLegal1);

            string sms = crudPersonLegal.Create(physicalPersonLegal);
            string sms1 = crudPersonLegal.Delet(physicalPersonLegal1.Id);
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
