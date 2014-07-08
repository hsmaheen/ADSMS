<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="DisbursementHistory_Details.aspx.cs" Inherits="ADSMS.Presentation.Store.DisbursementHistory_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Store Inventory List</h1>
                </div>
                <div class="table-responsive">
                    <asp:GridView ID="dgvDisbDetail" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover">
                        <Columns>
                            <asp:BoundField HeaderText="Disbursement ID" DataField="DisbID" />
                            <asp:BoundField HeaderText="Item Description" DataField="ItemDescription" />
                            <asp:BoundField HeaderText="DisbursementQuantity Required" DataField="DisbItemQuantReq" />
                            <asp:BoundField HeaderText="DisbursementQuantityDelivered" DataField="DisbItemQuantDelivered" />
                        </Columns>
                    </asp:GridView>
                        <asp:Button ID="Back" runat="server" Text="Back" CssClass="btn-primary" PostBackUrl="~/Presentation/Store/DisbursementHistory.aspx" />

                </div>
            </div>

        </div>
    </div>
</asp:Content>
