using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pract1.net
{

    interface IPayroll
    {
        void CalculateSalary();
        void DisplayDetails();
    }


    class Employee
    {
        public string Name;
        public int EmpId;
        public double BasicSalary;

        public void GetDetails()
        {
            Console.Write("Enter Employee ID: ");
            EmpId = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Employee Name: ");
            Name = Console.ReadLine();

            Console.Write("Enter Basic Salary: ");
            BasicSalary = Convert.ToDouble(Console.ReadLine());
        }
    }


    class FullTimeEmployee : Employee, IPayroll
    {
        double hra, da, netSalary;

        public void CalculateSalary()
        {
            hra = BasicSalary * 0.20;
            da = BasicSalary * 0.10;
            netSalary = BasicSalary + hra + da;
        }

        public void DisplayDetails()
        {
            Console.WriteLine("\n----- Full Time Employee -----");
            Console.WriteLine("Employee ID : " + EmpId);
            Console.WriteLine("Employee Name : " + Name);
            Console.WriteLine("Basic Salary : " + BasicSalary);
            Console.WriteLine("HRA (20%) : " + hra);
            Console.WriteLine("DA (10%) : " + da);
            Console.WriteLine("Net Salary : " + netSalary);
        }
    }


    class PartTimeEmployee : Employee, IPayroll
    {
        double netSalary;

        public void CalculateSalary()
        {
            netSalary = BasicSalary;
        }

        public void DisplayDetails()
        {
            Console.WriteLine("\n----- Part Time Employee -----");
            Console.WriteLine("Employee ID : " + EmpId);
            Console.WriteLine("Employee Name : " + Name);
            Console.WriteLine("Salary : " + netSalary);
        }
    }


    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Payroll System");
            Console.WriteLine("1. Full Time Employee");
            Console.WriteLine("2. Part Time Employee");

            Console.Write("Enter Choice: ");
            int choice = Convert.ToInt32(Console.ReadLine());

            if (choice == 1)
            {
                IPayroll emp = new FullTimeEmployee();

                ((FullTimeEmployee)emp).GetDetails();
                emp.CalculateSalary();
                emp.DisplayDetails();
            }
            else if (choice == 2)
            {
                IPayroll emp = new PartTimeEmployee();

                ((PartTimeEmployee)emp).GetDetails();
                emp.CalculateSalary();
                emp.DisplayDetails();
            }
            else
            {
                Console.WriteLine("Invalid Choice!");
            }

            Console.ReadKey();
        }
    }
}