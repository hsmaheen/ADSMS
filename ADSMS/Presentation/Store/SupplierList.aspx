<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="SupplierList.aspx.cs" Inherits="ADSMS.Presentation.Store.SupplierList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="container">
            <div class="page-header">
                <h1 id="tables">Supplier List</h1>
            </div>
            <div class="bs-component">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" HeaderStyle-CssClass="danger" RowStyle-CssClass="info" DataKeyNames="SupplierID" DataSourceID="slist" AllowPaging="True" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="SupplierCode" HeaderText="Code" SortExpression="SupplierCode" />
                        <asp:BoundField DataField="SupplierName" HeaderText="Name" SortExpression="SupplierName" />
                        <asp:BoundField DataField="SupplierContactName" HeaderText="Contact Name" SortExpression="SupplierContactName" />
                        <asp:BoundField DataField="SupplierContactNumber" HeaderText="Contact Number" SortExpression="SupplierContactNumber" />
                        <asp:BoundField DataField="SupplierContactAddress" HeaderText="Contact Address" SortExpression="SupplierContactAddress" />
                        <asp:BoundField DataField="SupplierFax" HeaderText="Fax" SortExpression="SupplierFax" />
                        <asp:BoundField DataField="SupplierGSTRegNumber" HeaderText="GST Registration Number" SortExpression="SupplierGSTRegNumber" />
                        <asp:BoundField DataField="SupplierEmail" HeaderText="Email" SortExpression="SupplierEmail" />
                    </Columns>
                    <HeaderStyle />
                    <RowStyle />
                </asp:GridView>
            </div>
        </div>
    </div>



    <asp:EntityDataSource ID="slist" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="suppliers">
    </asp:EntityDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="aspnet_AnyDataInTables" TypeName="ADSMS.DataAccess.stationeryEntities">
        <SelectParameters>
            <asp:Parameter Name="tablesToCheck" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>
