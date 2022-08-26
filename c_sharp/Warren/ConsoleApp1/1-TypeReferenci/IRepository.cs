﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    internal interface IRepository<T>
    {        
        string Create(T p);

        List<T> Read();

        string Update(T p);
        string Delet(int Id);
        
    }
}