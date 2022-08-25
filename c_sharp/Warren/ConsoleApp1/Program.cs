using System;
using ConsoleApp1._0_Type_Value;
using ConsoleApp1._99_Exercise;
using ConsoleApp1._1_TypeReferenci;
using System.Collections.Generic;
using ConsoleApp1._99_Exercise.vinte_e_cinco;

namespace ConsoleApp1
{
    class Program

    {

        static void Main(string[] args)
        {
            {/*
                Console.WriteLine("Hello Word\n");
                while (true)
                {
                    Console.WriteLine("Diga seu nome\n");
                    string name = Console.ReadLine();
                    Console.Clear();
                    if (name == "")
                    {
                        Console.WriteLine("Você não digitou nada no console");
                    }
                    else
                    {
                        Console.WriteLine("Seja Bem Vindo " + name + "\n");
                        Console.WriteLine("Seu nome contem: " + name.Length + "caracteres.");
                    }


                    Console.ReadLine();
                }
                */
            }

            {/*
                BemVindo.Mensage(); //Chamnda de método estático
            Console.WriteLine();
            TypeValueNunbers tipoValor1 = new TypeValueNunbers();
            tipoValor1.Executa();*/
            }

            {
                /*
                TypeNumber2.Execute();
                */


            }

            {/*
                TypeNumber3.Execute();
             */
            }

            {/*
                Enumerate.Execute();
            */
            }

            {/*
                Enumerate2.Execute();
           */
            }

            {/*
                Struct.Execute();
            */
            }

            {
                /*
                TestPerson.ExecutePerson();
                TestPerson.ExecutePersonLegal();
                */
            }

            {/*
                TestPerson.ExecutePerson();
                */
            }

            {
                Car car = new Car("Fusca", "Sei la", 6123422.12m);
                Console.WriteLine(car.DiscountPrice());

                CarRepository carRepository = new CarRepository();

            }

            Console.ReadLine();
        }

    }
}