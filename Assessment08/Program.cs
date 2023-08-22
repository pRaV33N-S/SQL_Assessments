using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assessment08
{
    internal class Program
    {
        static AssignmentEntities1 ae = new AssignmentEntities1();
        static Employee emp = new Employee();
        static Product pro = new Product();
        static Order ord = new Order();
        public static void ViewAll(int obj)
        {
            switch (obj)
            {
                case 1:
                    {
                        Console.WriteLine("EmployeeId   FirstName\tLastName\tDateOfBirth\tSalary");
                        foreach (Employee e in ae.Employees)
                        {
                            Console.WriteLine(e.EmployeeId + "\t\t" + e.FirstName + "   \t" + e.LastName + "\t" + e.BirthDate + "\t" + e.Salary);
                        }
                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("ProductId   ProductName\t\tDescription\t\t\tPrice\tReleaseDate");
                        foreach(Product p in ae.Products)
                        {
                            Console.WriteLine($"{p.ProductId}\t\t{p.ProductName}\t{p.Description}\t{p.Price}\t{p.ReleaseDate}");
                        }
                        break;
                    }
                case 3:
                    {
                        Console.WriteLine("OrderId   OrderDate\t Quantity  Discount  IsShipped");
                        foreach(Order o in ae.Orders)
                        {
                            Console.WriteLine($"{o.OrderId}\t{o.OrderDate}\t{o.Quantity}   {o.Discount}  {o.IsShipped}");
                        }
                        break;
                    }
            }            
        }
        public static void AddRow(int obj)
        {
            switch (obj)
            {
                case 1:
                    {
                        Console.WriteLine("Enter New Employee Id");
                        emp.EmployeeId = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New First Name");
                        emp.FirstName = Console.ReadLine();
                        Console.WriteLine("Enter New Last Name");
                        emp.LastName = Console.ReadLine();
                        Console.WriteLine("Enter New Birth Date");
                        emp.BirthDate = DateTime.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Salary");
                        emp.Salary = decimal.Parse(Console.ReadLine());
                        ae.Employees.Add(emp);
                        ae.SaveChanges();
                        Console.WriteLine("1 Row Inserted");
                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("Enter New Product Id");
                        pro.ProductId = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Product Name");
                        pro.ProductName = Console.ReadLine();
                        Console.WriteLine("Enter New Description");
                        pro.Description = Console.ReadLine();
                        Console.WriteLine("Enter New Price");
                        pro.Price = (decimal?)SqlMoney.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Release Date");
                        pro.ReleaseDate = DateTime.Parse(Console.ReadLine());
                        ae.Products.Add(pro);
                        ae.SaveChanges();
                        Console.WriteLine("1 Row Inserted");
                        break;
                    }
                case 3:
                    {
                        Console.WriteLine("Enter New Order Id");
                        ord.OrderId = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Order date");
                        ord.OrderDate = DateTime.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Quantity");
                        ord.Quantity = short.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New Discount");
                        ord.Discount = float.Parse(Console.ReadLine());
                        Console.WriteLine("Enter New IsShipped");
                        ord.IsShipped = bool.Parse(Console.ReadLine());
                        ae.Orders.Add(ord);
                        ae.SaveChanges();
                        Console.WriteLine("1 Row Inserted");
                        break;
                    }
            }
        }
        public static void UpdateRow(int obj)
        {
            switch (obj)
            {
                case 1:
                    {
                        Console.WriteLine("Enter Employee Id to Update the Salary");
                        int num = int.Parse(Console.ReadLine());
                        emp = ae.Employees.SingleOrDefault(e => e.EmployeeId == num);
                        if (emp == null)
                        {
                            Console.WriteLine("No Such Id to Update");
                        }
                        else
                        {
                            Console.WriteLine("Enter New Salary");
                            emp.Salary = decimal.Parse(Console.ReadLine());
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Updates");
                        }
                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("Enter Product ID to Update the Price");
                        int num = int.Parse(Console.ReadLine());
                        pro = ae.Products.SingleOrDefault(p => p.ProductId == num);
                        if (pro == null)
                        {
                            Console.WriteLine("No Such Id to Update");
                        }
                        else
                        {
                            Console.WriteLine("Enter New Price");
                            pro.Price = (decimal?)SqlMoney.Parse(Console.ReadLine());
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Updates");
                        }
                        break;
                    }
                case 3:
                    {
                        Console.WriteLine("Enter OrderId to Update Quantity");
                        int num = int.Parse(Console.ReadLine());
                        ord = ae.Orders.SingleOrDefault(o => o.OrderId == num);
                        if (ord == null)
                        {
                            Console.WriteLine("No Such Id to Update");
                        }
                        else
                        {
                            Console.WriteLine("Enter New Quantity");
                            ord.Quantity = short.Parse(Console.ReadLine());
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Updates");
                        }
                        break;
                    }
            }
        }
        public static void DeleteRow(int obj)
        {
            switch (obj)
            {
                case 1:
                    {
                        Console.WriteLine("Enter Employee Id to Delete");
                        int num = int.Parse(Console.ReadLine());
                        emp = ae.Employees.SingleOrDefault(e => e.EmployeeId == num);
                        if (emp == null)
                        {
                            Console.WriteLine("No Such Id to Delete");
                        }
                        else
                        {
                            ae.Employees.Remove(emp);
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Deleted");
                        }
                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("Enter Order Id to Delete");
                        int num = int.Parse(Console.ReadLine());
                        pro = ae.Products.SingleOrDefault(p => p.ProductId == num);
                        if (pro == null)
                        {
                            Console.WriteLine("No Such Id to Delete");
                        }
                        else
                        {
                            ae.Products.Remove(pro);
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Deleted");
                        }
                        break;
                    }
                case 3:
                    {
                        Console.WriteLine("Enter Order Id to Delete");
                        int num = int.Parse(Console.ReadLine());
                        ord = ae.Orders.SingleOrDefault(o => o.OrderId == num);
                        if (ord == null)
                        {
                            Console.WriteLine("No Such Id to Delete");
                        }
                        else
                        {
                            ae.Orders.Remove(ord);
                            ae.SaveChanges();
                            Console.WriteLine("1 Row Deleted");
                        }
                        break;
                    }
            }
        }
        static void Main(string[] args)
        {
            try
            {
                repeat:
                Console.WriteLine("Avaiable Tables...\n1. Employee\n2. Product\n3. Order");
                Console.WriteLine("Enter Which Table to Select");
                int obj = int.Parse(Console.ReadLine());
                Console.WriteLine("Available Operations...\n1. View All Data\n2. Add New Row\n3. Update Salary\n4. Delete Row\n");
                Console.WriteLine("Enter Which Operation to Perform");
                switch (int.Parse(Console.ReadLine()))
                {
                    case 1:
                        {
                            ViewAll(obj);
                            break;
                        }
                    case 2:
                        {
                            AddRow(obj);
                            break;
                        }
                    case 3:
                        {
                            UpdateRow(obj);
                            break;
                        }
                    case 4:
                        {
                            DeleteRow(obj);
                            break;
                        }
                    default:
                        {
                            Console.WriteLine("Entered Wrong Option....Choose the Right Operation\n\n");
                            goto repeat;
                        }
                }
                Console.WriteLine("Would You Like to COntinue?\nIf 'Yes' Press 1");
                int i = int.Parse(Console.ReadLine());
                if (i == 1)
                {
                    Console.Clear();
                    goto repeat;
                }
                else
                {
                    Console.WriteLine("\n\nTaTa!!!!!");
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}
