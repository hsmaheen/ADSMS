<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="StationeryRetrieveal_Emp.aspx.cs" Inherits="ADSMS.Presentation.Store.StationeryRetrieveal_Emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel">Item Assignment </h2>
                </div>

                <div id="t_Table">
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="btn_Test">Save changes</button>
                </div>
                <div id="errmsg">
                    <%--error message here--%>
                </div>
            </div>

        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Stationery Requisition List</h1>
                    <label>
                        Date: <%=DateTime.Today.ToShortDateString() %>
                    </label>
                </div>

                <div class="bs-component">
                    <asp:GridView ID="gdv_StatList" runat="server" CssClass="table table-striped table-hover " AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField HeaderText="Item ID" DataField="itemID" />
                            <asp:BoundField HeaderText="Bin Number" DataField="BinNumber" />
                            <asp:BoundField HeaderText="Item Description" DataField="itemdescription" />
                            <asp:BoundField HeaderText="Quantity Required" DataField="Order_Quantity" />
                            <asp:BoundField HeaderText="Quantity in Inventory" DataField="ItemQuant" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%--<asp:Button ID="btn_ViewDBList" Text="Assign Disbursement" runat="server" CssClass="btn-primary" CommandArgument='<%#Eval("itemID") %>' OnClientClick="test();" />--%>
                                    <button class="btn btn-primary btn-sm" type="button">
                                        Assign Items
                                    </button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <%--   <button type="button" class="btn btn-primary btn-sm" id="btn_modal2" onclick="test();">
                        Launch demo modal
                    </button>--%>
                </div>
            </div>
        </div>
    </div>
    <div id="nodata" class="container" runat="server">
        <div class="jumbotron">
            <h2>All Requisitions have been satisfied</h2>
            <p>Check your Disbursement Details for Items that need to be Disbursed </p>
           <%-- <button type="button" class="btn-lg col-md-offset-9 btn-primary">View Final Disbursements   </button>--%>
        </div>


    </div>
    <div id="msg">
    </div>


    <script>
        var inttotquant = 0;
        var inventQuant;
        var l_id;
        $('#btn_Test').click(save);
        $("#<%=gdv_StatList.ClientID%> button").click(function () {
            l_id = $(this).parent().parent().children("td:first-child").text();
            var totqaunt = $(this).parent().parent().children("td:first-child+td+td+td").text();
            inventQuant = $(this).parent().parent().children("td:first-child+td+td+td+td").text();
            //alert(inventQuant);
            inttotquant = parseInt(totqaunt);
            $.ajax({
                type: "POST",
                url: "StationeryRetrieveal_Emp.aspx/GetDepItem",
                contentType: "application/json",
                data: JSON.stringify({ id: l_id }),
                dataType: "json"
            })
                .done(function (data) {
                    var items = data.d;
                    //console.log(items);
                    includes("disb_List", items, "#t_Table");

                    $('#myModal').modal('show');

                    //making sure only numbers are entered
                    $('#td_value').keydown(function (e) {
                        if (e.shiftKey || e.ctrlKey || e.altKey) {
                            e.preventDefault();
                        } else {
                            var key = e.keyCode;
                            if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                                e.preventDefault();
                            }
                        }
                    });
                    // end of making sure only numbers are entered




                })
            .fail(function () { })
            .always(function () { });
        });

        //save method to save in disbursement list
        function save() {
            var index = 0;
            var itemid = l_id;
            var itemquant = { quant: [], dep: [], itemID: itemid, quantreq: [] }
            itemquant

            var test = 0;
            var loopval = 0; //total value entered by the user
            //loop through the tables
            $("#test_Table tbody tr").each(function () {
                test = parseInt($('.quant', this).val());
                var depid = $(this).children("td:first-child").text();
                var requiredquant = $(this).children("td:first-child+td+td+td").text();
                console.log("The dep id is" + depid);
                if (isNaN(test) != true) {
                    loopval = loopval + test;
                }

                //finding the number of rows
                index = index + 1;
                //end of finding the number of rows
                itemquant.quant[itemquant.quant.length] = $('.quant', this).val(); //entered quantity
                itemquant.dep[itemquant.dep.length] = depid;
                itemquant.quantreq[itemquant.quantreq.length] = requiredquant; //required quant
            });
            var flag = 0;
            var zerocount = 0;
            var enteredQuant = 0;
            var ReQuant = 0;
            for (var i = 0; i < index; i++) {

                enteredQuant = enteredQuant + parseInt(itemquant.quant[i]);
                ReQuant = ReQuant + parseInt(itemquant.quantreq[i]);

                if (parseInt(itemquant.quant[i]) > parseInt(itemquant.quantreq[i])) {
                    flag = 0;
                }
                else if (parseInt(itemquant.quant[i]) < 0) {
                    zerocount = zerocount + 1;

                }
                else {
                    flag = flag + 1;
                }

            }

            //alert("Inventory is" + inventQuant);
            //alert("Total quant req is" + ReQuant);
            //alert("Entered quant req is" + enteredQuant);

            if (zerocount != 0) {
                var msg = "Assigned quantity cannot be negative";
                includes("error_Tmpl", { warning: msg }, "#errmsg");

            }
                //else if (inventQuant > ReQuant)
                //{
                //    //Available is greater
                //    if (enteredQuant < ReQuant)
                //    {
                //        var msg = "There are enough Items in the inventory to satisy this Request";
                //        includes("error_Tmpl", { warning: msg }, "#errmsg");



                //    }


                //}
                //else if (inventQuant < ReQuant) {
                //    alert("Available is Leser");

                //}








            else if ((loopval > inttotquant)) {
                var msg = "Assigned quantity cannot be greater than Requested Quantity";
                includes("error_Tmpl", { warning: msg }, "#errmsg");


            }
            else {
                if (flag < index) {
                    var msg = "Assigned quantity cannot be greater than Requested Quantity";
                    includes("error_Tmpl", { warning: msg }, "#errmsg");
                }



                else if (flag == index) {

                    console.log(itemquant);
                    $.ajax({
                        type: "POST",
                        url: "StationeryRetrieveal_Emp.aspx/SaveDisbursement",
                        contentType: "application/json",
                        data: JSON.stringify(itemquant),
                        dataType: "json"
                    }).done(function () {
                        $('#myModal').modal('show');
                    }).success(success);
                }




            }
        }

        function success() {

            var message = "The disbursement details have been saved";
            includes("success_Tmpl", { message: message }, "#errmsg");
            setTimeout(function () {
                location.reload();
            }, 4000);

        }
    </script>

</asp:Content>
