﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Department/DepRep.Master" AutoEventWireup="true" CodeBehind="ViewCollectionDetails_Rep.aspx.cs" Inherits="ADSMS.Presentation.Department.ViewCollectionDetails_Rep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="tot_content" visible="false" runat="server">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                                       <div id="map_canvas" style="width:595px;height:400px"; class="container">
                           </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div id="template" class="container" visible="false" runat="server">

        <h1 id="tabs" class="page-header"> Department Stationery: Collection Details</h1>
        <div id="disb_Details" runat="server">
            <div class="panel panel-primary">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#"><asp:Label ID="lblDName" runat="server" Text="Collection Point Detail" />
                    </a>
                </h4>
            </div>
            <div class="panel-collapse collapse in">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="bs-component">
                                <asp:GridView ID="gvRep" runat="server"  CssClass="table table-striped table-hover" AutoGenerateColumns="false" >
                                    <Columns>
                                        <asp:TemplateField HeaderText="No" HeaderStyle-CssClass="danger">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                        <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="DisbItemID" DataField="DisbItemID" />
                                        <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="ItemDescription" DataField="ItemDescription" />
                                        <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="Request Stationery" DataField="DisbItemQuantReq" />
                                        <asp:BoundField HeaderStyle-CssClass="danger" HeaderText="Receive Stationery" DataField="DisbItemQuantDelivered" />
                                    </Columns>
                                </asp:GridView>
                                <div class="span4">
                                    
                                    <b>
                                        <asp:Label ID="lblTime" runat="server" /><br /><br />
                                        <asp:Label ID="lblDate" runat="server" /><br /><br />
                                        <asp:Label ID="lblAdd" Visible="false" runat="server" Text="Collection Point Address : "/>
                                        <asp:Label ID="lblAddress" Visible="false" runat="server" /><br />
                                        
                                    </b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer" runat="server" visible="false" id="divmap">
                <%--<button type="button" class="btn-sm btn-success" id="btn_ViewCP_{{DepID}}" data-cpid="{{DepID}}">View Collection Point Details</button>
                <button type="button" class="btn-sm btn-success col-sm-offset-7" id="btn_Confirm_{{DepDisID}}" data-depdibid="{{DepDisID}}">Confirm Quantity</button>--%>
                
                <button type="button" class="btn-sm btn-success" id="btn_ViewCP">View Collection Point</button>
                <asp:Button ID="btnConfirm" runat="server" class="btn-sm btn-success col-sm-offset-7" Visible="false" Text="Confirm Stationery Collection" OnClick="btnConfirm_Click" />
            </div>
        </div>
        </div>

    </div>
        </div>
    <div id="noContent" class="container" runat="server">
        <div class="jumbotron">
    <h1> Currently No Stationery Items need to be collected</h1>
    <p> This page will be updated when the Stationery is ready to Disburse Items</p>
</div>

    </div>

    <script>
        $(function () {
            $("#btn_ViewCP").click(function () {
                loadmap();
                alert("Google Map Loading");
            });

            function loadmap() {
                var address = $("#<%=lblAddress.ClientID%>").html();

                //---Loading Map--- Data---//
                $('#myModal').modal('show');
                var geocoder;
                var map;
                geocoder = new google.maps.Geocoder();
                var latlng = new google.maps.LatLng(-34.397, 150.644);
                var myOptions = {
                    zoom: 50,
                    center: latlng,
                    mapTypeControl: true,
                    mapTypeControlOptions: { style: google.maps.MapTypeControlStyle.DROPDOWN_MENU },
                    navigationControl: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var mymap = $("#map_canvas")[0];
                map = new google.maps.Map(mymap, myOptions);
                if (geocoder) {

                    google.maps.event.trigger(mymap, 'resize');
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
            };
        });
    </script>

</asp:Content>
