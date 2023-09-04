using System.ComponentModel.DataAnnotations;

namespace Assignment16.Models
{
    public class TheTask
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        public DateTime DueDate { get; set; }
    }
}
