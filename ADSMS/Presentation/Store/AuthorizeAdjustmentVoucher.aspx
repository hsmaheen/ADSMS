﻿<%@ Page Language="C#"  MasterPageFile="~/Presentation/Store/Store.Master"  AutoEventWireup="true" CodeBehind="AuthorizeAdjustmentVoucher.aspx.cs" Inherits="ADSMS.Presentation.Store.AuthorizeAdjustmentVoucher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
   <div>
    
        <table style="width:100%;">
            <tr>
                <td>AdjustmentVoucher Retrival</td>
             
               
            </tr>
            <tr>
                <td class="auto-style1">Date <asp:Label ID="lblDate" runat="server" Text ="Date"></asp:Label>
                </td>
                
              
            </tr>
            <tr>
                <td>Requested By <asp:Label ID="lblStoreClerkID" runat="server" Text="StoreClerk"></asp:Label>
                </td>
               
               
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="dgvAdjDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover" HeaderStyle-CssClass="3" RowStyle-CssClass="info" AllowPaging="True" EmptyDataText="No Adjustment to apply">
                        <Columns>
                            <asp:BoundField DataField="ADVItemID" HeaderText="ItemID" />
                            <asp:BoundField DataField="ItemDescription" HeaderText="ItemCode" />
                            <asp:BoundField DataField="ADVQuantAdj" HeaderText="TransItemQuant" />
                            <asp:BoundField DataField="ADVReason" HeaderText="Reason" />
                            
                        </Columns>
                    </asp:GridView>
                </td>
              
            </tr>
            <tr>
                <td>

                    <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" OnClick="btnReject_Click" />

                </td>
            </tr>
        </table>
    
    </div>
        </div>
</asp:Content>