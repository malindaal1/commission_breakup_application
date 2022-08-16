using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Commision_Breackup.Model
{
    public class Sql_Connection
    {
        public SqlConnection conn_db()
        {
            string cons = "Data Source=10.150.11.251;Initial Catalog=Commission_BreakUp_Application;User ID=sa;Password=Brdx@7000";
            SqlConnection nwcon = new SqlConnection(cons);
            return nwcon;
        }
    }
}