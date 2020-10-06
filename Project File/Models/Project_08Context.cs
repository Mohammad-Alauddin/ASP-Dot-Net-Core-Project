using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Project_08.Models;

namespace Project_08.Models
{
 
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, ApplicationRole, string, IdentityUserClaim<string>, ApplicationUserRole, IdentityUserLogin<string>, IdentityRoleClaim<string>, IdentityUserToken<string>>
    {
        

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<ApplicationUserRole>(userRole =>
            {
                userRole.HasKey(ur => new { ur.UserId, ur.RoleId });

                userRole.HasOne(ur => ur.Role)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.RoleId)
                    .IsRequired();

                userRole.HasOne(ur => ur.User)
                    .WithMany(r => r.UserRoles)
                    .HasForeignKey(ur => ur.UserId)
                    .IsRequired();
            });
        }


        public DbSet<Project_08.Models.StudentModel> StudentModel { get; set; }


        public DbSet<Project_08.Models.MenuHelperModel> MenuHelperModel { get; set; }


        public DbSet<Project_08.Models.MenuModel> MenuModel { get; set; }


        public DbSet<Project_08.Models.MenuModelManage> MenuModelManage { get; set; }


        public DbSet<Project_08.Models.ApplicationRole> ApplicationRole { get; set; }


        public DbSet<Project_08.Models.ApplicationUserRole> ApplicationUserRole { get; set; }


        public DbSet<Project_08.Models.Customer> Customer { get; set; }


        public DbSet<Project_08.Models.Category> Category { get; set; }


        public DbSet<Project_08.Models.Product> Product { get; set; }


        public DbSet<Project_08.Models.Orders> Orders { get; set; }
    }

    public class SelectedInfoModel
    {
        public IEnumerable<Customer> Customer { get; set; }

        public IEnumerable<Orders> Orders { get; set; }
        public IEnumerable<Product> Product { get; set; }
    }



}
