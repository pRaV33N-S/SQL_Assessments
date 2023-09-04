using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Assignment16.Models;

namespace Assignment16.Data
{
    public class Assignment16Context : DbContext
    {
        public Assignment16Context (DbContextOptions<Assignment16Context> options)
            : base(options)
        {
        }

        public DbSet<Assignment16.Models.TheTask> TheTask { get; set; } = default!;
    }
}
