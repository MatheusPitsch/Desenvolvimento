﻿using data.Model;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data.Context
{
    public class WarrenContext:DbContext
    {
        public DbSet<Animal> Animal { get; set; }
        public DbSet<Planta> Planta { get; set; }
        public DbSet<User> User { get; set; }

        public DbSet<Product> Product { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql("Host=192.168.0.96; Port=5436; Database=postgres; UserId=postgres; Password=12345");
        }
    }
}
