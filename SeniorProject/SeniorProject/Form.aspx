<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="SeniorProject.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CANS Form</title>
    <link href="Content/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="CANS" runat="server">
    <div>
    <table>
        <tr>
            <td>Enter your Therapist ID</td>
            <td><input type="text" id="userID"/></td> 
        </tr>
        <tr>
            <td>Patient ID</td>
            <td><input type="text" id="patientID"/></td> 
        </tr>
        <tr>
                <td><h3>Life Domain Functioning</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><input type="text" id="1"/></td> 
        </tr>
        <tr>
            <td>Living Situation</td>
            <td><input type="text" id="2"/></td> 
        </tr>
        <tr>
            <td>Social Functioning</td>
            <td><input type="text" id="3"/></td> 
        </tr>
        <tr>
            <td>Recreational</td>
            <td><input type="text" id="4"/></td> 
        </tr>
        <tr>
            <td>Job Functioning</td>
            <td><input type="text" id="5"/></td> 
        </tr>
        <tr>
            <td>Developmental</td>
            <td><input type="text" id="6"/></td> 
        </tr>
        <tr>
            <td>Legal</td>
            <td><input type="text" id="7"/></td> 
        </tr>
        <tr>
            <td>Medical</td>
            <td><input type="text" id="8"/></td> 
        </tr>
        <tr>
            <td>Physcial</td>
            <td><input type="text" id="9"/></td> 
        </tr>
        <tr>
            <td>Sexuality</td>
            <td><input type="text" id="10"/></td> 
        </tr>
        <tr>
            <td>Sleep</td>
            <td><input type="text" id="11"/></td> 
        </tr>
        <tr>
            <td>School Behavior</td>
            <td><input type="text" id="12"/></td> 
        </tr>
        <tr>
            <td>School Achievement</td>
            <td><input type="text" id="13"/></td> 
        </tr>
        <tr>
            <td>School Attendance</td>
            <td><input type="text" id="14"/></td> 
        </tr>
        <tr>
            <td><asp:Button ID="SubmitCANS" runat="server" OnClick="Insert" Text="Submit CANS" /></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
