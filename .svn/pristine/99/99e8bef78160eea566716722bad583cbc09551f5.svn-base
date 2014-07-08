<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/Department.Master" AutoEventWireup="true" CodeBehind="DisbursementList_Rep.aspx.cs" Inherits="ADSMS.Presentation.Department.ReceiveDeptStationeryOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
                <div class="page-header">
                    <h1 id="tables">Disbursement List for Store Representative</h1>
                    </div>
                 <div class="bs-component">
              
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                         <Columns>
                             <asp:BoundField DataField="ItemDescription" HeaderText="Item Description" SortExpression="ItemDescription" />
                             <asp:BoundField DataField="DisbItemQuantReq" HeaderText="Item Quantity Requested" SortExpression="DisbItemQuantReq" />
                             <asp:BoundField DataField="DisbItemQuantDelivered" HeaderText="Item Quantity Delivered" SortExpression="DisbItemQuantDelivered" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stationeryConnectionString %>" SelectCommand="SELECT item.ItemDescription, disbursementdetails.DisbItemQuantReq, disbursementdetails.DisbItemQuantDelivered FROM disbursementdetails INNER JOIN item ON disbursementdetails.DisbItemID = item.ItemID"></asp:SqlDataSource>
              
            </div>
          <br />
          <br />
                          <div class="col-lg-offset-0">
              <asp:Button ID="btnConfirmReceipt" runat="server" CssClass="btn btn-primary" Text="Confirm Delivery"/>&nbsp;&nbsp;
             <asp:Button ID="btnViewCollectionDetails" runat="server" CssClass="btn btn-success" Text="View Collection Details" PostBackUrl='<%# Eval("CollectionPointID","~/Presentation/Store/ViewCollectionDetails_Clerk.aspx?ID={0}") %>'/>
      </div>
            </div>
    <br />
    <br />
</asp:Content>
