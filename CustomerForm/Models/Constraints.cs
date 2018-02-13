using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication2.Models
{
    class Constraints
    {
        //Function to generate patient ID. It gets the last existing record of patient from the database,
        //and increments that value to generate the new patient id.
        public static string GeneratePatientID()
        {
            //Connection created
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CGICon"].ConnectionString);
            //Define a sql command to find out the maximum value of Patient ID from patients table in the database.
            //We will increment the value and then append the appropriate prefix to generate the new ID.
            SqlCommand cmd = new SqlCommand("select CustomerID from CustomerDetails order by CustomerID desc", con);
            //check if the connection is already open or closed. If it is closed, then open it.
            if (con.State == ConnectionState.Closed)
                con.Open();
            string fullid = "";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string id = dr["CustomerID"].ToString();
                int newid = int.Parse(id.Substring(1, id.Length - 1));
                newid++;
                if (newid < 10)
                    fullid = "C00" + newid;
                else if (newid >= 10 && newid < 100)
                    fullid = "C0" + newid;
                else 
                    fullid = "C" + newid;
                
            }
            else
            {
                fullid = "C001";
            }
            return fullid;
        }
        //phone number validation
        public static bool IsValidPhone(string Phone)
        {
            var r = new Regex(@"^([0]|\+91)?[789]\d{9}$");
            try
            {
                if (string.IsNullOrEmpty(Phone))
                    return false;
                return r.IsMatch(Phone);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //email validation
        public static bool emailIsValid(string email)
        {
            string expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, string.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }
}
