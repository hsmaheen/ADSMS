<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="StockTransaction.aspx.cs" Inherits="ADSMS.Presentation.Store.StockTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Stock Transaction History</h1>
                </div>

                <asp:TextBox ID="txtSearchbyEmp" runat="server" placeholder="Employee Name" CssClass="col-sm-2"></asp:TextBox>
                <asp:Button ID="searchByEmp" runat="server" Text="Search" CssClass="btn-primary" OnClick="searchByEmp_Click" />
                <div class="table-responsive">
                    <asp:GridView ID="dgvStockTrans" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" AllowPaging="true" PageSize="10" OnPageIndexChanging="dgvStockTrans_PageIndexChanging">
                        <Columns>
                            <asp:BoundField HeaderText="Transaction ID" DataField="TransID" />
                            <asp:BoundField HeaderText="Transaction Code" DataField="TransCode" />
                            <asp:BoundField HeaderText="Item Description" DataField="ItemDescription" />
                            <asp:BoundField HeaderText="Transaction Date" DataField="TransDate" />
                            <asp:BoundField HeaderText="Transaction Reason" DataField="TransReason" />
                            <asp:BoundField HeaderText="Transaction Item Quantity" DataField="TransItemQuant" />
                            <asp:BoundField HeaderText="Transaction Item Balance" DataField="TransItemBalance" />
                            <asp:BoundField HeaderText="Transaction Type" DataField="TransactionType" />
                            <asp:BoundField HeaderText="Transaction User Name" DataField="StoreEmpName" />
                        </Columns>
                    </asp:GridView>

                </div>
        </div>

    </div>
    </div>
</asp:Content>
