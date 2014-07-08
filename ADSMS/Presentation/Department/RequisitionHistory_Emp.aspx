<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/Department.Master" AutoEventWireup="true" CodeBehind="RequisitionHistory_Emp.aspx.cs" Inherits="ADSMS.Presentation.Department.RequisitionHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-lg-12">
                    <div class="well">
                        <div class="bs-example form-horizontal">
                            <fieldset>
                                <legend>Requisition History
                                </legend>
                                <div class="col-lg-11" style="padding-top: 20px;">
                                    <asp:DropDownList ID="ddlRequisition" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlRequisition_SelectedIndexChanged" >
                                        <asp:ListItem Value="all" Text="All" />
                                        <asp:ListItem Value="pending" Text="Pending" />
                                        <asp:ListItem Value="approved" Text="Approved" />
                                        <asp:ListItem Value="reject" Text="Rejected" />
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-11" style="padding-top: 20px;">
                                    <asp:GridView ID="gvRequisition" runat="server" OnPageIndexChanging="gvRequisition_PageIndexChanging"
                                        CssClass="table table-striped table-hover" AllowPaging="True" AllowSorting="True" PageSize="5"
                                        AutoGenerateColumns="False" EmptyDataText="No Data Found" OnRowDataBound="gvRequisition_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="No" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:BoundField HeaderText="ReqDate" HeaderStyle-CssClass="danger" DataField="ReqDate" DataFormatString="{0:dd/MM/yyyy}">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="ReqStatus" HeaderStyle-CssClass="danger" DataField="ReqStatus">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="ReqApproveDate" HeaderStyle-CssClass="danger" DataField="ReqApproveDate" DataFormatString="{0:dd/MM/yyyy}">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="qtySum" HeaderStyle-CssClass="danger" DataField="qtySum">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnDetail" CssClass="btn btn-primary btn-xs" runat="server" Text="Detail" OnCommand="btnDetail_Command" CommandArgument='<%#Eval("ReqID") %>' />
                                                    <asp:LinkButton ID="btnDelete" CssClass="btn btn-primary btn-xs" runat="server" Text="Delete" OnCommand="btnDelete_Command" CommandArgument='<%#Eval("ReqID") %>' />
                                                </ItemTemplate>

                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="danger" />
                                    </asp:GridView>
                                </div>

                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
