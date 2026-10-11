
using System.ComponentModel.DataAnnotations;

namespace Practical_7.Models
{
    public class StudentFeedback
    {
        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Enter a valid email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Course is required")]
        public string Course { get; set; }

        [Required(ErrorMessage = "Feedback is required")]
        public string Comments { get; set; }
    }
}
