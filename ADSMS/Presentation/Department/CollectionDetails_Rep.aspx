<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/Department.Master" AutoEventWireup="true" CodeBehind="CollectionDetails_Rep.aspx.cs" Inherits="ADSMS.Presentation.Department.CollectionDetails_Rep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-header">
                <h1 id="tables">Collection Details for Department Representative</h1>
            </div>

             <div class="bs-component">
                            <div class="form-group">
                                <div class="col-lg-3">
                                <asp:Label ID="choosedeptreplbl" runat="server" Text="Choose Department Representative:"></asp:Label>
                                    </div>
                                <div class="col-lg-2">       
                      
                                    <asp:DropDownList ID="deptrepddl" runat="server" DataSourceID="DeptRepName" DataTextField="DepRepName" DataValueField="DepRepName"></asp:DropDownList>

                                    <asp:EntityDataSource ID="DeptRepName" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="departments" EntityTypeFilter="department" Select="it.[DepRepName]">
                                </asp:EntityDataSource>
                      
                                </div>
                            </div>
                            <br />
                                  <br />
         </div>

            <div class="bs-component">
                        <div class="form-group">
                            <div class="col-lg-3">
                            <asp:Label ID="contactNamelbl" runat="server" Text="Department Contact's Name:"></asp:Label>
                                </div>
                            <div class="col-lg-2">
                                
                                <asp:DropDownList ID="contactNameddl" runat="server" DataSourceID="DeptContactName" DataTextField="DepContactName" DataValueField="DepContactName"></asp:DropDownList>
                                
                                <asp:EntityDataSource ID="DeptContactName" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="departments" EntityTypeFilter="department" Select="it.[DepContactName]">
                                </asp:EntityDataSource>
                                
                            </div>
                        </div>
                        <br />
                        </div>

                    <div class="bs-component">
                            <div class="form-group">
                                <div class="col-lg-3">
                            <asp:Label ID="deptcontactNumberlbl" runat="server" Text="Department's Contact Number:"></asp:Label>
                                </div>
                               <div class="col-lg-2"> 
                                   <asp:DropDownList ID="deptcontactNumberddl" runat="server" DataSourceID="DeptContactNumber" DataTextField="DepContactNumber" DataValueField="DepContactNumber">
                                   </asp:DropDownList>
                                   <asp:EntityDataSource ID="DeptContactNumber" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="departments" EntityTypeFilter="department" Select="it.[DepContactNumber]">
                                   </asp:EntityDataSource>
                                </div>
                            </div>
                         <br />
                        </div>
             <br />
             <br />
            <div class="bs-component">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-striped table-hover" HeaderStyle-CssClass="3" RowStyle-CssClass="info" AllowPaging="True" >
                    <Columns>
                        <asp:BoundField DataField="ItemDescription" HeaderText="Item Description" SortExpression="ItemDescription" />
                        <asp:BoundField DataField="DisbItemQuantDelivered" HeaderText="Item Quantity" SortExpression="DisbItemQuantDelivered" />
                        <asp:BoundField DataField="CollectionPointAddress" HeaderText="Collection Point Location" SortExpression="CollectionPointAddress" />
                        <asp:BoundField DataField="CollectionPointDatetime" HeaderText="Collection Date/Time" SortExpression="CollectionPointDatetime" />
                        <asp:BoundField DataField="DisbStatus" HeaderText="Disbursement Status" SortExpression="DisbStatus" />
                    </Columns>

<HeaderStyle CssClass="3"></HeaderStyle>

<RowStyle CssClass="info"></RowStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stationeryConnectionString %>" SelectCommand="SELECT disbursementdetails.DisbItemID, disbursementdetails.DisbItemQuantDelivered, item.ItemDescription, collectionPoint.CollectionPointAddress, collectionPoint.CollectionPointDatetime, disbursement.DisbStatus FROM disbursementdetails INNER JOIN disbursement ON disbursementdetails.DisbID = disbursement.DisbID INNER JOIN item ON disbursementdetails.DisbItemID = item.ItemID CROSS JOIN collectionPoint"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
