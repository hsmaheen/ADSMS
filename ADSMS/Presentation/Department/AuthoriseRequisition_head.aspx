﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/DepHead.Master" AutoEventWireup="true" CodeBehind="AuthoriseRequisition_head.aspx.cs" Inherits="ADSMS.Presentation.Department.AuthoriseRequisition_head" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-lg-12">
                    <div class="well">

                        <asp:Panel ID="PanelError" runat="server" CssClass="alert alert-dismissable alert-danger" Visible="False">
                            <strong>Sorry! </strong>There is no data. Please, go back <a href="RequisitionList_haead.aspx" class="alert-link">View  requisition List</a>.
                        </asp:Panel>

                        <asp:Panel ID="PanelApprove" runat="server" CssClass="alert alert-dismissable alert-success" Visible="False">
                            <strong>Approved!</strong> This requisition has been successfully approved.
                        </asp:Panel>

                        <div class="bs-example form-horizontal">
                            <fieldset>
                                <legend>Authorize Requisition
                                </legend>

                                <div class="col-lg-4">
                                    <asp:Label ID="lblDeptName1" runat="server" Text="Dept Name: " CssClass="col-lg-4 control-label"></asp:Label>
                                    <asp:Label ID="lblDeptName" runat="server" CssClass="text-left col-lg-8 control-label"></asp:Label><br />
                                    <asp:Label ID="lblDeptCode1" runat="server" Text="Dept Code: " CssClass="col-lg-4 control-label"></asp:Label>
                                    <asp:Label ID="lblDeptCode" runat="server" CssClass="text-left col-lg-8 control-label"></asp:Label>
                                </div>

                                <div class="col-lg-3">
                                </div>

                                <div class="col-lg-5">
                                    <asp:Label ID="lblEmployeeName1" runat="server" Text="Employee Name: " CssClass="col-lg-5 control-label"></asp:Label>
                                    <asp:Label ID="lblEmployeeName" runat="server" CssClass="col-lg-7 control-label"></asp:Label><br />
                                    <asp:Label ID="lblEmpNo1" runat="server" Text="Employee Number: " CssClass="col-lg-5 control-label"></asp:Label>
                                    <asp:Label ID="lblEmpNo" runat="server" CssClass="col-lg-7 control-label"></asp:Label><br />
                                    <asp:Label ID="lblEmpEmail1" runat="server" Text="Employee Email Address: " CssClass="col-lg-5 control-label"></asp:Label>
                                    <asp:Label ID="lblEmpEmail" runat="server" CssClass="col-lg-7 control-label"></asp:Label><br />
                                </div>

                                <div class="col-lg-7" style="padding-top: 20px;">
                                    <asp:GridView ID="gvItemDetails" runat="server" CssClass="table table-striped table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" EmptyDataText="No Data Found" PageSize="5">
                                        <Columns>
                                            <asp:BoundField HeaderText="Item Code" DataField="ItemID">
                                                <HeaderStyle CssClass="danger" />
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="Description" DataField="ItemDescription">
                                                <HeaderStyle CssClass="danger" />
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="Quantity" DataField="ReqQuantityReq">
                                                <HeaderStyle CssClass="danger" />
                                            </asp:BoundField>
                                        </Columns>
                                        <PagerStyle CssClass="danger" />
                                    </asp:GridView>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-7">
                                        <div class="col-lg-6">
                                            <asp:Button ID="btnConfirmRequisition" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="btnConfirmRequisition_Click" />
                                            <asp:Button ID="btnRejectRequisition" runat="server" Text="Reject" CssClass="btn btn-default" OnClick="btnRejectRequisition_Click" />
                                        </div>
                                        <div class="col-lg-6">
                                            <asp:TextBox ID="txtReason" CssClass="form-control" runat="server" placeholder="Please state reason:"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>