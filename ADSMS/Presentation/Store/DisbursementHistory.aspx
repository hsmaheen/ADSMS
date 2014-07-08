<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="DisbursementHistory.aspx.cs" Inherits="ADSMS.Presentation.Store.DisbursementHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Disbursement History</h1>
                </div>

                <div class="table-responsive">
                    <asp:GridView ID="dgvDisbHistory" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" 
                         AllowPaging="true" PageSize="10" OnPageIndexChanging="dgvDisbHistory_PageIndexChanging">
                        <Columns>
                            <asp:BoundField HeaderText="Disbursement ID" DataField="DisbID" />
                            <asp:BoundField HeaderText="Disbursement Department Name" DataField="DepName" />
                            <asp:BoundField HeaderText="Disbursement Status" DataField="DisbStatus" />
                            <asp:BoundField HeaderText="Disbursement Receive Date" DataField="DisbReceiveDate" />
                            <asp:BoundField HeaderText="Disbursement Create Date" DataField="DisbCreateDate" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="btnDetail" CssClass="btn-primary"  runat="server" Text="Detail" CommandArgument='<%#Eval("DisbID") %>' OnCommand="btnDetail_Command" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>
        </div>

    </div>
    </div>
</asp:Content>
