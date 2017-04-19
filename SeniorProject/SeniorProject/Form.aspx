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
                <td><h3>Acculturation</h3></td>
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
                <td><h3>Permanency Plan Caregiver Strengths and Needs</h3></td>
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
                <td><h3>Youth Behavioral / Emotional Needs</h3></td>
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
                <td><h3>Youth Risk Behaviors</h3></td>
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
         <td><h2><center>Modules</center></h2></td>
        </tr>
        <tr>
                <td><h3>DD - Developmental Needs</h3></td>
        </tr>
         <tr>
            <td>Cognitive</td>
            <td><input type="text" name="58" id="58" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Autism Spectrum</td>
            <td><input type="text" name="59"  id="59" pattern="([0-3])"/></td>
        </tr>
        <!--<tr>
            <td>Communication</td>
            <td><input type="text" name="60" id="60" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Self Care/Daily Living</td>
            <td><input type="text" name="61" id="61" pattern="([0-3])"/></td>
        </tr>
        <tr>
                <td><h3>Current Caregiver</h3></td>
        </tr>
        <tr>
            <td>Supervision</td>
            <td><input type="text" name="62" id="62" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Involvement</td>
            <td><input type="text" name="63" id="63" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Knowledge</td>
            <td><input type="text" name="64" id="64" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Organization</td>
            <td><input type="text" name="65" id="65" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Social Resources</td>
            <td><input type="text" name="66" id="66" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Residential Stability</td>
            <td><input type="text" name="67"id="67" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Physical</td>
            <td><input type="text"name="68" id="68" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Mental Health</td>
            <td><input type="text" name="69" id="69" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Substance Abuse</td>
            <td><input type="text" name="70" id="70" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Developmental</td>
            <td><input type="text" name="71" id="71" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Safety</td>
            <td><input type="text" name="72" id="72" pattern="([0-3])"/></td>
        </tr>
             <tr>
                <td><h3>Trauma (Characteristics of trauma experience)</h3></td>
        </tr>
        <tr>
            <td>Sexual Abuse</td>
            <td><input type="text" name="73" id="73" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Physical Abuse</td>
            <td><input type="text" name="74" id="74" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Neglect</td>
            <td><input type="text" name="75" id="75" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Emotional Abuse</td>
            <td><input type="text" name="76" id="76" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Medical Trauma</td>
            <td><input type="text" name="77" id="77" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Natural Disaster</td>
            <td><input type="text" name="78" id="78" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Witness to Family Violence</td>
            <td><input type="text" name="79" id="79" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Witness to Community Violence</td>
            <td><input type="text" name="80" id="80" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Witness/Victim - Criminal Acts</td>
            <td><input type="text" name="81" id="81" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Other (specify)</td>
            <td><input type="text" name="82" id="82" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Emotional Closeness to Perpetrator</td>
            <td><input type="text" name="83" id="83" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Frequency</td>
            <td><input type="text" name="84" id="84" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Duration</td>
            <td><input type="text" name="85" id="85" pattern="([0-3])"/></td> 
        </tr>
         <tr>
            <td>Force</td>
            <td><input type="text" name="86" id="86" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Reaction to Disclosure</td>
            <td><input type="text" name="87"  id="87" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Affect Regulation</td>
            <td><input type="text" name="88" id="88" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Intrusions</td>
            <td><input type="text" name="89" id="89" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Attachment</td>
            <td><input type="text" name="90" id="90" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Dissociation</td>
            <td><input type="text" name="91" id="91" pattern="([0-3])"/></td>
        </tr>
        <tr>
                <td><h3>SUD - Substance Use</h3></td>
        </tr>
        <tr>
            <td>Severity of Use</td>
            <td><input type="text" name="92" id="92" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Duration of Use</td>
            <td><input type="text" name="93" id="93" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Stage of Recovery</td>
            <td><input type="text" name="94" id="94" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Peer Influences</td>
            <td><input type="text" name="95"id="95" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Parental Influences</td>
            <td><input type="text"name="96" id="96" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Environmental Influences</td>
            <td><input type="text" name="97" id="97" pattern="([0-3])"/></td>
        </tr>
        <tr>
                <td><h3>Violence Module</h3></td>
        </tr>
        <tr>
            <td>History of Physical Abuse</td>
            <td><input type="text" name="98" id="98" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>History of Violence</td>
            <td><input type="text" name="99" id="99" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Witness to Domestic Violence</td>
            <td><input type="text" name="100" id="100" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Witness to Environmental Violence</td>
            <td><input type="text" name="101" id="101" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Frustration Management</td>
            <td><input type="text" name="102" id="102" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Hostility</td>
            <td><input type="text" name="103" id="103" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Paranoid Thinking</td>
            <td><input type="text" name="104" id="104"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Secondary Gains from Anger</td>
            <td><input type="text" name="105" id="105"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Violent Thinking</td>
            <td><input type="text" name="106" id="106"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Aware of Violence Potential</td>
            <td><input type="text" name="107" id="107"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Response to Consequences</td>
            <td><input type="text" name="108" id="108"  pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Commitment to Self Control</td>
            <td><input type="text" name="109" id="109"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Treatment Involvment</td>
            <td><input type="text" name="110" id="110"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
                <td><h3>SAB - Sexually Aggressive Behavior</h3></td>
        </tr>
        <tr>
            <td>Relationship</td>
            <td><input type="text" name="111" id="111" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Physical Force/Threat</td>
            <td><input type="text" name="112" id="112" pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><input type="text" name="113" id="113" pattern="([0-3])"/></td> 
        </tr>
         <tr>
            <td>Age Differential</td>
            <td><input type="text" name="114" id="114" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Type of Sex Act</td>
            <td><input type="text" name="115"  id="115" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Response to Accusation</td>
            <td><input type="text" name="116" id="116" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Temporal Consistency</td>
            <td><input type="text" name="117" id="117" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>History of Sexual Behavior</td>
            <td><input type="text" name="118" id="118" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Severity of Sexual Abuse</td>
            <td><input type="text" name="119" id="119" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Prior Treatment</td>
            <td><input type="text" name="120" id="120" pattern="([0-3])"/></td>
        </tr>
        <tr>
                <td><h3>Runaway</h3></td>
        </tr>
        <tr>
            <td>Frequency of Running</td>
            <td><input type="text" name="121" id="121" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Consistency of Destination</td>
            <td><input type="text" name="122" id="122" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Planning</td>
            <td><input type="text" name="123"id="123" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Safety of Destination</td>
            <td><input type="text"name="124" id="124" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Involvment in Illegal Acts</td>
            <td><input type="text" name="125" id="125" pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Likelyhood of Return on Own</td>
            <td><input type="text" name="126" id="126"  pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Involvment of Others</td>
            <td><input type="text" name="127" id="127"  pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Realistic Expectations</td>
            <td><input type="text" name="128" id="128"  pattern="([0-3])"/></td>
        </tr>
        <tr>
                <td><h3>JJ - Juvenile Justice</h3></td>
        </tr>
        <tr>
            <td>Seriousness</td>
            <td><input type="text" name="129" id="129"  pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>History</td>
            <td><input type="text" name="130" id="130"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Arrests</td>
            <td><input type="text" name="131" id="131"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><input type="text" name="132" id="132"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Community Safety</td>
            <td><input type="text" name="133" id="133"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Legal Compliance</td>
            <td><input type="text" name="134" id="134"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Peer Influences</td>
            <td><input type="text" name="135" id="135"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Parental Influences</td>
            <td><input type="text" name="136" id="136"  pattern="([0-3])"/></td>
        </tr>
        <tr>
            <td>Environmental Influences</td>
            <td><input type="text" name="137" id="137"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
                <td><h3>FS - Fire Setting</h3></td>
        </tr>
        <tr>
            <td>Seriousness</td>
            <td><input type="text" name="138" id="138"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>History</td>
            <td><input type="text" name="139" id="139"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Planning</td>
            <td><input type="text" name="140" id="140"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Use of Accelerants</td>
            <td><input type="text" name="141" id="141"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Intention to Harm</td>
            <td><input type="text" name="142" id="142"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Community Safety</td>
            <td><input type="text" name="143" id="143"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Response to Accusation</td>
            <td><input type="text" name="144" id="144"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Remorse</td>
            <td><input type="text" name="145" id="145"  pattern="([0-3])"/></td> 
        </tr>
        <tr>
            <td>Likelyhood of Future Fires</td>
            <td><input type="text" name="146" id="146"  pattern="([0-3])"/></td> 
        </tr>-->
        <tr>
            <td><asp:Button ID="SubmitCANS" runat="server" OnClick="Insert" Text="Submit CANS" /></td>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
