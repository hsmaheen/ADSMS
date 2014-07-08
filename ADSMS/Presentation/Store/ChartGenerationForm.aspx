﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="ChartGenerationForm.aspx.cs" Inherits="ADSMS.Presentation.ChartGenerationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Design/datepicker.css" rel="stylesheet" />
    <script src="../../Scripts/globalize.js"></script>
    <script src="../../Scripts/knockout-3.0.0.js"></script>
    <script src="../../Scripts/dx.chartjs.js"></script>
    <script src="../../Scripts/bootstrap-datepicker.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div id="chartContainer">
        </div>

    </div>

    <div class="container">
        <div class="page-header">
            <h1 id="tables">Chart Generation Form</h1>
        </div>
        <div class="bs-component">
            <div class="form-group">
                <div class="col-lg-2">
                    <asp:Label ID="categorylbl" runat="server" Text="Category:"></asp:Label>
                </div>
                <div class="col-lg-2">
                    <asp:DropDownList ID="categorylist" AutoPostBack="true" CssClass="col-lg-12" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="categorylist_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>

                <div class="col-lg-2">
                    <asp:CheckBox ID="categorychkbox" CssClass="col-lg-offset-6" runat="server" />

                </div>
                <br />
            </div>
        </div>
        <br />

        <%--    <div class="bs-component">
            <div class="form-group">
                <div class="col-lg-2">
                    <asp:Label ID="itemlbl" runat="server" Text="Item:"></asp:Label>
                </div>
                <div class="col-lg-2">
                    <asp:DropDownList ID="itemlist" runat="server" CssClass="form-control" AutoPostBack="true" AppendDataBoundItems="true">
                        <asp:ListItem Value="0" Text="-Select-" />
                    </asp:DropDownList>

                </div>
                <div class="col-lg-2">
                    <asp:CheckBox ID="itemchkbox" CssClass="col-lg-offset-6" runat="server" />
                </div>
                <br />
            </div>
        </div>--%>
        <%--<br />--%>

        <div class="bs-component">
            <div class="form-group">
                <div class="col-lg-2">
                    <asp:Label ID="departmentlbl" runat="server" Text="Department:"></asp:Label>
                </div>
                <div class="col-lg-2">
                    <asp:DropDownList ID="departmentlist" runat="server" DataSourceID="DepEnt" DataTextField="DepName" DataValueField="DepID">
                    </asp:DropDownList>

                    <asp:EntityDataSource ID="DepEnt" runat="server" ConnectionString="name=stationeryEntities" DefaultContainerName="stationeryEntities" EnableFlattening="False" EntitySetName="departments">
                    </asp:EntityDataSource>
                </div>
                <div class="col-lg-2">
                    <asp:CheckBox ID="departmentchkbox" CssClass="col-lg-offset-6" runat="server" />
                </div>
                <%--                <div>
                    <button type="button" class="btn btn-success" id="Button1">Generate Custom Chart</button>
                </div>--%>
                <br />
            </div>
        </div>
        <br />
        <%-- Month Date Picker--%>


        <div class="bs-component">
            <div class="form-group">
                <div class="col-lg-2">
                    <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label>
                </div>

                <div class="col-md-2 date">

                    <input id="date1" required name="date1" type="text" pattern="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$" placeholder="To date" class="form-control" />
                </div>
            </div>
        </div>
        <br />
        <br />

        <div class="bs-component">
            <div class="form-group">
                <div class="col-lg-2">
                    <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label>
                </div>

                <div class="col-md-2 date">
                    <input id="date2" required name="date2" type="text" pattern="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$" placeholder="From date" class="form-control" />
                </div>
            </div>
        </div>
        <br />

        <br />
        <br />
        <div class="form-group">
            <div class="col-lg-12">
                <button type="submit" class="btn btn-success col-md-offset-2" id="btn_GCD">Generate Chart</button>&nbsp;&nbsp;
            </div>
        </div>

    </div>



    <br />

    <script>
        $(function () {

            //$("#date1").datepicker({
            //    minDate: 0,
            //    maxDate: "+60D",
            //    numberOfMonths: 2,
            //    onSelect: function (selected) {
            //        $("#date2").datepicker("option", "minDate", selected)
            //    }
            //});
            //$("#date2").datepicker({
            //    minDate: 0,
            //    maxDate: "+60D",
            //    numberOfMonths: 2,
            //    onSelect: function (selected) {
            //        $("#date1").datepicker("option", "maxDate", selected)
            //    }
            //});

            $('.date input').datepicker({
                format: "dd/mm/yy",
                keyboardNavigation: false
            });

            //var date1Arr = $("").val().split('/');
            //var fromDate = parseInt(date1Arr[2] + date1Arr[1] + date1Arr[0]);

            //----buttons disabler---////


            //----buttons disabler---////

            //---button enabler---///

            //---button enabler---///







            var months = ["January", "February", "March", "April", "May", "June",
           "July", "August", "September", "October", "November", "December"];



            //$.ajax({
            //    type: "POST",
            //    url: "ChartGenerationForm.aspx/getCustomChart",
            //    contentType: "application/json",
            //    data: JSON.stringify(dates),
            //    dataType: "json"
            //}).success(customsuccess);

            //function customsuccess(data) {

            //    var dataSource = data.d;
            //    console.log(dataSource);
            //    $("#chartContainer").dxChart({
            //        dataSource: dataSource,
            //        commonSeriesSettings: {
            //            argumentField: "depName",
            //            type: "bar",
            //            hoverMode: "allArgumentPoints",
            //            selectionMode: "allArgumentPoints",
            //            label: {
            //                visible: true,
            //                format: "fixedPoint",
            //                precision: 0
            //            }
            //        },
            //        series: [
            //            { valueField: "Month1", name: month1 },
            //            { valueField: "Month2", name: month2 },
            //            { valueField: "Month3", name: month3 }
            //        ],
            //        title: "Totoal Number of Products Ordered by All Departments",
            //        legend: {
            //            verticalAlignment: "bottom",
            //            horizontalAlignment: "center"
            //        },
            //        pointClick: function (point) {
            //            this.select();
            //        }
            //    });



            //}




            //                var dataSource = [
            //    { state: "School of Sciece", Month1: 45, Month2: 60, Month3: 61 },
            //   { state: "School of Computing", Month1: 45, Month2: 345.851, Month3: 44.904 },
            //   { state: "School of Business", Month1: 33.721, Month2: 11.851, Month3: 34.904 },
            //{ state: "School of System Sciences", Month1: 45.721, Month2: 45.851, Month3: 545.904 }

            //                ];








            //    console.log(data.d);
            //    var chartdata = data.d[2];
            //    //$("#chartContainer").dxChart({
            //    //    title: {
            //    //        text: 'Quantity of Items Ordered by Departments'
            //    //    },
            //    //    tooltip: {
            //    //        enabled: true
            //    //    },
            //    //    dataSource: chartdata,
            //    //    //commonSeriesSettings: {
            //    //    //    label: {
            //    //    //        visible: true,
            //    //    //        connector: {
            //    //    //            visible: true
            //    //    //        }
            //    //    //    }
            //    //    //},
            //    //    series: {
            //    //        argumentField: "DepName",
            //    //        valueField: "QuantDelivered",
            //    //        type: "bar",

            //    //    }
            //    //});
            //    $("#chartContainer").dxChart({
            //        dataSource: chartdata,
            //        commonSeriesSettings: {
            //            argumentField: "DisbCreateDate",
            //            type: "bar",
            //            hoverMode: "allArgumentPoints",
            //            selectionMode: "allArgumentPoints",
            //            label: {
            //                visible: true,
            //                format: "fixedPoint",
            //                precision: 0
            //            }
            //        },
            //        series: [
            //            { valueField: "DepName", name: "Department Name" },
            //            { valueField: "QuantDelivered", name: "Quant" },
            //        ],
            //        title: "Great Lakes Gross State Product",
            //        legend: {
            //            verticalAlignment: "bottom",
            //            horizontalAlignment: "center"
            //        },
            //        pointClick: function (point) {
            //            this.select();
            //        }
            //    });

            //}









            //--Norma chart Generator--//
            $("#btn_GCD").click(function () {

                var dates = { date: [] }
                //getting the month
                var month1 = months[$("#date1").datepicker('getDate').getMonth()];
                var month2 = months[$("#date2").datepicker('getDate').getMonth()];
                //var month3 = months[$("#date3").datepicker('getDate').getMonth()];
                var date1 = $("#date1").val();
                var date2 = $("#date2").val();
                //var date3 = $("#date3").val();
                dates.date[0] = date1;
                dates.date[1] = date2;


                var CatOnly = 0;

                var DepandCat = 0;
                var catCheck = 0;
                var itemcheck = 0;
                var depcheck = 0;
                var chartlist = { itemName: 0, catName: 0, depName: 0, fromdate: date1, todate: date2 }

                var category = parseInt($("#<%=categorylist.ClientID %> option:selected").val());
                //alert(category);


                //alert(item);
                var department = parseInt($("#<%=departmentlist.ClientID%> option:selected").val());
                //alert(department);

                //--------getting the checkbox values---------//////
                if ($('#<%=categorychkbox.ClientID%>').prop('checked')) {

                    catCheck = 1;
                }

                if ($('#<%=departmentchkbox.ClientID%>').prop('checked')) {

                    depcheck = 1;

                }

                if (depcheck == 0 && catCheck == 0) {

                    alert("Please select at least one checkbox to display a chart");

                }
                else {





                    //--------end of getting the checkbox values------///////


                    //Chart for Dep according to Category
                    if ((depcheck == 1) && ((catCheck == 1) || (catCheck == 0))) {
                        chartlist.depName = department;
                        chartlist.catName = category;
                        console.log(chartlist);
                        DepandCat = 1;

                    }

                        //--Chart for only a category
                    else if ((itemcheck == 0) && (depcheck == 0) && (catCheck == 1)) {
                        //Cat Only

                        chartlist.catName = category;
                        console.log(chartlist);
                        CatOnly = 1;
                    }

                    // creating the chart
                    $.ajax({
                        type: "POST",
                        url: "ChartGenerationForm.aspx/getChart",
                        contentType: "application/json",
                        data: JSON.stringify(chartlist),
                        dataType: "json"
                    }).success(success);

                    function success(data) {

                        var checkchart = data.d;

                        //No data for chart generation
                        if (checkchart.length == 0) {
                            var message = "There is no sufficient data to generate a chart!!"
                            includes("error_Tmpl", { warning: message }, "#chartContainer");
                            setTimeout(function () {
                                location.reload();
                            }, 4000);

                        }

                            //Chart for Category only
                        else if (CatOnly == 1) {


                            var chartdata = data.d;
                            //console.log(chartdata);
                            //$("#chartContainer").dxPieChart({
                            //    size: {
                            //        width: 500
                            //    },
                            //    dataSource: chartdata,
                            //    series: [
                            //        {
                            //            argumentField: "ItemDescription",
                            //            valueField: "QuantReq",
                            //            label: {
                            //                visible: true,
                            //                connector: {
                            //                    visible: true,
                            //                    width: 1
                            //                }
                            //            }
                            //        }
                            //    ],
                            //    title: "Most Ordered Items in this Category"
                            //});

                            //$("#chartContainer").dxChart({
                            //    title: {
                            //        text: 'List of all Items Ordered'
                            //    },
                            //    tooltip: {
                            //        enabled: true
                            //    },
                            //    dataSource: chartdata,
                            //    commonSeriesSettings: {
                            //        label: {
                            //            visible: true,
                            //            connector: {
                            //                visible: true
                            //            }
                            //        }
                            //    },
                            //    series: {
                            //        argumentField: "ItemDescription",
                            //        valueField: "QuantReq",
                            //        name: "Items Ordered",
                            //        type: "bar",

                            //    }
                            //});
                            console.log(chartdata);
                            $("#chartContainer").dxPieChart({
                                size: {
                                    width: 500
                                },
                                dataSource: chartdata,
                                series: [
                                    {
                                        argumentField: "ItemDescription",
                                        valueField: "QuantReq",
                                        label: {
                                            visible: true,
                                            connector: {
                                                visible: true,
                                                width: 1
                                            }
                                        }
                                    }
                                ],
                                title: "Quantity of Item Ordered"
                            });

                        }


                            //Chart for Dep according to Category        
                        else if (DepandCat == 1) {

                            console.log(data.d);



                            var chartdata = data.d;

                            $("#chartContainer").dxChart({
                                title: {
                                    text: 'List of all Items Ordered'
                                },
                                tooltip: {
                                    enabled: true
                                },
                                dataSource: chartdata,
                                commonSeriesSettings: {
                                    label: {
                                        visible: true,
                                        connector: {
                                            visible: true
                                        }
                                    }
                                },
                                series: {
                                    argumentField: "CategoryName",
                                    valueField: "QuantReq",
                                    name: "Items Ordered",
                                    type: "bar",

                                }
                            });


                        }
                        //$("#chartContainer").dxPieChart({
                        //    dataSource: chartdata,
                        //    title: "Most Ordered Items",
                        //    legend: {
                        //        orientation: "horizontal",
                        //        itemTextPosition: "right",
                        //        horizontalAlignment: "right",
                        //        verticalAlignment: "bottom",
                        //        rowCount: 2
                        //    },
                        //    series: [{
                        //        argumentField: "ItemDescription",
                        //        valueField: "Qunatity_Delivered",
                        //        label: {
                        //            visible: true,
                        //            font: {
                        //                size: 16
                        //            },
                        //            connector: {
                        //                visible: true,
                        //                width: 0.5
                        //            },
                        //            position: "columns",
                        //            customizeText: function (arg) {
                        //                return arg.valueText + " ( " + arg.percentText + ")";
                        //            }
                        //        }
                        //    }]
                        //});

                        //$("#chartContainer").dxChart({
                        //    title: {
                        //        text: 'List of all Items Ordered by Departments'
                        //    },
                        //    tooltip: {
                        //        enabled: true
                        //    },
                        //    dataSource: chartdata,
                        //    //commonSeriesSettings: {
                        //    //    label: {
                        //    //        visible: true,
                        //    //        connector: {
                        //    //            visible: true
                        //    //        }
                        //    //    }
                        //    //},
                        //    series: {
                        //        argumentField: "CategoryName",
                        //        valueField: "QuantReq",
                        //        name: "Items Ordered",
                        //        type: "bar",

                        //    }
                        //});


                    }
                }

            }

            //--Normal chart Generator--//
            );



        });

    </script>
</asp:Content>
