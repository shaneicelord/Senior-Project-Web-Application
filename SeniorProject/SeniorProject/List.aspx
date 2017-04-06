<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="SeniorProject.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CANS</title>
      <link href="Content/CustomStyle.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
      <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
    <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/">Home</a></li>
                </ul>
            </div>
            </div>
        </div>
    <form id="View" runat="server">
       <h1> Past CANS </h1>

        <hr />
    <div>
    <table class="center">
    <tr>
        <td>Please enter the Patient ID: </td>
        <td><input type="text" id="patientID" name="patientID"/></td>
    </tr>
    <tr>
        <td>Please enter the date of the Assessment:</td>
        <td><input type="text" id="date" name="date" /></td>
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
            <td><asp:TextBox id="Q1"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Living Situation</td>
            <td><asp:TextBox id="Q2" runat="server"/></td> 
        </tr>
        <tr>
            <td>Social Functioning</td>
            <td><asp:TextBox id="Q3"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Recreational</td>
            <td><asp:TextBox id="Q4"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Job Functioning</td>
            <td><asp:TextBox id="Q5"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Developmental</td>
            <td><asp:TextBox id="Q6"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Legal</td>
            <td><asp:TextBox id="Q7"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Medical</td>
            <td><asp:TextBox id="Q8"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Physcial</td>
            <td><asp:TextBox id="Q9"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Sexuality</td>
            <td><asp:TextBox id="Q10"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Sleep</td>
            <td><asp:TextBox id="Q11"  runat="server"/></td> 
        </tr>
        <tr>
            <td>School Behavior</td>
            <td><asp:TextBox id="Q12"  runat="server"/></td> 
        </tr>
        <tr>
            <td>School Achievement</td>
            <td><asp:TextBox id="Q13"  runat="server"/></td> 
        </tr>
        <tr>
            <td>School Attendance</td>
            <td><asp:TextBox id="Q14"  runat="server"/></td> 
        </tr>
        <tr>
         <td><h3>Youth Strengths</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><asp:TextBox id="Q15"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Interpersonal</td>
            <td><asp:TextBox id="Q16"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Optimism</td>
            <td><asp:TextBox id="Q17"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Educational</td>
            <td><asp:TextBox id="Q18"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Vocational</td>
            <td><asp:TextBox id="Q19"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Talents/Interests</td>
            <td><asp:TextBox id="Q20"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Spiritual/Religious</td>
            <td><asp:TextBox id="Q21"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Community Life</td>
            <td><asp:TextBox id="Q22"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Relation Permanence</td>
            <td><asp:TextBox id="Q23"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Resiliency</td>
            <td><asp:TextBox id="Q24"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Resourcefulness</td>
            <td><asp:TextBox id="Q25"  runat="server"/></td> 
        </tr>
        <tr>
        <td colspan="2"><asp:Button ID="UpdateCANS" runat="server" OnClick="Update" Text="Update CANS"/></td>
           
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
