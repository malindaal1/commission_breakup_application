using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Commision_Breackup
{
    public partial class Test : System.Web.UI.Page
    {
        Model.Sql_Connection nwcon = new Model.Sql_Connection();
        SqlConnection conn_db = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn_db = nwcon.conn_db();
            conn_db.Open();
            if (TextBox1.Text.Trim().Length != 0)
            {
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                cmd.CommandText = "Login_Check";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserID", TextBox1.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@Password", TextBox2.Text.Trim()));
                cmd.Connection = conn_db;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["UserID"] = TextBox1.Text.Trim();
                }

                else
                {
                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
            {

                string script = "window.onload = function(){alert('Incorrect user ID or Password');";
                script += "window.location ='Test.aspx";
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            }
            conn_db.Close();
        }
        
            
    }
    
}