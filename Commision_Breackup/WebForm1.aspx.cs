using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Commision_Breackup
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Model.Sql_Connection nwconn = new Model.Sql_Connection();
        SqlConnection conn_db = new SqlConnection();


        protected void Page_Load(object sender, EventArgs e)
        {
           


        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    conn_db = nwconn.conn_db();
        //    conn_db.Open();
        //    if (txt_style.Text.Trim().Length != 0)
        //    {
        //        SqlCommand cmd = new SqlCommand();
        //        SqlDataReader dr;
        //        cmd.CommandText = "login_check";
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add(new SqlParameter("@uid", txt_uid.Text.Trim()));
        //        cmd.Parameters.Add(new SqlParameter("@password", txt_pw.Text.Trim()));
        //        cmd.Connection = conn_db;
        //        dr = cmd.ExecuteReader();
        //        if (dr.Read())
        //        {
        //            Session["UID"] = txt_uid.Text.Trim();

        //            if (Request.QueryString["action"] != null && Request.QueryString["Requsition_id"] != null)
        //            {
        //                if (Request.QueryString["action"].ToString() == "approve")
        //                {
        //                    Response.Redirect("frm_Ro_approve.aspx?Requsition_id=" + Request.QueryString["Requsition_id"].ToString() + "");
        //                }
        //                else if (Request.QueryString["action"].ToString() == "approved_ro")
        //                {
        //                    Response.Redirect("frm_approved_Ro_requisitions.aspx?Requsition_id=" + Request.QueryString["Requsition_id"].ToString() + "");
        //                }
        //                else
        //                {
        //                    Response.Redirect("frm_dash.aspx");
        //                }
        //            }

        //            else
        //            {
        //                Response.Redirect("frm_dash.aspx");
        //            }
        //        }
        //        else
        //        {

        //            string script = "window.onload = function(){alert('Incorrect user ID or Password');";
        //            script += "window.location ='frm_Login.aspx";
        //            script += "'; }";
        //            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        //        }
        //    }
        //    conn_db.Close();

        //}
        public SqlConnection nwcon()
        {

            conn_db = nwconn.conn_db();
            return conn_db;
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
                Response.Redirect("WebForm1.aspx?style=" + inlineFormInputName2.Text.ToString()+"&Color="+inlineFormInputGroupUsername2.Text.ToString());



        }
    }
}