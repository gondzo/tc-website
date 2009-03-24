<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-template.tld" prefix="template" %>
<%@ taglib uri="/WEB-INF/review.tld" prefix="review" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<review:checkLogon />

<bean:define id="theName" name="projectInfo" property="projectName" />
<% String theTitle=theName+" Design Screening Scorecard"; %>

<template:insert template="template.jsp">
	<template:put name="title"><%=theTitle%></template:put>
    <template:put name="content" content="editScreeningScorecardContent.jsp"/>
</template:insert>

