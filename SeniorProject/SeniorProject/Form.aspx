<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="SeniorProject.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CANS Form</title>
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
            <td><input type="text" name="1" id="1" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td> 
        </tr>
        <tr>
            <td>Living Situation</td>
            <td><input type="text" name="2" id="2" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Social Functioning</td>
            <td><input type="text" name="3" id="3" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Recreational</td>
            <td><input type="text" name="4" id="4" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Job Functioning</td>
            <td><input type="text" name="5" id="5" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Developmental</td>
            <td><input type="text" name="6"  id="6" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Legal</td>
            <td><input type="text" name="7" id="7" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Medical</td>
            <td><input type="text" name="8" id="8" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Physcial</td>
            <td><input type="text" name="9" id="9" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Sexuality</td>
            <td><input type="text" name="10" id="10" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Sleep</td>
            <td><input type="text" name="11" id="11" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>School Behavior</td>
            <td><input type="text" name="12" id="12" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>School Achievement</td>
            <td><input type="text" name="13" id="13" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>School Attendance</td>
            <td><input type="text" name="14"id="14" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
          <tr>
         <td><h3>Youth Strengths</h3></td>
        </tr>
        <tr>
            <td>Family</td>
            <td><input type="text"name="15" id="15" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Interpersonal</td>
            <td><input type="text" name="16" id="16" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Optimism</td>
            <td><input type="text" name="17" id="17" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Educational</td>
            <td><input type="text" name="18" id="18" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Vocational</td>
            <td><input type="text" name="19" id="19" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Talents/Interests</td>
            <td><input type="text" name="20" id="20" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Spiritual/Religious</td>
            <td><input type="text" name="21" id="21" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Community Life</td>
            <td><input type="text" name="22" id="22" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Relation Permanence</td>
            <td><input type="text" name="23" id="23" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Resiliency</td>
            <td><input type="text" name="24" id="24" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Resourcefulness</td>
            <td><input type="text" name="25" id="25" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Language</td>
            <td><input type="text" name="26" id="26" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Identity</td>
            <td><input type="text" name="27" id="27" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Ritual</td>
            <td><input type="text" name="28" id="28" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Cultural Stress</td>
            <td><input type="text" name="29" id="29" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Supervision</td>
            <td><input type="text" name="30" id="30" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Involvement</td>
            <td><input type="text" name="31"  id="31" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Knowledge</td>
            <td><input type="text" name="32" id="32" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Organization</td>
            <td><input type="text" name="33" id="33" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Social Resources</td>
            <td><input type="text" name="34" id="34" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Residential Stability</td>
            <td><input type="text" name="35" id="35" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Physical</td>
            <td><input type="text" name="36" id="36" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Mental Health</td>
            <td><input type="text" name="37" id="37" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Substance Abuse</td>
            <td><input type="text" name="38" id="38" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Developmental</td>
            <td><input type="text" name="39"id="39" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Safety</td>
            <td><input type="text"name="40" id="40" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Psychosis</td>
            <td><input type="text" name="41" id="41" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Impulse/Hyper</td>
            <td><input type="text" name="42" id="42" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Depression</td>
            <td><input type="text" name="43" id="43" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Anxiety</td>
            <td><input type="text" name="44" id="44" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Oppositional</td>
            <td><input type="text" name="45" id="45" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Conduct</td>
            <td><input type="text" name="46" id="46" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Adjustment to Trauma</td>
            <td><input type="text" name="47" id="47" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Anger Control</td>
            <td><input type="text" name="48" id="48" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Substance Use</td>
            <td><input type="text" name="49" id="49" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Suicide Risk</td>
            <td><input type="text" name="50" id="50" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Self Mutilation</td>
            <td><input type="text" name="51" id="51" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Other Self Harm</td>
            <td><input type="text" name="52" id="52" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed" /></td>
        </tr>
        <tr>
            <td>Sexual Aggression</td>
            <td><input type="text" name="53" id="53" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Runaway</td>
            <td><input type="text" name="54" id="54" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Delinquency</td>
            <td><input type="text" name="55" id="55" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Fire Setting</td>
            <td><input type="text" name="56" id="56" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td>Intentional Misbehavior</td>
            <td><input type="text" name="57" id="57" required pattern="([0-3])|(NA)" title="Only numbers [0, 1, 2, 3] or NA allowed"/></td> 
        </tr>
        <tr>
            <td><asp:Button ID="SubmitCANS" runat="server" OnClick="Insert" Text="Submit CANS" /></td>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
