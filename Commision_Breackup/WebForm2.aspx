﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Commision_Breackup.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
          <div class="toolbar">
            <button id="alertBtn" class="btn btn-default">Alert</button>
          </div>

          <table id="fresh-table" class="table">
            <thead>
              <th data-field="id">ID</th>
              <th data-field="name" data-sortable="true">Name</th>
              <th data-field="salary" data-sortable="true">Salary</th>
              <th data-field="country" data-sortable="true">Country</th>
              <th data-field="city">City</th>
              <th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">Actions</th>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Dakota Rice</td>
                <td>$36,738</td>
                <td>Niger</td>
                <td>Oud-Turnhout</td>
                <td></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Minerva Hooper</td>
                <td>$23,789</td>
                <td>Curaçao</td>
                <td>Sinaai-Waas</td>
                <td></td>
              </tr>
              <tr>
                <td>3</td>
                <td>Sage Rodriguez</td>
                <td>$56,142</td>
                <td>Netherlands</td>
                <td>Baileux</td>
                <td></td>
              </tr>
              <tr>
                <td>4</td>
                <td>Philip Chaney</td>
                <td>$38,735</td>
                <td>Korea, South</td>
                <td>Overland Park</td>
                <td></td>
              </tr>
              <tr>
                <td>5</td>
                <td>Doris Greene</td>
                <td>$63,542</td>
                <td>Malawi</td>
                <td>Feldkirchen in Kärnten</td>
                <td></td>
              </tr>
              <tr>
                <td>6</td>
                <td>Mason Porter</td>
                <td>$78,615</td>
                <td>Chile</td>
                <td>Gloucester</td>
                <td></td>
              </tr>
              <tr>
                <td>7</td>
                <td>Alden Chen</td>
                <td>$63,929</td>
                <td>Finland</td>
                <td>Gary</td>
                <td></td>
              </tr>
              <tr>
                <td>8</td>
                <td>Colton Hodges</td>
                <td>$93,961</td>
                <td>Nicaragua</td>
                <td>Delft</td>
                <td></td>
              </tr>
              <tr>
                <td>9</td>
                <td>Illana Nelson</td>
                <td>$56,142</td>
                <td>Heard Island</td>
                <td>Montone</td>
                <td></td>
              </tr>
              <tr>
                <td>10</td>
                <td>Nicole Lane</td>
                <td>$93,148</td>
                <td>Cayman Islands</td>
                <td>Cottbus</td>
                <td></td>
              </tr>
              <tr>
                <td>11</td>
                <td>Chaim Saunders</td>
                <td>$5,502</td>
                <td>Romania</td>
                <td>New Quay</td>
                <td></td>
              </tr>
              <tr>
                <td>12</td>
                <td>Josiah Simon</td>
                <td>$50,265</td>
                <td>Christmas Island</td>
                <td>Sint-Jans-Molenbeek</td>
                <td></td>
              </tr>
              <tr>
                <td>13</td>
                <td>Ila Poole</td>
                <td>$67,413</td>
                <td>Montenegro</td>
                <td>Pontevedra</td>
                <td></td>
              </tr>
              <tr>
                <td>14</td>
                <td>Shana Mejia</td>
                <td>$58,566</td>
                <td>Afghanistan</td>
                <td>Ballarat</td>
                <td></td>
              </tr>
              <tr>
                <td>15</td>
                <td>Lana Ryan</td>
                <td>$64,151</td>
                <td>Martinique</td>
                <td>Portobuffolè</td>
                <td></td>
              </tr>
              <tr>
                <td>16</td>
                <td>Daquan Bender</td>
                <td>$91,906</td>
                <td>Sao Tome and Principe</td>
                <td>Walhain-Saint-Paul</td>
                <td></td>
              </tr>
              <tr>
                <td>17</td>
                <td>Connor Wagner</td>
                <td>$86,537</td>
                <td>Germany</td>
                <td>Solihull</td>
                <td></td>
              </tr>
              <tr>
                <td>18</td>
                <td>Boris Horton</td>
                <td>$35,094</td>
                <td>Laos</td>
                <td>Saint-Mard</td>
                <td></td>
              </tr>
              <tr>
                <td>19</td>
                <td>Winifred Ryan</td>
                <td>$64,436</td>
                <td>Ireland</td>
                <td>Ronciglione</td>
                <td></td>
              </tr>
              <tr>
                <td>20</td>
                <td>Tanisha Hayes</td>
                <td>$43,670</td>
                <td>Argentina</td>
                <td>Lint</td>
                <td></td>
              </tr>
              <tr>
                <td>21</td>
                <td>Knox Morris</td>
                <td>$58,474</td>
                <td>Norway</td>
                <td>Melle</td>
                <td></td>
              </tr>
              <tr>
                <td>22</td>
                <td>Idola Stephenson</td>
                <td>$25,236</td>
                <td>Saint Barthélemy</td>
                <td>Joncret</td>
                <td></td>
              </tr>
              <tr>
                <td>23</td>
                <td>Abra Keller</td>
                <td>$28,272</td>
                <td>Switzerland</td>
                <td>Thame</td>
                <td></td>
              </tr>
              <tr>
                <td>24</td>
                <td>Teagan Mcgowan</td>
                <td>$51,059</td>
                <td>Sudan</td>
                <td>Stalowa Wola</td>
                <td></td>
              </tr>
              <tr>
                <td>25</td>
                <td>Leandra Kirby</td>
                <td>$89,270</td>
                <td>Western Sahara</td>
                <td>Oristano</td>
                <td></td>
              </tr> 
            </tbody>
          </table>
        </div>
      </div>
        <h1></h1>
    </div>
  </div>
   
</asp:Content>
