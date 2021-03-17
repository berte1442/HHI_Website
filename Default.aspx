<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HHI_Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-size">
<%--        <h1 style="text-shadow:2px 1px #808080; /*padding-top:2%*/">Haines Home Inspections</h1>--%>
        <div class="row" style="padding-bottom: 5%; padding-top: 5%; /*padding-top:5%*/">
            <div class="col-sm-push-6 col-sm-6">
                <div class=" col-sm-offset-6">
                    <img class="image-size" src="Images/HHI_Logo_Full_Size.jpg" alt="HHI LOGO" style="width:250px; height:200px; opacity: 0.8"/>
                </div>
                <div>
                    <p></p>
                </div>
            </div>
            <div class=" col-sm-pull-6 col-sm-6" style="padding:2%">
                <p style="font-size:40px; font-weight:bold; text-align:start">Haines Home Inspections</p>
                <p style="font-size:25px; text-align:start">Haines Home Inspections Provides Quality Residential and Commercial Inspections Across North and North Central Alabama. 
                    Radon Testing and other services also available. </p>
                <a class="btn btn-primary button-shadow" runat="server" href="~/Inspections">Learn more &raquo;</a>
            </div>
        </div>

<%--        <div class="row" style="padding-top:5%">
            <div class="col-xs-6 col-sm-3 box">
                <img src="Images/camera-pole(1).jpg" alt="camera-pole" class="image-size" />
            </div>
            <div class="col-xs-6 col-sm-3 box">
                <img src="Images/chimney-camera-pole(2).jpg" alt="chimney top damage" class="image-size" />
            </div>
            <div class="col-sm-3 box hidden-xs">
                <img src="Images/darrow-ground-level-text.jpg" alt="tall house" class="image-size" />
            </div>
            <div class="col-sm-3 box hidden-xs">
                <img src="Images/darrow-roof-damage.jpg" alt="damage on roof" class="image-size" />
            </div>
        </div>--%>

        <div class="row" style="padding-top:5%">
            <div class="col-md-4 center-text">
                <h2>Pricing</h2>
                <p>
                    Call 2566527448 or email <a href="mailto:haineshomeinspections@gmail.com" style="color:azure;">HainesHomeInspections@gmail.com</a>
                    to receive a free quote or try out the price calculator.
                </p>
                <p>
                     <a class="btn btn-primary button-shadow" runat="server" href="~/PriceCalculator" >Price Calculator &raquo;</a>
                </p>
            </div>
            <div class="col-md-4 center-text">
                <h2>Scheduling</h2>
                <p>
                    Ready to schedule? Call (256)652-7448 to check availability and schedule or use the online scheduler
                     by following the link below.
                </p>
                <p>
                    <a class="btn btn-warning button-shadow" href="https://www.spectora.com/home-inspectors/haines-home-inspections-llc/schedule?" target="_blank">Schedule Now &raquo;</a>
                </p>
            </div>
            <div class="col-md-4 center-text">
                <h2>Why HHI?</h2>
                <p>
                    We strive to provide quality inspections for all our customers, but don't just take our word for it.
                     Take a look at our sample reports and see for yourself.
                </p>
                <p>
                    <a class="btn btn-success button-shadow" href="https://www.spectora.com/home-inspectors/haines-home-inspections-llc/sample_reports" target="_blank">Sample Reports &raquo;</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>