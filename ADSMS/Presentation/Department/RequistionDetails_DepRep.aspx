﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/DepRep.Master" AutoEventWireup="true" CodeBehind="RequistionDetails_DepRep.aspx.cs" Inherits="ADSMS.Presentation.Department.RequistionDetails_DepRep" %>
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
                                <legend>Requisition Detail
                                </legend>
                                <div class="bs-component">
                                    <div class="form-group">
                                        <div class="col-lg-3">
                                            Request Status
                                        </div>
                                        <div class="col-lg-2">
                                            <asp:Label ID="lblReqStatus" runat="server" />
                                        </div>
                                        <br />
                                    </div>

                                    <div class="bs-component">
                                        <div class="form-group">
                                            <div class="col-lg-3">
                                                Request Date
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Label ID="lblRDate" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>

                                    <div class="bs-component">
                                        <div class="form-group">
                                            <div class="col-lg-3">
                                                Approve Employee Name
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Label ID="lblEName" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>

                                    <div class="bs-component">
                                        <div class="form-group">
                                            <div class="col-lg-3">
                                                Reason 
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Label ID="lblReason" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>


                                    <div class="bs-component">
                                        <div class="form-group">
                                            <div class="col-lg-3">
                                                Approve Date 
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Label ID="lblADate" runat="server" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>

                                </div>
                                <hr />
                                <div class="col-lg-11" style="padding-top: 20px;">
                                    <asp:GridView ID="gvDetail" runat="server" AllowPaging="true" PageSize="3"
                                        CssClass="table table-striped table-hover"
                                        AutoGenerateColumns="False" EmptyDataText="No Data Found" OnPageIndexChanging="gvDetail_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="No" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="ReqQuantityReq" DataField="name">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="ItemDescription" DataField="qty">


                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>


                                        </Columns>
                                        <PagerStyle CssClass="danger" />
                                    </asp:GridView>
                                </div>
                                <div class="col-lg-11" style="padding-top: 20px;">
                                    <asp:Button ID="btnDelete" CssClass="btn btn-primary btn-xs" runat="server" Visible="false" Text="Cancel Requisition" OnClick="btnDelete_Click" />
                                    <asp:Button ID="btnBack" CssClass="btn btn-primary btn-xs" runat="server" Text="Back" OnClick="btnBack_Click" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>