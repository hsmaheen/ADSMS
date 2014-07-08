﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="UpdateAdjustmentVoucher.aspx.cs" Inherits="ADSMS.Presentation.Store.UpdateAdjustmentVoucher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="page-header">
            <h2 id="tables"><strong>View Adjustment Voucher Details</strong></h2>


            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>


        </div>
    
        <table style="width:100%;">
            
            <tr>
                <td>
                    <asp:GridView ID="dgvAdjustmentVoucher" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" HeaderStyle-CssClass="3" RowStyle-CssClass="info" AllowPaging="True" EmptyDataText="No Adjustment to apply" >
                        <Columns>
                            <asp:BoundField DataField="ItemID" HeaderText="Item ID" />
                            <asp:BoundField DataField="ItemDescription" HeaderText="Item Code" />
                            <asp:BoundField DataField="TransItemQuant" HeaderText="Transaction Item Quantity" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                             <asp:BoundField DataField="Amount" HeaderText="Amount" />
                             <asp:BoundField DataField="TransItemBalance" HeaderText="ItemBalance" />
                             <asp:BoundField DataField="TransID" HeaderText="Transaction ID" />
                            <asp:TemplateField HeaderText="Reason">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtReason" runat="server" CausesValidation="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvReason" runat="server" ErrorMessage="Required" ControlToValidate="txtReason"></asp:RequiredFieldValidator>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

<HeaderStyle CssClass="3"></HeaderStyle>

<RowStyle CssClass="info"></RowStyle>
                    </asp:GridView>
                    <asp:GridView ID="dgvAdjDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" HeaderStyle-CssClass="3" RowStyle-CssClass="info" AllowPaging="True" >
                        <Columns>
                            <asp:BoundField DataField="ADVItemID" HeaderText="Item ID" />
                            <asp:BoundField DataField="ItemDescription" HeaderText="Item Code" />
                            <asp:BoundField DataField="ADVQuantAdj" HeaderText="Transaction Item Quantity" />
                            <asp:BoundField DataField="ADVReason" HeaderText="Reason" />
                            
                        </Columns>
                    </asp:GridView>
                </td>
              
            </tr>
            <tr>
                <td>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                   </td>
                </tr>
            </table>
        </div>
</asp:Content>