using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MP.Data.Helper
{
    public sealed class AdoConnection
    {

        private SqlConnection con;
        public AdoConnection()
        {
            DataTable dt = ExecuteStored("spTest");
        }
        private void Connect()
        {
            try
            {
                string conStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                con = new SqlConnection(conStr);
                con.Open();
            }
            catch (SqlException sqlEx)
            {
                throw sqlEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable ExecuteStored(string storedProcedure)
        {
            DataTable dt = new DataTable();
            try
            {
                Connect();
                SqlCommand command = new SqlCommand(storedProcedure, con);
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(command);
                dt = new DataTable();
                da.Fill(dt);
                Dissconnect();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return dt;
        }
        private void Dissconnect()
        {
            try
            {
                if (con != null)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
