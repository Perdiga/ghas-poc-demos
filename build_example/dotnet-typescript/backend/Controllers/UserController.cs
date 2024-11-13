using System;
using System.Data.SqlClient;
using Microsoft.AspNetCore.Mvc;

namespace my_dotnet_app.Controllers
{
    public class UserController : Controller
    {
        private readonly string connectionString = "YourConnectionStringHere";

        [HttpGet]
        public IActionResult GetUser(string username)
        {
            string query = $"SELECT * FROM Users WHERE Username = '{username}'";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // Process the data
                }
                reader.Close();
            }
            return View();
        }
    }
}