<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ADSMS.Presentation.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
    <form id="form1" runat="server">
    <div>
        <h4 style="font-size: medium">Register a new user</h4>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>
        <div style="margin-bottom:10px">
            Name<div>
                <asp:TextBox runat="server" ID="txt_Username" />                
                <br />
                <br />
                Email:<br />
                <asp:TextBox runat="server" ID="txt_UserEmailID" />                
                <br />
                <br />
                Contact:<br />
                <asp:TextBox runat="server" ID="txt_ContactNumber" />                
                <br />
            </div>
        </div>
        <div style="margin-bottom:10px">
         
         Password:<div>
                <asp:TextBox runat="server" ID="txt_Password" TextMode="Password" />                
                <br />
                <br />
                <br />
                Role:<br />
                <asp:DropDownList ID="ddl_Role" runat="server" DataTextField="RoleName" DataValueField="RoleName">
                </asp:DropDownList>
                <br />
                <br />
                Department:<br />
                <asp:DropDownList ID="ddl_Department" runat="server" DataTextField="DepName" DataValueField="DepName">
                </asp:DropDownList>
            </div>
        </div>
        <div style="margin-bottom:10px">
            <div>
            </div>
        </div>
        <div>
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="CreateUser_Click" Text="Register" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>