using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace data.Model
{
    public class User : BaseModel
    {

        public string UserName { get; set; }

        public string Email { get; set; }
        [JsonIgnore]
        public string Password { get; set; }

    }
}
