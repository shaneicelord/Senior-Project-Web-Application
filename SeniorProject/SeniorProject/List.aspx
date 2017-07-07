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
                    <li><a href="/CANSForm">CANS</a></li>
                    <li><a href="/Graph/Graphs">Graphs</a></li>
                    <li><a href="/Patients">Patients</a></li>
                    <li><a href="/AdminFunctions">Admin</a></li>
                </ul>
            </div>
            </div>
        </div>
    <form id="View" runat="server">
       <h1 style ="text-align: center"> Past CANS </h1>

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

        <!--

        <tr>
            <td>Language</td>
            <td><asp:TextBox id="Q26"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Identity</td>
            <td><asp:TextBox id="Q27"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Ritual</td>
            <td><asp:TextBox id="Q28"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Cultural Stress</td>
            <td><asp:TextBox id="Q29"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Supervision</td>
            <td><asp:TextBox id="Q30"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Involvement</td>
            <td><asp:TextBox id="Q31"  runat="server"/></td> 
        </tr>
            <tr>
            <td>Knowledge</td>
            <td><asp:TextBox id="Q32"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Organization</td>
            <td><asp:TextBox id="Q33"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Social Resources</td>
            <td><asp:TextBox id="Q34"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Residential Stability</td>
            <td><asp:TextBox id="Q35"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Physical</td>
            <td><asp:TextBox id="Q36"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Mental Health</td>
            <td><asp:TextBox id="Q37"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Substance Abuse</td>
            <td><asp:TextBox id="Q38"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Developmental</td>
            <td><asp:TextBox id="Q39"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Safety</td>
            <td><asp:TextBox id="Q40"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Psychosis</td>
            <td><asp:TextBox id="Q41"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Impulse/Hyper</td>
            <td><asp:TextBox id="Q42"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Depression</td>
            <td><asp:TextBox id="Q43"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Anxiety</td>
            <td><asp:TextBox id="Q44"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Oppositional</td>
            <td><asp:TextBox id="Q45"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Conduct</td>
            <td><asp:TextBox id="Q46"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Adjustment to Trauma</td>
            <td><asp:TextBox id="Q47"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Anger Control</td>
            <td><asp:TextBox id="Q48"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Substance Use</td>
            <td><asp:TextBox id="Q49"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Suicide Risk</td>
            <td><asp:TextBox id="Q50"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Self Mutilation</td>
            <td><asp:TextBox id="Q51"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Other Self Harm</td>
            <td><asp:TextBox id="Q52"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Danger to Others</td>
            <td><asp:TextBox id="Q53"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Sexual Aggression</td>
            <td><asp:TextBox id="Q54"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Runaway</td>
            <td><asp:TextBox id="Q55"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Delinquency</td>
            <td><asp:TextBox id="Q56"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Judgement</td>
            <td><asp:TextBox id="Q57"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Fire setting</td>
            <td><asp:TextBox id="Q58"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Intentional Misbehavior</td>
            <td><asp:TextBox id="Q59"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Cognitive</td>
            <td><asp:TextBox id="Q60"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Autism Spectrum</td>
            <td><asp:TextBox id="Q61"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Communication</td>
            <td><asp:TextBox id="Q62"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Self Care/Daily Living</td>
            <td><asp:TextBox id="Q63"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Supervision</td>
            <td><asp:TextBox id="Q64"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Involvement</td>
            <td><asp:TextBox id="Q65"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Knowledge</td>
            <td><asp:TextBox id="Q66"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Organization</td>
            <td><asp:TextBox id="Q67"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Social Resources</td>
            <td><asp:TextBox id="Q68"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Residential Stability</td>
            <td><asp:TextBox id="Q69"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Physical</td>
            <td><asp:TextBox id="Q70"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Mental Health</td>
            <td><asp:TextBox id="Q71"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Substance Abuse</td>
            <td><asp:TextBox id="Q72"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Developmental</td>
            <td><asp:TextBox id="Q73"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Safety</td>
            <td><asp:TextBox id="Q74"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Sexual Abuse</td>
            <td><asp:TextBox id="Q75"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Physical Abuse</td>
            <td><asp:TextBox id="Q76"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Neglect</td>
            <td><asp:TextBox id="Q77"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Emotional Abuse</td>
            <td><asp:TextBox id="Q78"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Medical Trauma</td>
            <td><asp:TextBox id="Q79"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Natural Disaster</td>
            <td><asp:TextBox id="Q80"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Witness to Family Violence</td>
            <td><asp:TextBox id="Q81"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Witness to Community Violence</td>
            <td><asp:TextBox id="Q82"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Witness/Victim - Criminal Acts</td>
            <td><asp:TextBox id="Q83"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Other (specify)</td>
            <td><asp:TextBox id="Q84"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Emotional closeness to perpetrator</td>
            <td><asp:TextBox id="Q85"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Frequency</td>
            <td><asp:TextBox id="Q86"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Duration</td>
            <td><asp:TextBox id="Q87"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Force</td>
            <td><asp:TextBox id="Q88"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Reaction to Disclosure</td>
            <td><asp:TextBox id="Q89"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Affect Regulation</td>
            <td><asp:TextBox id="Q90"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Intrusions</td>
            <td><asp:TextBox id="Q91"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Attachment</td>
            <td><asp:TextBox id="Q92"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Dissociation</td>
            <td><asp:TextBox id="Q93"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Severity of Use</td>
            <td><asp:TextBox id="Q94"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Duration of Use</td>
            <td><asp:TextBox id="Q95"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Stage of Recovery</td>
            <td><asp:TextBox id="Q96"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Peer Influences</td>
            <td><asp:TextBox id="Q97"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Parental Influences</td>
            <td><asp:TextBox id="Q98"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Environmental Influences</td>
            <td><asp:TextBox id="Q99"  runat="server"/></td> 
        </tr>
        <tr>
            <td>History of Physical Abuse</td>
            <td><asp:TextBox id="Q100"  runat="server"/></td> 
        </tr>
        <tr>
            <td>History of Violence</td>
            <td><asp:TextBox id="Q101"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Witness to Domestic Violence</td>
            <td><asp:TextBox id="Q102"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Witness to Environmental Violence</td>
            <td><asp:TextBox id="Q103"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Frustration Management</td>
            <td><asp:TextBox id="Q104"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Hostility</td>
            <td><asp:TextBox id="Q105"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Paranoid Thinking</td>
            <td><asp:TextBox id="Q106"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Secondary Gains from Anger</td>
            <td><asp:TextBox id="Q107"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Violent Thinking</td>
            <td><asp:TextBox id="Q108"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Aware of violence potential</td>
            <td><asp:TextBox id="Q109"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Response to Consequences</td>
            <td><asp:TextBox id="Q110"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Commitment to Self Control</td>
            <td><asp:TextBox id="Q111"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Treatment of Involvment</td>
            <td><asp:TextBox id="Q112"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Relationship</td>
            <td><asp:TextBox id="Q113"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Physical Force/Threat</td>
            <td><asp:TextBox id="Q114"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><asp:TextBox id="Q115"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Age Differential</td>
            <td><asp:TextBox id="Q116"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Type of Sex Act</td>
            <td><asp:TextBox id="Q117"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Response to Accusation</td>
            <td><asp:TextBox id="Q118"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Temporal Consistency</td>
            <td><asp:TextBox id="Q119"  runat="server"/></td> 
        </tr>
        <tr>
            <td>History of Sexual Behavior</td>
            <td><asp:TextBox id="Q120"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Severity of Sexual Abuse</td>
            <td><asp:TextBox id="Q121"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Prior Treatment</td>
            <td><asp:TextBox id="Q122"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Frequency of Running</td>
            <td><asp:TextBox id="Q123"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Consistency of Destination</td>
            <td><asp:TextBox id="Q124"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><asp:TextBox id="Q125"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Safety of Destination</td>
            <td><asp:TextBox id="Q126"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Involvment in Illegal Acts</td>
            <td><asp:TextBox id="Q127"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Likelyhood of Return on Own</td>
            <td><asp:TextBox id="Q128"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Involvement of Others</td>
            <td><asp:TextBox id="Q129"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Realistic Expectations</td>
            <td><asp:TextBox id="Q130"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Seriousness</td>
            <td><asp:TextBox id="Q131"  runat="server"/></td> 
        </tr>
        <tr>
            <td>History</td>
            <td><asp:TextBox id="Q132"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Arrests</td>
            <td><asp:TextBox id="Q133"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><asp:TextBox id="Q134"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Community Safety</td>
            <td><asp:TextBox id="Q135"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Legal Compliance</td>
            <td><asp:TextBox id="Q136"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Peer Influences</td>
            <td><asp:TextBox id="Q137"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Parental Influences</td>
            <td><asp:TextBox id="Q138"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Environmental Influences</td>
            <td><asp:TextBox id="Q139"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Seriousness</td>
            <td><asp:TextBox id="Q140"  runat="server"/></td> 
        </tr>
        <tr>
            <td>History</td>
            <td><asp:TextBox id="Q141"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><asp:TextBox id="Q142"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Use of Accelerants</td>
            <td><asp:TextBox id="Q143"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Intention to Harm</td>
            <td><asp:TextBox id="Q144"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Community Safety</td>
            <td><asp:TextBox id="Q145"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Response to Accusation</td>
            <td><asp:TextBox id="Q146"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Remorse</td>
            <td><asp:TextBox id="Q147"  runat="server"/></td> 
        </tr>
        <tr>
            <td>Likelyhood of Future Fires</td>
            <td><asp:TextBox id="Q148"  runat="server"/></td> 
        </tr>
        
        -->

        <tr>
        <td colspan="2"><asp:Button ID="UpdateCANS" runat="server" OnClick="Update" Text="Update CANS"/></td>
           
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
