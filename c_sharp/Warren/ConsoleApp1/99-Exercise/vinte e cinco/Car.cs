using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._99_Exercise.vinte_e_cinco
{
    class Car : BaseModel
    {
        public Car(string brand, string model, decimal price)
        {
            Brand = brand;
            Model = model;
            Price = price;
        }

        public string Brand{ get; set; }

        public string Model { get; set; }

        public decimal Price { get; set; }
        

        public decimal DiscountPrice()
        {
            
            return this.Price * 0.9m;
            
            
        }

    }
}
