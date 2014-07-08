<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="CreateItems.aspx.cs" Inherits="ADSMS.Presentation.Store.CreateItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/jquery-2.1.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="page-header">
            <h1 id="tables">Add New Item</h1>
        </div>
        <div class="bs-component">
            <div class="form-group">
        <class="form-horizontal">
            <fieldset>
                <div class="form-group">
                    <label for="itemCatid" class="col-lg-2 control-label">Item Category ID:</label>
                    <div>
                        <asp:DropDownList ID="ddl_Category" runat="server" DataSourceID="categoryEnt" DataTextField="CategoryName" DataValueField="CategoryID" CssClass="col-lg-2">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="categoryEnt" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="categories" EntityTypeFilter="category">
                        </asp:EntityDataSource>
                    </div>
                </div>
                <br />
                <br />
                <div class="form-group">
                    <label for="itemDescription" class="col-lg-2 control-label">Item Description:</label>
                    <div>
                        <asp:TextBox ID="itemdesp" placeholder="ItemDescription" runat="server" CssClass="col-lg-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="itemdesp" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <br />
                <br />
                <div class="form-group">
                    <label for="itemQuantity" class="col-lg-2 control-label">Item Quantity:</label>
                    <div>
                        <asp:TextBox ID="quant" placeholder="Item Quantity" runat="server" CssClass="col-lg-2" MaxLength="3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="quant" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="quant" Display="Dynamic" ErrorMessage="Accepts only numbers!" ForeColor="#CC0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

                    </div>
                </div>
                 <br />
                <br />
                <%--            <script>
                $(document).ready(function () {
                    $("form").submit(function () {
                        alert("Add Successfully!!");
                    });
                });
            </script>--%>

                <div class="form-group">
                    <label for="ItemReOrderLvl" class="col-lg-2 control-label">ReOrder Level:</label>
                    <div>
                        <asp:TextBox ID="ReO" placeholder="ReOrder Level" runat="server" CssClass="col-lg-2" MaxLength="3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ReO" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ReO" ErrorMessage="Accepts only numbers!" ForeColor="#CC0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

                    </div>
                </div>
                 <br />
                <br />
                <div class="form-group">
                    <label for="ItemReOrderQuant" class="col-lg-2 control-label">ReOrder Quantity:</label>
                    <div>
                        <asp:TextBox ID="ReoQ" placeholder="ReOrder Quantity" runat="server" CssClass="col-lg-2" MaxLength="3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ReoQ" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ErrorMessage="Accepts only numbers!" ControlToValidate="ReoQ" ForeColor="#CC0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </div>
                </div>
                 <br />
                <br />
                <div class="form-group">
                    <label for="ItemUOM" class="col-lg-2 control-label">Unit of Measurement (UOM):</label>
                    <div>
                        <asp:TextBox ID="uom" placeholder="UOM" runat="server" CssClass="col-lg-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="uom" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                </div>
                 <br />
                <br />


                <div class="form-group">
                    <label for="BinNO" class="col-lg-2 control-label">Bin Number:</label>
                    <div>
                        <%--            <script>
                $(document).ready(function () {
                    $("form").submit(function () {
                        alert("Add Successfully!!");
                    });
                });
            </script>--%>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="BinNoEnt" DataTextField="BinNumber" DataValueField="BinNumber" >
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="BinNoEnt" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="bins" EntityTypeFilter="bin" Select="it.[BinNumber]">
                        </asp:EntityDataSource>
                    </div>
                </div>
                <div class="form-group">
                   


                 <table cellpadding="0" cellspacing="0" class="nav-justified">
                     <tr>
                         <td colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Supplier 1" ></asp:Label>&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_Supplier1" runat="server" DataSourceID="SupplierNameEnt" DataTextField="SupplierName" DataValueField="SupplierID"></asp:DropDownList>
                    <asp:EntityDataSource ID="SupplierNameEnt" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="suppliers" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                    </asp:EntityDataSource></td>
                         <td><asp:Label ID="Label2" runat="server" Text="Price:" ></asp:Label>
                    <asp:TextBox ID="txtPrice1" runat="server" placeholder="Price" MaxLength="4"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtPrice1" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                         </td>

                     </tr>
                     <tr>
                         <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Supplier 2" ></asp:Label>&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_Supplier2" runat="server" DataSourceID="SupplierNameEnt" DataTextField="SupplierName" DataValueField="SupplierID"></asp:DropDownList>&nbsp;&nbsp;
                    </td>
                         <td><asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
                    <asp:TextBox ID="txtPrice2" runat="server" placeholder="Price" MaxLength="4"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtPrice2" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                     </tr>
                     <tr>
                         <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Supplier 3" ></asp:Label>&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_Supplier3" runat="server" DataSourceID="SupplierNameEnt" DataTextField="SupplierName" DataValueField="SupplierID"></asp:DropDownList>&nbsp;&nbsp;
                    </td>
                         <td><asp:Label ID="Label6" runat="server" Text="Price:" ></asp:Label>
                    <asp:TextBox ID="txtPrice3" runat="server" placeholder="Price" MaxLength="4"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtPrice3" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                     </tr>
                </table>
  </div>


                 <asp:Label ID="lblError" runat="server" Text=" " ForeColor="#CC0000"></asp:Label>


                 <br />
                <br />
                <div class="form-group">
                    <div class="col-lg-offset-2">
          
                        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn-primary" OnClick="submit_Click" />&nbsp;&nbsp;
                        <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn-default" PostBackUrl="~/Presentation/Store/InventoryList.aspx" CausesValidation="False" />&nbsp;&nbsp;
                        <%--            <script>
                $(document).ready(function () {
                    $("form").submit(function () {
                        alert("Add Successfully!!");
                    });
                });
            </script>--%>
                        <%--            <script>
                $(document).ready(function () {
                    $("form").submit(function () {
                        alert("Add Successfully!!");
                    });
                });
            </script>--%>

                    </div>
                </div>
            </div>
    </fieldset>


<%--            <script>
                $(document).ready(function () {
                    $("form").submit(function () {
                        alert("Add Successfully!!");
                    });
                });
            </script>--%>
            </div>
            </div>
</asp:Content>
