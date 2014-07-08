<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="DepartmentList.aspx.cs" Inherits="ADSMS.Presentation.Store.DepartmentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-header">
                <h1 id="tables">Department List</h1>
            </div>

            <div class="bs-component">
                <asp:GridView ID="dgvDisplayDept" runat="server" CssClass="table table-striped table-hover" HeaderStyle-CssClass="3" RowStyle-CssClass="info" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DepID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="DepID" HeaderText="Department ID" SortExpression="DepID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="DepName" HeaderText="Department Name" SortExpression="DepName" />
                        <asp:BoundField DataField="DepContactName" HeaderText="Department Contact Name" SortExpression="DepContactName" />
                        <asp:BoundField DataField="DepContactNumber" HeaderText="Department Contact No." SortExpression="DepContactNumber" />
                        <asp:BoundField DataField="DepFax" HeaderText="Department Fax" SortExpression="DepFax" />
                        <asp:BoundField DataField="DepRepName" HeaderText="Department Representative" SortExpression="DepRepName" />
                        <asp:BoundField DataField="DepHeadName" HeaderText="Department Head" SortExpression="DepHeadName" />
                        <asp:BoundField DataField="CollectionPointName" HeaderText="Collection Point" SortExpression="CollectionPointName" />
                    </Columns>

<HeaderStyle CssClass="3"></HeaderStyle>

<RowStyle CssClass="info"></RowStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stationeryConnectionString %>" SelectCommand="SELECT        department.DepID, department.DepName, department.DepContactName, department.DepContactNumber, department.DepFax, department.DepRepName, 
                         department.DepHeadName, collectionPoint.CollectionPointName
FROM            collectionPoint INNER JOIN
                         department ON collectionPoint.CollectionPointID = department.DepCollectionPointID"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
