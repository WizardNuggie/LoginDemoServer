using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

public partial class Grade
{
    [StringLength(100)]
    public string? Email { get; set; }

    [Key]
    public int TestId { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime TestDate { get; set; }

    [StringLength(50)]
    public string SubName { get; set; } = null!;

    [Column("Grade")]
    public int Grade1 { get; set; }

    [ForeignKey("Email")]
    [InverseProperty("Grades")]
    public virtual User? EmailNavigation { get; set; }
}
