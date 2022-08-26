using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data.Model
{
    public class Animal : BaseModel
    {
        public string Especie { get; set; }
        public string Nome { get; set; }

        public float Peso { get; set; }

    }
}
