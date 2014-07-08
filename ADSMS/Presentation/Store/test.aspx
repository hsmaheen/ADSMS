<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="ADSMS.Presentation.Store.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btn_SendEmail" runat="server" Text="Button" OnClick="btn_SendEmail_Click" />
</asp:Content>
