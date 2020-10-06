using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Project_08.Models
{
    public class Orders
    {
        [Key]
        public int OrderID { get; set; }

        public int CoustomerID { get; set; }
        [ForeignKey("CoustomerID")]
        public Customer customer { get; set; }
        public int ProductID { get; set; }
        [ForeignKey("ProductID")]
        public Product product { get; set; }
        public int OrderNumber { get; set; }

        [DataType(DataType.Date)]
        public DateTime OrderDate { get; set; }
        public int TotalAmount { get; set; }
    }
}
