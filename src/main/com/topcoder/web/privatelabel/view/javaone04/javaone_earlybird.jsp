<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="com.topcoder.web.privatelabel.Constants,
                 com.topcoder.shared.dataAccess.resultSet.ResultSetContainer" %>
<%@ taglib uri="/tc-webtags.tld" prefix="tc-webtag" %>
<jsp:usebean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request" />
<jsp:usebean id="regInfo" class="com.topcoder.web.privatelabel.model.SimpleRegInfo" scope="session" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link rel=stylesheet href="http://java.sun.com/javaone/javaone2004.css">
<link type="text/css" rel="stylesheet" class="bodyText_link" href="/css/doubleclick.css"/>

<title>2004 JavaOne Coding Challenge</title>



<jsp:include page="../script.jsp" />

</head>
	<body>
		<div align="center">
			<table border=0 cellspacing=0 width="800">
				<tr>
					<td colspan="2" align="left" valign="middle"> <img src="/i/events/javaone04/javaone04_logo.gif" width="166" height="80" border="0"/>
					<img src="/i/clear.gif" width="420" height="80" border="0"/>
					<a href="http://www.topcoder.com/"><img src="/i/events/javaone04/pbtc_logo.gif" width="166" height="80" border="0"/></a><br/>
					<img src="/i/events/javaone04/purple_dot.gif" width="800" height="25" border="0"></td></tr>
				<tr>
					<td valign="top" width="164">
						<jsp:include page="links.jsp" /></td>
					<td valign="top">
				<!-- start breadcrumb -->
  						<table border="0" cellspacing="0" cellpadding="0" bgcolor="#F0F0F0" >
   							<tr><td width="19"><img src="/i/clear.gif" width="634" height="20"></td></tr>
						</table>
  				<!-- end breadcrumb -->
  					<p></p>
  					<img src="/i/clear.gif" width="7" height="1"><img src="/i/events/javaone04/coding_challenge.gif" width="351" height="27" border="0">  						
  						<p></p>
  						
  						<p class="regmiddle">	
  							<b>Early Bird Discount</b>&nbsp; &nbsp; | &nbsp; &nbsp; 
      						<a href="/pl/?&module=Static&d1=javaone04&d2=javaone_student"><b>Student Discount</b></a></p>
      					<p class="regmiddle"><strong><font size="4">Early Bird Discount</font></strong></p>
      
						<p class="regmiddle">Early Bird TopCoder Professional discount:</p>

						<p class="regmiddle">Join Us and SAVE $300 at the JavaOne<sup>SM</sup> Conference in San Francisco!</p>

						<p class="regmiddle">Come join us at the JavaOne Conference taking place June 28-July 1, 
						2004, at Moscone Center in San Francisco. As the power behind the Coding Challenge at the Conference, 
						TopCoder invites you to stop by the Competition Arena in the JavaOne Pavilion. It all starts at the 
						JavaOne Conference, your source for cutting-edge knowledge and proven solutions.</p>

						<p class="regmiddle">Professional TopCoder members save $300 off onsite pricing when you register by May 31, 2004.  
						Register online today at <a href="http://javaone.medialiveinternational.com/sf2004/registration.html" target="_blank">java.sun.com/javaone/sf</a>.
						Please use Registration Code "EXNAYA27" to receive your savings. </p>

						<p class="regmiddle">The JavaOne conference is your ultimate source for Java technology knowledge and 
						education. Here's a glimpse of what you'll find on site: </p>


						<blockquote>
						<ul class="regmiddle">
						<li>JavaOne Pavilion, featuring the latest products and technologies from leading companies</li> 
						<li>Hundreds of in-depth technical sessions that focus on real-world solutions </li> 
						<li>Popular Birds-of-a-Feather sessions where you can interact with your peers </li> 
						<li>Renowned JavaOneSM After Dark activities where you can cut loose </li> 
						<li>Interactive Hands-on Labs led by industry experts </li> 
						</ul></blockquote>


						<p class="regmiddle">Register online at <a href="http://javaone.medialiveinternational.com/sf2004/registration.html" target="_blank">java.sun.com/javaone/sf</a> today. 
						Be sure to use Registration Code "EXNAYA27" to receive your savings. </p>

						<p class="regmiddle">We look forward to seeing you in San Francisco this June! </p>

						<p class="regmiddle">&#169;2004 Sun Microsystems, Inc. All rights reserved. Sun, Sun Microsystems, the Sun logo, Java, 
						the Java Coffee Cup logo, JavaOne, the JavaOne logo, Java Developer Conference, Java Community Process, Java 2, 
						EmbeddedJava, PersonalJava, 100% Pure Java, J2EE, J2ME, J2SE, Jini, Jiro, Solaris, Write Once, Run Anywhere, 
						and all Java-based marks and logos are trademarks or registered trademarks of Sun Microsystems, Inc. in the 
						United States and other countries.</p>
						
					
					
					</td>
				</tr>
			</table>
			<jsp:include page="foot.jsp" />
		</div>
	</body>
</html>