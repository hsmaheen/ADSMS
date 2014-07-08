<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/DepRep.Master" AutoEventWireup="true" CodeBehind="RequestStationery_DepRep.aspx.cs" Inherits="ADSMS.Presentation.Department.RequestStationery_DepRep" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                                <legend>Stationery Requisition
                                </legend>

                                <div class="col-lg-4">
                                    <div>
                                        Search :
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>

                                        <asp:TextBox ID="txtAutoComplete" runat="server" Width="252px"> </asp:TextBox>
                                        <asp:AutoCompleteExtender runat="server"
                                            ID="AutoComplete1"
                                            BehaviorID="autoComplete"
                                            TargetControlID="txtAutoComplete"
                                            ServicePath="RequestStationery_Emp.aspx"
                                            ServiceMethod="GetCompletionList"
                                            MinimumPrefixLength="2"
                                            CompletionInterval="10"
                                            EnableCaching="true"
                                            CompletionSetCount="100"
                                            OnClientHiding="OnClientCompleted"
                                            OnClientPopulated="OnClientCompleted"
                                            OnClientPopulating="OnClientPopulating"
                                            OnClientItemSelected="OnClientItemSelected" />

                                        <%--<asp:DropDownList ID="ddlSearch" runat="server" />--%>
                                        <asp:Button ID="btnAdd" CssClass="btn btn-primary btn-xs" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                    </div>
                                </div>
                                <div class="col-lg-11" style="padding-top: 20px;">
                                    <asp:GridView ID="gvRequisition" CssClass="table table-striped table-hover" runat="server" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:TemplateField HeaderText="No" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>

                                                <HeaderStyle CssClass="danger"></HeaderStyle>

                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-CssClass="danger" HeaderText="Item ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblItemID" runat="server" Text='<%#Eval("ReqItemID") %>' />
                                                </ItemTemplate>

                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="ItemDescription" DataField="ItemDescription">
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtQty" runat="server" Width="50px" Text='<%#Eval("ReqQuantityReq")%>' onkeypress="return isNumberKey(event);" OnTextChanged="txtQty_TextChanged" />

                                                    <%--<asp:RangeValidator ID="RangeValidator1" runat="server" MinimumValue="1" MaximumValue="10" Type="Integer" ControlToValidate="txtQty" ErrorMessage="RangeValidator"></asp:RangeValidator>--%>
                                                </ItemTemplate>
                                                <%----%>
                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderStyle-CssClass="danger" HeaderText="Action">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnDelete" CssClass="btn btn-primary btn-xs" runat="server" Text="Remove" OnCommand="btnRemove_Click" CommandArgument='<%#Eval("ReqItemID") %>' />
                                                </ItemTemplate>

                                                <HeaderStyle CssClass="danger"></HeaderStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="danger" />
                                    </asp:GridView>
                                    <asp:Button ID="btnComfirm" CssClass="btn btn-primary btn-xs" runat="server" Visible="false" Text="Confirm" OnClick="btnComfirm_Click" />
                                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />
                                </div>

                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">


        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }





        function OnClientPopulating(sender, e) {
            sender._element.className = "loading";
        }
        function OnClientCompleted(sender, e) {
            sender._element.className = "";
        }
        function OnClientItemSelected(source, eventArgs) {

            $get('<%=this.txtAutoComplete.ClientID%>').value = eventArgs.get_value();
        }
    </script>

    <style type="text/css">
        .loading {
            background-image: url(../../Images/loading-anim.gif);
            background-position: right;
            background-repeat: no-repeat;
        }
    </style>
</asp:Content>
