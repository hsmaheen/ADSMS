<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="StockReportForm.aspx.cs" Inherits="ADSMS.Presentation.Store.StockReportForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div class="container">
            <asp:GridView ID="gdv_LowStock" runat="server" AutoGenerateColumns="false" CssClass="table table-hover  table-bordered table-responsive" AllowPaging="true" PageSize="10" OnPageIndexChanging="gdv_LowStock_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="ItemID" HeaderText="Item ID" />
                    <asp:BoundField DataField="ItemDescription" HeaderText="Item Description" />
                    <asp:BoundField DataField="ItemReOrderLvl" HeaderText="Item Re-Order Level" />
                    <asp:BoundField DataField="ItemReOrderQuant" HeaderText="Item Re-Order Quantity" />
                    <asp:BoundField DataField="ItemQuant" HeaderText="Quantity in Inventory" />

                    <asp:BoundField DataField="ItemUOM" HeaderText="Unit of Measurement" />
                </Columns>


            </asp:GridView>
        </div>
    </div>
</asp:Content>
