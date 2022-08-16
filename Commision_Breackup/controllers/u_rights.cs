using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace RO_Requsition_System.controllers
{
    public class u_rights
    {
        sql_connection nwconn = new sql_connection();
        SqlConnection conn_db = new SqlConnection();
        public bool ckh_u_rights(string uid,int rid) {
            bool x = false;
            string coms = "chk_u_rights";
            conn_db = nwconn.conn_db();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = coms;
            cmd.Connection = conn_db;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@uid", uid));
            cmd.Parameters.Add(new SqlParameter("@rid", rid));
            conn_db.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                x = true;
            }
            else {
                x = false;
            }
            conn_db.Close();
            return x;
        }
    }
}