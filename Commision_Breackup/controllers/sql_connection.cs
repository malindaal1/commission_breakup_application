using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RO_Requsition_System.controllers
{
    public class sql_connection
    {
        public SqlConnection conn_db() 
        {
            string cons = "Data Source=BCI-CTSQL-01;Initial Catalog=RO_Live;User ID=sa;Password=BliPass@SQL;Max Pool Size=500";
            SqlConnection nwcon = new SqlConnection(cons);
            return nwcon;
        }

        public SqlConnection conn_db_prom()
        {
            string cons = "Data Source=10.227.60.8;Initial Catalog=ProMIS_SX;User ID=promis_report;Password=welcome@123";
            SqlConnection nwcon = new SqlConnection(cons);
            return nwcon;
        }

    }
}