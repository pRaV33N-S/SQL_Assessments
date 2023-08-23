using System;
using System.Data;
using System.Data.SqlClient;

namespace Assessment09
{
    internal class Program
    {
        static SqlConnection con;
        static SqlCommand cmd;
        static SqlTransaction trans;
        static string connection = "Server=;Database=Assignment;Trusted_Connection=True";
        static void Main(string[] args)
        {
            try
            {
                con = new SqlConnection(connection);
                con.Open();
                trans = con.BeginTransaction();
                cmd = new SqlCommand();
                cmd.CommandText = "PlaceOrder";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Transaction = trans;
                Console.WriteLine("Enter Order Id");
                cmd.Parameters.AddWithValue("@orderId", int.Parse(Console.ReadLine()));
                Console.WriteLine("Enter Customer Id");
                cmd.Parameters.AddWithValue("@id", int.Parse(Console.ReadLine()));
                Console.WriteLine("Enter Total");
                cmd.Parameters.AddWithValue("@total", decimal.Parse(Console.ReadLine()));
                cmd.ExecuteNonQuery();
                trans.Commit();
            }
            catch(Exception e)
            {
                Console.WriteLine("Connection Error...");
                trans.Rollback();
            }
            finally
            {
                con.Close();
            }
        }
    }
}
