<%@ Page Title="PriceCalculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HHI_Website.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:0px 0px 0px 4px">
        <h2>Price Calculator</h2>
            <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="squareFeet">Square Feet</label>
                    <input type="number" class="form-control" id="squareFeet" placeholder="Square Feet">
                  </div>
                  <div class="form-group">
                    <label for="year">Year</label>
                    <input type="number" class="form-control" id="year" placeholder="Year Built">
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="radon">
                        <label class="form-check-label" for="radon">Radon</label>
                      </div>
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="leadBasedPaint">
                        <label class="form-check-label" for="leadBasedPaint">Lead Based Paint Test</label>
                      </div>
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="pool">
                        <label class="form-check-label" for="pool">Pool</label>
                      </div>
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="dtchBldg">
                        <label class="form-check-label" for="dtchBldg">Detached Building</label>
                      </div>
                    </div>
                    <div class="col-sm-6" id="dtchBldgRadioBtns" hidden="hidden">
                        <p style="color:azure">Select the option that best describes the detached building.</p>
                        <div>
                            <div class="row">
                                <input class="col-sm-2" type="radio" id="option1">
                                <label class="col-sm-10" for="option1"><1000 SQFT No Utilities</label>
                            </div>
                            <div class="row">
                                <input  class="col-sm-2"type="radio" id="option2">
                                <label  class="col-sm-10"for="option2">>1000 SQFT No Utilities</label>
                            </div>
                            <div class="row">
                                <input  class="col-sm-2"type="radio" id="option3">
                                <label  class="col-sm-10"for="option3"><1000 SQFT With Utilities</label>
                            </div>
                            <div class="row">
                                <input  class="col-sm-2"type="radio" id="option4">
                                <label  class="col-sm-10"for="option4">>1000 SQFT With Utilities</label>
                            </div>
                        </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-primary" onclick="FactorTotal()">Submit</button>
                </div>
            <div class="col-sm-1 text-size" style="padding-top:5%;">
                <p id="totalCost" style="font-size:50px"></p>
            </div>
        </div>
    </div>
    <script>
        $("#dtchBldg").on("change", function () {
            console.log('detached building checkbox changed');
            var checked = document.getElementById('dtchBldg').checked;
            if (checked) {
                document.getElementById('dtchBldgRadioBtns').hidden = false;
            }
            else {
                document.getElementById('dtchBldgRadioBtns').hidden = true;
                document.getElementById('option1').checked = false;
                document.getElementById('option2').checked = false;
                document.getElementById('option3').checked = false;
                document.getElementById('option4').checked = false;
            }
        });

        $("#option1").on("change", function () {
            console.log('radio button selected');
            document.getElementById('option2').checked = false;
            document.getElementById('option3').checked = false;
            document.getElementById('option4').checked = false;
        });
        $("#option2").on("change", function () {
            console.log('radio button selected');
            document.getElementById('option1').checked = false;
            document.getElementById('option3').checked = false;
            document.getElementById('option4').checked = false;
        });
        $("#option3").on("change", function () {
            console.log('radio button selected');
            document.getElementById('option2').checked = false;
            document.getElementById('option1').checked = false;
            document.getElementById('option4').checked = false;
        });
        $("#option4").on("change", function () {
            console.log('radio button selected');
            document.getElementById('option2').checked = false;
            document.getElementById('option3').checked = false;
            document.getElementById('option1').checked = false;
        });
    </script>
    <script>

        var radonPrice = 125;
        var leadPrice = 30;
        var poolPrice = 30;
        var dtch1Price = 50;
        var dtch2Price = 100;
        var dtch3Price = 100;
        var dtch4Price = 150;

        function FactorTotal() {
            var sqft = document.getElementById('squareFeet').value;
            var year = document.getElementById('year').value;

            var radon = document.getElementById('radon').checked;
            var lead = document.getElementById('leadBasedPaint').checked;
            var pool = document.getElementById('pool').checked;
            var dtchBldg = document.getElementById('dtchBldg').checked;
            var price = 315;
            var currentYear = new Date().getFullYear();
            var age = currentYear - year;
            var display = 0.00;
            
            while (sqft > 1500 && sqft < 5000) {
                price += 15;
                sqft -= 500;
            }

            if (sqft >= 4000) {
                price += 115;
            }
            if (sqft >= 5001) {
                price += 70;
            }
            while (sqft > 6000 && sqft <= 10000) {
                price += 50;
                sqft -= 1000;
            }

            if (age > 50 && age < 100) {
                price += 25;
            }
            else if (age > 100) {
                price += 75;
            }

            if (radon) {
                price += radonPrice;
            }
            if (lead) {
                price += leadPrice;
            }
            if (pool) {
                price += poolPrice;
            }
            if (dtchBldg) {
                var option1 = document.getElementById('option1').checked;
                var option2 = document.getElementById('option2').checked;
                var option3 = document.getElementById('option3').checked;
                var option4 = document.getElementById('option4').checked;

                if (option1) {
                    price += dtch1Price;
                }
                else if (option2) {
                        price += dtch2Price;
                }
                else if (option3) {
                    price += dtch3Price;
                }
                else if (option4) {
                    price += dtch4Price;
                }
            }
            if (sqft > 10000) {

                display = "Wow, that's a big house! Call 256-652-7448 to discuss pricing."
                console.log('call for quote');
            }
            else {
                display = '$' + price.toFixed(2);
            }
            document.getElementById('totalCost').innerHTML = display;

        }
    </script>
</asp:Content>


