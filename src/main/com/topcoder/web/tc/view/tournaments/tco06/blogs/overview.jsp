<%@  page language="java"  %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ page import="com.topcoder.shared.util.ApplicationServer"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="/script.jsp" />

<title>2006 TopCoder Open - Computer Programming Tournament</title>
<link type="text/css" rel="stylesheet" href="/css/TCO06style.css"/>
<link type="text/css" rel="stylesheet" href="/css/coders.css"/>
<STYLE TYPE="text/css">
.smallHandle
{
font-size: 10px;
}
</STYLE>
</head>
<body>

<!-- Tab barlinks-->
<jsp:include page="../links.jsp" >
<jsp:param name="tabLev1" value="overview"/>
<jsp:param name="tabLev2" value="onsite_events"/>
<jsp:param name="tabLev3" value="blogs"/>
</jsp:include>

<table width="100%" border=0 cellpadding=0 cellspacing=0>
<!-- Body-->
   <tr valign=top>
      <td valign=top align=center>
      <div class="bodySpacer">

<span class="bigTitle">Member Blogs</span>
<br><br>

<table cellpadding="2" cellspacing="0" width="500" class="bodyText">
   <tr>
      <td align="center">
      <img src="/i/m/davidyang_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21471147" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_3">"davidyang.blog(Math.Floor(Action));"</span></A><br>
      [May 3 - 10:30 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/Kawigi_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="8416646" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_3">"I'm blogging this."</span></A><br>
      [May 3 - 10:00 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/dplass_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="251184" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_5">"Components in the 'Real World'"</span></A><br>
      [May 3 - 9:50 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/omgrace_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21518515" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_3">"Nothing in this world has prepared you for this"</span></A><br>
      [May 3 - 7:50 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/dplass_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="251184" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_4">"Finally, dplass talks about Design and Development"</span></A><br>
      [May 3 - 7:30 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/davidyang_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21471147" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_2">"Your mission, if you choose to accept it"</span></A><br>
      [May 3 - 5:40 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/dplass_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="251184" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_3">"The one where dplass takes a walk"</span></A><br>
      [May 3 - 3:30 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/Kawigi_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="8416646" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_2">"Algrorithm Semifinal 1: Dropping like flies"</span></A><br>
      [May 3 - 2:40 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/omgrace_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21518515" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_2">"Exploring the Strip"</span></A><br>
      [May 3 - 2:20 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/dplass_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="251184" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_2">"Episode II: Attack of the... oh, never mind"</span></A><br>
      [May 3 - 1:55 PM]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/omgrace_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21518515" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_1">"From Champaign to Vegas"</span></A><br>
      [May 2]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/davidyang_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="21471147" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_1">"TopCoder's May Madness"</span></A><br>
      [May 2]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/Kawigi_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="8416646" darkBG="true" /></span>
      </td>
      <td><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_1">"This morning was like Christmas"</span></A><br>
      [May 2]</td>
   </tr>
   <tr>
      <td align="center">
      <img src="/i/m/dplass_big.jpg" alt="" width="27" height="30" border="0" hspace="6" vspace="1" class="myStatsPhoto"/><br />
      <span class="smallHandle"><tc-webtag:handle coderId="251184" darkBG="true" /></span>
      </td>
      <td width="100%"><span class="bodySubtitle"><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_1">"Episode I: The Phantom Menace"</span></A><br>
      [May 2]</td>
   </tr>
</table>



<%--
<table cellpadding="6" cellspacing="0" width="800">
   <tr>
      <td class="bodyText" align="center" valign="top" width="25%"><img src="/i/m/davidyang_big.jpg" /><br>
      <tc-webtag:handle coderId="21471147" darkBG="true" />
      <div align="left">
         <ul>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_3"><font size="-2">davidyang.blog(Math.Floor(Action));</font></A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_2">Your mission, if you choose to accept it</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=davidyang_1">TopCoder's May Madness</A></li>
         </ul>
      </div>
      </td>



      <td class="bodyText" align="center" valign="top" width="25%"><img src="/i/m/dplass_big.jpg" /><br>
      <tc-webtag:handle coderId="251184" darkBG="true" />
      <div align="left">
         <ul>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_5">Components in the "Real World"</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_4">Finally, dplass talks about Design and Development</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_3">The one where dplass takes a walk</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_2">Episode II: Attack of the... oh, never mind</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=dplass_1">Episode I: The Phantom Menace</A></li>
         </ul>
      </div>
      </td>



      <td class="bodyText" align="center" valign="top" width="25%"><img src="/i/m/Kawigi_big.jpg" /><br>
      <tc-webtag:handle coderId="8416646" darkBG="true" />
      <div align="left">
         <ul>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_3">I'm blogging this.</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_2">Algrorithm Semifinal 1: Dropping like flies</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=Kawigi_1">This morning was like Christmas</A></li>
         </ul>
      </div>
      </td>



      <td class="bodyText" align="center" valign="top" width="25%"><img src="/i/m/omgrace_big.jpg" /><br>
      <tc-webtag:handle coderId="21518515" darkBG="true" />
      <div align="left">
         <ul>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_3">Nothing in this world has prepared you for this</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_2">Exploring the Strip</A></li>
         <li><A href="/tc?module=Static&d1=tournaments&d2=tco06&d3=blogs&d4=omgrace_1">From Champaign to Vegas</A></li>
         </ul>
      </div>
      </td>
   </tr>
</table>
--%>

<br><br>
        </div>
        </div>
      </td>
        
         
<!-- Right Column-->
        <td width=170 align=right>
            <jsp:include page="../right.jsp">
            <jsp:param name="level1" value="all"/>
            </jsp:include>
         </td>
      
   </tr>
   
</table>
   
   


<jsp:include page="/foot.jsp" />

</body>

</html>
