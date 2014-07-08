<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="InventoryList.aspx.cs" Inherits="ADSMS.Presentation.Store.InventoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/jquery.quicksearch.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Store Inventory List</h1>
                </div>

                <div class="col-sm-12">
                    <asp:Label ID="lblCategory" runat="server" Text="Item Category: "></asp:Label>
                    <asp:DropDownList ID="listbyCN" runat="server" DataSourceID="categoryname" DataTextField="CategoryName" DataValueField="CategoryName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <asp:EntityDataSource ID="categoryname" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="categories" EntityTypeFilter="category" Select="it.[CategoryName]">
                    </asp:EntityDataSource>
                    <div class="col-lg-offset-11">
                    <asp:Button ID="addnew" runat="server" Text="Add New" PostBackUrl="~/Presentation/Store/CreateItems.aspx" CssClass="btn-primary" /></div>
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Item Description" CssClass="col-sm-2">
                    </asp:TextBox><asp:Button ID="search" runat="server" Text="search" OnClick="search_Click" CssClass="btn-primary" />
                    <br/>
                    <br />
                    <div class="table-responsive">
                        <asp:GridView ID="itemView" EmptyDataText="No Items Available" runat="server" PageSize="15" OnPageIndexChanging="itemView_PageIndexChanging" AllowPaging="True" CssClass="table table-striped table-hover" HeaderStyle="3" RowStyle-CssClass="info" OnRowCancelingEdit="itemView_RowCancelingEdit" OnRowEditing="itemView_RowEditing" OnRowUpdating="itemView_RowUpdating" AutoGenerateColumns="False">
                        <Columns>

                            
                             <asp:BoundField HeaderText="Item ID" DataField="ItemID" ReadOnly="true"/>
<%--                            <%--<asp:BoundField HeaderText="Item Description" DataField="ItemDescription"/>--%>


                            <asp:TemplateField HeaderText="Item Description">
                                <ItemTemplate>
                                    <asp:Label ID="lblDesp" runat="server" Text='<%# Eval("ItemDescription") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="lblDesp" runat="server" Text='<%# Bind("ItemDescription") %>'></asp:TextBox>

                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Item Quantity" DataField="ItemQuant" ReadOnly="true"/>
                            <asp:BoundField HeaderText="Category Name" DataField="CategoryName" ReadOnly="true"/>

                               <%--<asp:BoundField HeaderText="ReOrder Level" DataField="ItemReOrderLvl"/>--%>
                            <asp:TemplateField HeaderText="ReOrder Level">
                                <ItemTemplate>
                                    <asp:Label ID="lblReO" runat="server" Text='<%# Eval("ItemReOrderLvl") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="lblReO" runat="server" Text='<%# Bind("ItemReOrderLvl") %>'></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="At least value should be 1" ControlToValidate="lblReO" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                </EditItemTemplate>
                            </asp:TemplateField>

                             <%--<asp:BoundField HeaderText="ReOrder Quantity" DataField="ItemReOrderQuant"/>--%>
                            <asp:TemplateField HeaderText="ReOrder Quantity">
                                <ItemTemplate>
                                    <asp:Label ID="lblReoQ" runat="server" Text='<%# Eval("ItemReOrderQuant") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="lblReoQ" runat="server" Text='<%# Bind("ItemReOrderQuant") %>'></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="At least value should be 1" ControlToValidate="lblReoQ" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <%--<asp:BoundField HeaderText="UOM" DataField="ItemUOM" />--%>
                            <asp:TemplateField HeaderText="UOM">
                                <ItemTemplate>
                                    <asp:Label ID="lblUOM" runat="server" Text='<%# Eval("ItemUOM") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="lblUOM" runat="server" Text='<%# Bind("ItemUOM") %>'></asp:TextBox>
                                    <%--<asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="At least value should be 1" ControlToValidate="lblUOM" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>--%>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <%--<asp:BoundField HeaderText="Bin No" DataField="BinNumber" />--%>
                            <asp:TemplateField HeaderText="Bin No">
                                <ItemTemplate>
                                    <asp:Label ID="lblBinNo" runat="server" Text='<%# Eval("BinNumber") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="lblBinNo" runat="server" Text='<%# Bind("BinNumber") %>'></asp:TextBox>
                                    <%--<asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="At least value should be 1" ControlToValidate="lblBinNo" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>--%>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:CommandField HeaderText="Action" ShowEditButton="True"/>
                          

                        </Columns>
                        <HeaderStyle CssClass="3"></HeaderStyle>

                        <RowStyle CssClass="info"></RowStyle>
                    </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
<%--     <script type="text/javascript">
         $(function () {
             $('.search_textbox').each(function (i) {
                 $(this).quicksearch("[id*=itemView] tr:not(:has(th))", {
                     'testQuery': function (query, txt, row) {
                         return $(row).children(":eq(" + i + ")").text().toLowerCase().indexOf(query[0].toLowerCase()) != -1;
                     }
                 });
                 $(this).attr("class", "form-control");
             });
         });
                    </script>--%>
    </asp:Content>
