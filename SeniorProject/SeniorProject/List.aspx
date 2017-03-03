<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="SeniorProject.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CANS</title>
    <link href="Content/CustomStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="View" runat="server">
       <h1> Past CANS </h1>

        <hr />
    <div>
    <table class="center">
    <tr>
        <td>Please enter the Patient ID: </td>
        <td><input type="text" id="patientID" /></td>
    </tr>
    <tr>
        <td>Please enter the date of the Assessment:</td>
        <td><input type="text" id="date" /></td>
    </tr>
    <tr>
        <td colspan="2" ><asp:Button ID="retrieveCANS" runat="server" OnClick="Retrieve" Text="Fetch CANS"/></td>
    </tr>
    <tr>
        <td>Showing CANS for patient with ID:</td>
        <td><input type="text" id="showingID"  runat="server"/></td>
    </tr>
    <tr>
        <td>CANS creation date:</td>
        <td><input type="text" id="showingDate" name="showingDate" runat="server"/></td>
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
         <td><h3>Youth Strengths</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><input type="text" id="15"/></td> 
        </tr>
        <tr>
            <td>Interpersonal</td>
            <td><input type="text" id="16"/></td> 
        </tr>
        <tr>
            <td>Optimism</td>
            <td><input type="text" id="17"/></td> 
        </tr>
        <tr>
            <td>Educational</td>
            <td><input type="text" id="18"/></td> 
        </tr>
        <tr>
            <td>Vocational</td>
            <td><input type="text" id="19"/></td> 
        </tr>
        <tr>
            <td>Talents/Interests</td>
            <td><input type="text" id="20"/></td> 
        </tr>
        <tr>
            <td>Spiritual/Religious</td>
            <td><input type="text" id="21"/></td> 
        </tr>
        <tr>
            <td>Community Life</td>
            <td><input type="text" id="22"/></td> 
        </tr>
        <tr>
            <td>Relation Permanence</td>
            <td><input type="text" id="23"/></td> 
        </tr>
        <tr>
            <td>Resiliency</td>
            <td><input type="text" id="24"/></td> 
        </tr>
        <tr>
            <td>Resourcefulness</td>
            <td><input type="text" id="25"/></td> 
        </tr>
        <tr>
        <td colspan="2"><asp:Button ID="UpdateCANS" runat="server"  Text="Update CANS"/><asp:Button ID="DeleteCANS" runat="server" Text="Delete CANS"/></td>
           
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
