<%@  page language="java"  %>
<%@ page import="com.topcoder.web.tc.Constants,
                 java.util.HashMap,
                 com.topcoder.web.tc.model.ContractingResponse,
                 com.topcoder.web.tc.model.ContractingResponseGroup,
                 java.util.Iterator" %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>TopCoder Contract</title>

<jsp:include page="../../../script.jsp" />

<%
List prefList = (List)request.getAttribute("prefs");
List techList = (List)request.getAttribute("techSkills");
%>

</head>

<body>

<jsp:include page="../../../top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr valign="top">
<!-- Left Column Begins-->
        <td width="180">
            <jsp:include page="../../../includes/global_left.jsp">
                <jsp:param name="level1" value="my_home"/>
                <jsp:param name="level2" value="index"/>
            </jsp:include>
        </td>
<!-- Left Column Ends -->

<!-- Center Column Begins -->
        <td width="100%" align="center">
        <div class="myTCBody">

        <jsp:include page="../../page_title.jsp" >
            <jsp:param name="image" value="contract"/>
            <jsp:param name="title" value="Registration"/>
        </jsp:include>

<!-- Breadcrumb-->
<script language="javascript">
        function goToPage(s)
        {
            document.frmConfirm.module.value = s;
            document.frmConfirm.submit();
        }
    </script>

		<FORM ACTION="/tc" METHOD=POST onSubmit="" name="frmConfirm">
		<input type="hidden" name="module" value="ContractingConfirm"/>
		<input type="hidden" name="previouspage" value="confirm" />

        <table border=0 cellpadding=0 cellspacing=0 width="100%" class=bodyText>
			<tr>
				<td class=oppDesc width="100%" valign=top>
				<span class=bodySubtitle>Confirm selections</span>
				<br/><br/>
				Please confirm that the information below is correct, then click SUBMIT.
				<br/><br/>
				<span class=bigRed>NOTE: You are not registered yet.  You MUST click SUBMIT at the bottom of this page to complete the registration.</span>
				</td>
				<td valign=top>
				<jsp:include page="breadcrumb.jsp" >
				<jsp:param name="phase" value="confirm"/>
				</jsp:include>
				</td>
			</tr>
		</table>

		
        <table border=0 cellpadding=0 cellspacing=0 width="100%" class=bodyText>
		<tr>
		<td valign=top width="50%">
		<table width="100%" cellpadding="0" cellspacing="5" class="bodyText" align="center" >
            <tr>
				<td align=right width="65%"><b>Preferences</b></td>
				<td width="35%"><a href="javascript:goToPage('ContractingPreferences');">edit<a/></td>
            </tr>
            <tc:listIterator id="prefGroup" list="<%=prefList%>">
            <tr>
				<td align=right><b><%=((ContractingResponseGroup)prefGroup).getName()%></b></td>
				<td valign=top>&#160;</td>
             </tr>
                        	<tc:listIterator id="pref" list="<%=((ContractingResponseGroup)prefGroup).getResponses()%>">
                                  <tr>
                                    <td align=right><%=((ContractingResponse)pref).getName()%>:</td>
                                    <td valign=top><%=((ContractingResponse)pref).getVal()%></td>
                                </tr>				
				</tc:listIterator>
            </tc:listIterator>
	<tr>
            <td align=right><b>Resume</b></td>
            <td valign=top>&#160;</td>
	</tr>
              <tr>
                <td align=right>&#160;</td>
                <td valign=top><%=request.getAttribute("resume")%></td>
            </tr>		
			<tr><td>&#160;</td></tr>			

            <tr>
				<td align=right><b>Technology Skills</b></td>
				<td><a href="javascript:goToPage('Technologies');">edit<a/></td>
            </tr>
            <tc:listIterator id="tech" list="<%=techList%>">
              <tr>
                <td align=right><%=((ContractingResponse)tech).getName()%>:</td>
                <td valign=top><%=((ContractingResponse)tech).getVal()%></td>
            </tr>				
            </tc:listIterator>
           
			<tr><td>&#160;</td></tr>			

            <tr>
				<td align=right><b>Databases</b></td>
				<td valign=top><a href="">edit<a/></td>
            </tr>
            <tr>
				<td align=right>Oracle</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Sybase</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Informix</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>MS SQL Server</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>DB2</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Access</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Paradox</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>dbase</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Interbase</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>PostgreSQL</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>MySQL</td>
				<td valign=top>7</td>
            </tr>
		</table>
		</td>
		<td valign=top width="50%">
		<table width="100%" cellpadding="0" cellspacing="5" class="bodyText" align="center" >
            <tr>
				<td align=right width="65%"><b>Language Skills</b></td>
				<td valign=top width="35%"><a href="">edit<a/></td>
            </tr>
            <tr>
				<td align=right>Javascript:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>VB Script:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>SQL:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>HTML:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>COBOL:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>FORTRAN:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Smalltalk:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Eiffel:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Lisp:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>C:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>C++:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Java:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Visual Basic:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Pascal:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>PERL:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>XML:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>XSL:</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Python:</td>
				<td valign=top>7</td>
            </tr>

			<tr><td>&#160;</td></tr>			

            <tr>
				<td align=right><b>Operating Systems</b></td>
				<td valign=top><a href="">edit<a/></td>
            </tr>
            <tr>
				<td align=right>OS/2</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Windows 2000</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>DOS</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Windows NT</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>Linux</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>UNIX</td>
				<td valign=top>7</td>
            </tr>
            <tr>
				<td align=right>MAC OS</td>
				<td valign=top>7</td>
            </tr>
		</table>
		</tr>
		<tr><td colspan=2 align=center><br/><br/><a href="/tc?module=Static&d1=contracting&d2=reg&d3=success"><img src="/i/submit.jpg" border=0/></a></td></tr>
		</table>
		</form>

        </div>
		<p align=center class=bodyText><b>Please check to make sure that your information is up-to-date.</b></p>
        <p><br/></p>
        </td>
<!-- Center Column Ends -->

<!-- Right Column Begins -->
         <td width="170">
            <jsp:include page="../../../public_right.jsp">
               <jsp:param name="level1" value="privatelabel"/>
            </jsp:include>
         </td>
<!-- Right Column Ends -->

<!-- Gutter -->
         <td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"></td>
<!-- Gutter Ends -->
    </tr>
</table>

<jsp:include page="../../../foot.jsp" />

</body>

</html>
