using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._99_Exercise
{
    class _000Cadastro
    {
        public static void newClase()
        {

            Console.WriteLine("Por favor digite o seu primeiro nome:\n");
            string name = Console.ReadLine();
            Console.Clear();


            Console.WriteLine("Digite seu sobre nome:\n");
            string lastName = Console.ReadLine();
            Console.Clear();


            Console.WriteLine("Digite sua idade");
            byte age = Convert.ToByte(Console.ReadLine());
            Console.Clear();

            Console.WriteLine($"Nome e Sobrenome {name} {lastName} sua idade é {age}");
            Console.WriteLine("\n Adeus " + name);
            
        }
    }
}

