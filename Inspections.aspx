<%@ Page Title="Inspections" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HHI_Website.Inspections" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-size center-text">
        <h1 style="text-shadow:2px 1px #808080">Residential Inspection</h1>
        <p>We strive to perform all inspections in substantial compliance with the Standards of Practice as set 
            forth by the Alabama Building Commission for a STANDARD RESIDENTIAL HOME INSPECTION as well as ASHI 
            (ASHI Standards of Practice). In addition, every residential inspection will include thermal imaging 
            review, rodent & pest evaluation and landscaping evaluation.</p>
        <h3>Included With Every Inspection:</h3>
        <h4>Thermal Imaging</h4>
        <div class="box">
            <div class="thermal-images hidden-sm hidden-xs">
                <img src="Images/flir-moistureinwall.jpg" alt="Moisture in wall" class="image-size"/>
           </div>
            <div class="thermal-images hidden-sm hidden-xs">
                <img src="Images/flir-moistureinceiling.jpg" alt="Moisture in ceiling" class="image-size"/>
            </div>
            <div class="thermal-images">
                <img src="Images/flir-electricpanel.jpg" alt="Electric Panel" class="image-size"/>
            </div>
            <div class="thermal-images">
                <img src="Images/flir-oven.jpg" alt="Oven" class="image-size"/>        
            </div>
        </div>
        <div>
            <p>Infrared camera used for review of electrical system, plumbing components, roof leaks,
                appliances and more.</p>
        </div>
        <div class="row">
            <div class="col-sm-4 box">
                <h4>Exterior Evaluation</h4>
                <img src="Images/camera-pole(1).jpg" alt="Rear of Home" class="image-size"/>
                <p>Landscaping • Driveways • Walkways • Siding Materials • Roof & Gutters • Windows • Doors • Porches • Decks • Etc.</p>
            </div>
            <div class="col-sm-4 box">
                <h4>Plumbing Evaluation</h4>
                <img src="Images/tanklesswaterheater.jpg" alt="Tankless Water Heater" class="image-size"/>
                <p>Sinks & Faucets • Tubs & Showers • Toilets • Hose Bibbs • Gas Storage Tanks & Lines • Any visible piping and valves</p>
            </div>
            <div class="col-sm-4 box">
                <h4>Electrical Evaluation</h4>
                <img src="Images/electrical.jpg" alt="Electrical" class="image-size" />
                <p>Exterior service feed • Electric panel cover removed for evaluation • All accessible outlets • Lights and ceiling fans</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 box">
                <h4>Interior Evaluation</h4>
                <img src="Images/interior.jpg" alt="Interior" class="image-size"/>
                <p>Floors • Walls • Ceilings • Windows • Doors • Fixtures • Cabinets & Countertops • Etc.</p>
            </div>
            <div class="col-sm-4 box">
                <h4>Structural Evaluation</h4>
                <img src="Images/attic.jpg" alt="Attic" class="image-size"/>
                <p>Foundation • Basement/Crawlspace • Attic • Any visible framing • Insulation</p>
            </div>
            <div class="col-sm-4 box">
                <h4>Appliances Evaluation</h4>
                <img src="Images/oven.jpg" alt="Oven" class="image-size" />
                <p>HVAC • Water Heater • Oven & Stove • Refrigerator & Freezer • Dishwasher • Microwave • Gas Logs</p>
            </div>
        </div>
        <hr />
        <div>
            <h1>Additional Services</h1>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>RE-INSPECTIONS</h2>
                <h3>Already had your inspection?</h3>
                <p>Schedule your re-inspection to ensure all requested repairs were adequately completed.</p>
            </div>
            <div class="col-md-4">
                <h2>PRE-LISTING INSPECTIONS</h2>
                <h3>Selling your home?</h3>
                <p>Have your home inspected before it goes on the market and find all
                    those potential sale delaying issues before you're under contract.</p>
            </div>
            <div class="col-md-4">
                <h2>11th MONTH INSPECTION</h2>
                <h3>Before your warranty expires</h3>
                <p>Don't let your home warranty expire without getting the most out of it.
                    Schedule your inspection before it's too late.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h2>COMMERCIAL INSPECTIONS</h2>
                <h3>We inspect more than just homes</h3>
                <p>Onsite quotes may be required for commercial building inspections.
                    Call or email for more information.</p>
            </div>
            <div class="col-md-6">
                <h2>NEW CONSTRUCTION</h2>
                <h3>New homes need inspections too!</h3>
                <p>No house is too old or too new to qualify for a home inspection.
                    Make sure your new home meets your expectations. </p>
            </div>
        </div>
     </div>
</asp:Content>
