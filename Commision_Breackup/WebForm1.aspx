<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" EnableEventValidation="false" Inherits="Commision_Breackup.WebForm1" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="container " style="margin-top: 13px;">
            <div class="row col-md-12">

                <form class="form-inline">
                    <label class="sr-only" for="inlineFormInputName2">Style</label>
                    <asp:TextBox name="StyleNo" Style="width: 25%; margin-left: 12%; height: 45px;" class="form-control mb-2 mr-sm-2 input" ID="inlineFormInputName2" placeholder="Style" runat="server"></asp:TextBox>

                    <asp:TextBox name="ColorId" Style="width: 25%; margin-left: 7px; height: 45px;" class="form-control" ID="inlineFormInputGroupUsername2" placeholder="Color" runat="server"></asp:TextBox>

                    <asp:Button OnClick="submit_Click" Style="width: 25%; margin-left: 7px; background-color: #0D6EFD; color: aliceblue; border-radius: 25px;" class="btn btn-primary mb-2" ID="submit" Text="Submit" runat="server" />
                </form>
            </div>

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-2">
                    <div class="description">
                        <h2></h2>
                    </div>

                    <div class="fresh-table toolbar-color-blue">
                        <!--
          Available colors for the full background: full-color-blue, full-color-azure, full-color-green, full-color-red, full-color-orange
          Available colors only for the toolbar: toolbar-color-blue, toolbar-color-azure, toolbar-color-green, toolbar-color-red, toolbar-color-orange
        -->


                        <table id="fresh-table" class="table">
                            <thead>
                                <th data-field="co">CO</th>
                                <th data-field="style" data-sortable="true">Style</th>
                                <th data-field="garmentcolor" data-sortable="true">Garment_Color</th>
                                <th data-field="season" data-sortable="true">Season</th>
                                <th data-field="BuyerDivisionId" data-sortable="true">BuyerDivision</th>
                                <th data-field="cutomerstyle">Customer_Style</th>
                                <th data-field="zftr">Z_ftr</th>
                                <th data-field="vpo">VPO</th>
                                <th data-field="cpo">CPO</th>
                                <th data-field="requesteddeliverydate">Requested_Delivery_Date</th>
                                <th data-field="sizeid">Size_id</th>
                                <th data-field="orderqty">Order_Qty</th>
                                <th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">Actions</th>
                            </thead>
                            <tbody>
                                <%
                                                string a;
                                                string b;

                                                if (string.IsNullOrEmpty(Request.QueryString["Style"]))
                                        {

                                            a = "";
                                            b = "";
                                        }
                                        else
                                        {
                                            a = Request.QueryString["Style"].ToString();
                                             b = Request.QueryString["Color"].ToString();
                                    }

                                    string coms = "stylewise_colorwise_detail";
                                    SqlConnection conn_db = new SqlConnection();
                                    conn_db = nwcon();
                                    SqlCommand cmd = new SqlCommand();
                                    cmd.CommandText = coms;
                                    cmd.CommandType = CommandType.StoredProcedure;
                                    cmd.Connection = conn_db;
                                    conn_db.Open();
                                    cmd.Parameters.Add(new SqlParameter("@StyleNo", a));
                                    cmd.Parameters.Add(new SqlParameter("@ColorId", b));
                                    SqlDataReader dr = cmd.ExecuteReader();
                                    while (dr.Read())
                                    {
                                %>
                                <tr>
                                    <td><%Response.Write(dr[0].ToString());%></td>
                                    <td><%Response.Write(dr[1].ToString());%></td>
                                    <td><%Response.Write(dr[2].ToString());%></td>
                                    <td><%Response.Write(dr[3].ToString());%></td>
                                    <td><%Response.Write(dr[4].ToString());%></td>
                                    <td><%Response.Write(dr[5].ToString());%></td>
                                    <td><%Response.Write(dr[6].ToString());%></td>
                                    <td><%Response.Write(dr[7].ToString());%></td>
                                    <td><%Response.Write(dr[8].ToString());%></td>
                                    <td><%Response.Write(dr[9].ToString());%></td>
                                    <td><%Response.Write(dr[10].ToString());%></td>
                                    <td><%Response.Write(dr[11].ToString());%></td>
                                    <% %>
                                </tr>
                                <%}
                                    conn_db.Close(); %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <h1></h1>
            </div>
        </div>
    </div>
</asp:Content>
