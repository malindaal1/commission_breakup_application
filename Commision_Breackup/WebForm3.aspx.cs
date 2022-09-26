using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Commision_Breackup
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filep = Server.MapPath("~/Files/test1.xlsx");
            Loaddata_from_excel_togridview(filep, ".xlsx", "yes");

        }
        public void Loaddata_from_excel_togridview(string fpath, string extention, string hdr )
        {
            string con = ConfigurationManager.ConnectionStrings["excelcon"].ConnectionString;
            con = string.Format(con, fpath, hdr);
            OleDbConnection excelcon = new OleDbConnection(con);
            excelcon.Open();
            DataTable exceldta = excelcon.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string excelsheetname = exceldta.Rows[0]["TABLE_NAME"].ToString();
            OleDbCommand selectcommand = new OleDbCommand("select * from ["+excelsheetname+"]",excelcon);
            OleDbDataAdapter da = new OleDbDataAdapter(selectcommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            excelcon.Close();

            //GridView1.DataSource= dt;
            //GridView1.DataBind();

        }
    }
}