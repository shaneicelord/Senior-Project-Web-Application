<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="SeniorProject.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CANS Form</title>
    <link href="Content/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="CANS" runat="server" method="post">
         <h1> CANS Assessment </h1>

        <hr />
    <div>
    <table class="center">
        <tr>
            <td>Enter your Therapist ID</td>
            <td><input type="text" name="userID" id="userID"/></td> 
        </tr>
        <tr>
            <td>Patient ID</td>
            <td><input type="text" name="patientID" id="patientID"/></td> 
        </tr>
        <tr>
                <td><h3>Life Domain Functioning</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><input type="text" name="1" id="1"/></td> 
        </tr>
        <tr>
            <td>Living Situation</td>
            <td><input type="text" name="2" id="2"/></td> 
        </tr>
        <tr>
            <td>Social Functioning</td>
            <td><input type="text" name="3" id="3"/></td> 
        </tr>
        <tr>
            <td>Recreational</td>
            <td><input type="text" name="4" id="4"/></td> 
        </tr>
        <tr>
            <td>Job Functioning</td>
            <td><input type="text" name="5" id="5"/></td> 
        </tr>
        <tr>
            <td>Developmental</td>
            <td><input type="text" name="6"  id="6"/></td> 
        </tr>
        <tr>
            <td>Legal</td>
            <td><input type="text" name="7" id="7"/></td> 
        </tr>
        <tr>
            <td>Medical</td>
            <td><input type="text" name="8" id="8"/></td> 
        </tr>
        <tr>
            <td>Physcial</td>
            <td><input type="text" name="9" id="9"/></td> 
        </tr>
        <tr>
            <td>Sexuality</td>
            <td><input type="text" name="10" id="10"/></td> 
        </tr>
        <tr>
            <td>Sleep</td>
            <td><input type="text" name="11" id="11"/></td> 
        </tr>
        <tr>
            <td>School Behavior</td>
            <td><input type="text" name="12" id="12"/></td> 
        </tr>
        <tr>
            <td>School Achievement</td>
            <td><input type="text" name="13" id="13"/></td> 
        </tr>
        <tr>
            <td>School Attendance</td>
            <td><input type="text" name="14"id="14"/></td> 
        </tr>
          <tr>
         <td><h3>Youth Strengths</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><input type="text"name="15" id="15"/></td> 
        </tr>
        <tr>
            <td>Interpersonal</td>
            <td><input type="text" name="16" id="16"/></td> 
        </tr>
        <tr>
            <td>Optimism</td>
            <td><input type="text" name="17" id="17"/></td> 
        </tr>
        <tr>
            <td>Educational</td>
            <td><input type="text" name="18" id="18"/></td> 
        </tr>
        <tr>
            <td>Vocational</td>
            <td><input type="text" name="19" id="19"/></td> 
        </tr>
        <tr>
            <td>Talents/Interests</td>
            <td><input type="text" name="20" id="20"/></td> 
        </tr>
        <tr>
            <td>Spiritual/Religious</td>
            <td><input type="text" name="21" id="21"/></td> 
        </tr>
        <tr>
            <td>Community Life</td>
            <td><input type="text" name="22" id="22"/></td> 
        </tr>
        <tr>
            <td>Relation Permanence</td>
            <td><input type="text" name="23" id="23"/></td> 
        </tr>
        <tr>
            <td>Resiliency</td>
            <td><input type="text" name="24" id="24"/></td> 
        </tr>
        <tr>
            <td>Resourcefulness</td>
            <td><input type="text" name="25" id="25"/></td> 
        </tr>
        <tr>
            <td><asp:Button ID="SubmitCANS" runat="server" OnClick="Insert" Text="Submit CANS" /></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
