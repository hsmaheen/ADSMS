﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Store/Store.Master" AutoEventWireup="true" CodeBehind="DisbursementList_Final.aspx.cs" Inherits="ADSMS.Presentation.Store.DisbursementList_Final" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="totalContent" class="container">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="myModalLabel">Collection Point Details </h2>
                </div>

                <div class="container">
                    <div id="CP_Details">
                    </div>


                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="btn_Map">View Map</button>
                </div>

                <div class="container-fluid">

                </div>
            </div>
                <div id="map_canvas" style="width:600px;height:400px"; class="container">
    </div>
            

        </div>
    </div>
        <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title" id="H1">Error </h2>
                </div>

                <div class="container">
                    <div id="errmsg" class="container">
                    </div>


                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
    </div>
            

        </div>
    </div>



    <div class="container">

        <h1 id="tabs" class="page-header">Disbursement Details</h1>

        <div id="disb_Details">
        </div>
        <asp:Button CssClass="btn-primary btn-sm" ID="btn_SendEmail" OnClick="btn_SendEmail_Click" runat="server" Text="Notify All Departments" />

    </div>
        </div>


    <script>
        $(function () {

            var lengt = 0;
            $.ajax({
                type: "POST",
                url: "DisbursementList_Final.aspx/GetDepartmentForDisb",
                contentType: "application/json",
                data: {},
                dataType: "json"
            }).success(success);




            function success(data) {
                var dep = data.d;
                lengt = dep.length;

                if (lengt != 0) {
                    includes("disblFinal_Tmpl", dep, "#disb_Details");

                }
                else {
                    includes("done_Tmpl", { title: "All Items Have Been Recieved", message: "Please check your Disbursement History" }, "#totalContent");

                }





                //making sure only numbers are entered
                $('.txt_Number').keydown(function (e) {
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




                /// Clicking on View Collection Point

                $("button[id^='btn_ViewCP_']").click(function () {
                    var cpid = $(this).data("cpid");
                    var DepAddress;
                    //calling the webmethod to get collection point details
                    $.ajax({
                        type: "POST",
                        url: "DisbursementList_Final.aspx/getCollectionPointDetails",
                        contentType: "application/json",
                        data: JSON.stringify({ DepID: cpid }),
                        dataType: "json"
                    }).success(process);

                    //End of calling the webmethod to get collection point details

                    function process(data) {
                        var details = data.d;
                        //console.log(details);
                        var DepRepName = details[0].EmployeeName;
                        var CPName = details[0].CollectionPointName;
                        var DepName = details[0].DepName;
                        DepAddress = details[0].CollectionPointAddress;
                        var DepRepContact = details[0].EmployeeContact;

                        includes("CPDeatails_Tmpl", details[0], "#CP_Details");
                        //---showing the modal window----//
                        $('#myModal').modal('show');
                        $("#map_canvas").hide();


                        $("#btn_Map").click(loadmap);

                    }
                    function loadmap() {


                        //---Loading Map--- Data---//
                        var geocoder;
                        var map;
                        var address = DepAddress;
                        geocoder = new google.maps.Geocoder();
                        var latlng = new google.maps.LatLng(-34.397, 150.644);
                        var myOptions = {
                            zoom: 75,
                            center: latlng,
                            mapTypeControl: true,
                            mapTypeControlOptions: { style: google.maps.MapTypeControlStyle.DROPDOWN_MENU },
                            navigationControl: true,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        var mymap = $("#map_canvas")[0];
                        map = new google.maps.Map(mymap, myOptions);
                        if (geocoder) {
                            geocoder.geocode({ 'address': address }, function (results, status) {
                                if (status == google.maps.GeocoderStatus.OK) {
                                    if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
                                        map.setCenter(results[0].geometry.location);

                                        var infowindow = new google.maps.InfoWindow(
                                            {
                                                content: '<b>' + address + '</b>',
                                                size: new google.maps.Size(150, 50)
                                            });

                                        var marker = new google.maps.Marker({
                                            position: results[0].geometry.location,
                                            map: map,
                                            title: address
                                        });
                                        google.maps.event.addListener(marker, 'click', function () {
                                            infowindow.open(map, marker);
                                        });

                                    } else {
                                        alert("No results found");
                                    }
                                } else {
                                    alert("Geocode was not successful for the following reason: " + status);
                                }
                            });
                        }
                        $("#map_canvas").show();



                        //---End of Loading Map--- Data---//









                    }







                });





            }
        });

    </script>


</asp:Content>
