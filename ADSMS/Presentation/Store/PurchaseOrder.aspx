﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="PurchaseOrder.aspx.cs" Inherits="ADSMS.Presentation.Store.PurchaseOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       
        
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="jumbotron">
            <div class="row">
                <div class="bs-example form-horizontal">
                    <fieldset>
                        <legend>Purchase Order</legend>
                        <div class="bs-component">
                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        Category Name 
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:DropDownList ID="ddlCategory" AutoPostBack="true" CssClass="form-control" runat="server"  OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="add" ControlToValidate="ddlCategory" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />
                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        Item Name
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:DropDownList ID="ddlItem" CssClass="form-control" AutoPostBack="true" runat="server"  OnSelectedIndexChanged="ddlItem_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="add" ControlToValidate="ddlItem" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />

                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        Supplier Name
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:DropDownList ID="ddlSupplier" CssClass="form-control" runat="server" >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="add" ControlToValidate="ddlSupplier" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />
                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-2">
                                        Quantity
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtQty" MaxLength="999" CssClass="form-control" ValidationGroup="add" onkeypress="return isNumberKey(event);"  runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="add" ControlToValidate="txtQty" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="add" ErrorMessage="min is 1 and max is 999!" Type="Integer" ControlToValidate="txtQty" MinimumValue="1" MaximumValue="999"></asp:RangeValidator>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />
                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-offset-1">
                                        <asp:Button ID="btnAdd" Text="Add" CssClass="btn btn-primary" ValidationGroup="add" runat="server" OnClick="btnAdd_Click"  />&nbsp;&nbsp;
                                        <button type="button" class="btn btn-info" onclick="this.form.reset()">Reset Form</button>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />
                        </div>

                        <div class="col-lg-11" style="padding-top: 20px;">
                            <asp:GridView ID="gvPurchase" CssClass="table table-striped table-hover" AllowPaging="true" PageSize="5" runat="server" 
                                AutoGenerateColumns="false" OnPageIndexChanging="gvPurchase_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderStyle-CssClass="danger" HeaderText="No">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="2%" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name" HeaderStyle-CssClass="danger">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCName" runat="server" Text='<%#Eval("CategoryName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name" HeaderStyle-CssClass="danger">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIName" runat="server" Text='<%#Eval("ItemName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name" HeaderStyle-CssClass="danger">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSName" runat="server" Text='<%#Eval("SupplierName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="danger">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtGQty" runat="server" MaxLength="3" onkeypress="return isNumberKey(event);" Width="50px" OnTextChanged="txtQty_TextChanged" Text='<%#Eval("Qty")%>' />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtGQty" runat="server" ErrorMessage="**Require" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red" ErrorMessage="Not allow 0!" ControlToValidate="txtGQty" MinimumValue="1" MaximumValue="999"></asp:RangeValidator>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="danger"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Price" HeaderStyle-CssClass="danger">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price") %>' />
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="danger"></HeaderStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderStyle-CssClass="danger" HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbtnDelete" CssClass="btn btn-primary btn-xs" runat="server" Text="Remove" OnCommand="lbtnDelete_Command" CommandArgument='<%#Eval("CategoryName")+","+Eval("ItemName")+","+Eval("SupplierName")+","+Eval("Qty") %>' />
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="danger"></HeaderStyle>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle CssClass="danger" />
                            </asp:GridView>

                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-3">
                                        <asp:Label ID="lblDAddress" runat="server" Text="Deliver Address" Visible="false" />
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtDAddress" MaxLength="50" CssClass="form-control" Width="300px" Visible="false"  runat="server"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />

                            <div class="bs-component">
                                <div class="form-group">
                                    <div class="col-lg-3">
                                        <asp:Label ID="lblDate" runat="server" Text="Request Deliver Date" Visible="false" />
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="fromDateTextBox" CssClass="form-control" Enabled="false" Visible="false" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:ImageButton ID="imgbtnCalendar" runat="server" Height="30px" Visible="false"
                                            ImageUrl="~/Images/calendar.png" OnClick="imgbtnCalendar_Click" />
                                        <asp:Calendar ID="Calendar1" runat="server"
                                            OnSelectionChanged="Calendar1_SelectionChanged" Visible="false" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                                    </div>
                                    
                                    <div class="col-lg-2">
                                        <asp:Button ID="btnComfirm" CssClass="btn btn-primary btn-xs" runat="server" Visible="false" Text="Confirm" OnClick="btnComfirm_Click" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <br />
                            
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>