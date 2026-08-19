using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prac3
{
    class Expense
    {
        public int expenseId;
        public string expenseName;
        public string category;
        public string expenseDate;
        public double amount;

        public Expense()
        {
            Console.WriteLine("Expense Object Created");
        }

        public void DisplayExpense()
        {
            Console.WriteLine("\nExpense Details");
            Console.WriteLine("Expense ID      : " + expenseId);
            Console.WriteLine("Expense Name    : " + expenseName);
            Console.WriteLine("Category        : " + category);
            Console.WriteLine("Expense Date    : " + expenseDate);
            Console.WriteLine("Expense Amount  : " + amount);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Expense exp = new Expense();

            try
            {
                Console.Write("Enter Expense ID: ");
                exp.expenseId = int.Parse(Console.ReadLine());

                if (exp.expenseId <= 0)
                {
                    throw new Exception("Expense ID must be greater than 0.");
                }

                Console.Write("Enter Expense Name: ");
                exp.expenseName = Console.ReadLine();

                if (string.IsNullOrWhiteSpace(exp.expenseName))
                {
                    throw new Exception("Expense Name cannot be empty.");
                }

                Console.Write("Enter Category: ");
                exp.category = Console.ReadLine();

                if (string.IsNullOrWhiteSpace(exp.category))
                {
                    throw new Exception("Category cannot be empty.");
                }

                Console.Write("Enter Expense Date (dd/mm/yyyy): ");
                exp.expenseDate = Console.ReadLine();

                if (string.IsNullOrWhiteSpace(exp.expenseDate))
                {
                    throw new Exception("Expense Date cannot be empty.");
                }

                Console.Write("Enter Expense Amount: ");
                exp.amount = double.Parse(Console.ReadLine());

                if (exp.amount <= 0)
                {
                    throw new Exception("Expense Amount must be greater than 0.");
                }

                exp.DisplayExpense();
            }

            catch (FormatException)
            {
                Console.WriteLine("Invalid Input! Please enter numeric values where required.");
            }

            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }

            finally
            {
                Console.WriteLine("\nExpense Tracking Completed.");
            }

            Console.ReadKey();
        }
    }
}
