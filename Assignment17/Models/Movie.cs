﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Assignment17.Models
{
    [Table("Movies")]
    public class Movie
    {
        [Key]
        public int ID { get; set; }
        public string Title { get;set; }
        public string Director { get; set; }
        public DateTime ReleaseDate { get; set; }
        public string Genre { get; set; }
        public double Rating { get; set; }
    }
}
