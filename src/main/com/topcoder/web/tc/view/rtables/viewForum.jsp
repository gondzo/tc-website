<%@ page import="com.topcoder.shared.util.ApplicationServer"%>
<%@ page language="java"%>
<%
response.sendRedirect(response.encodeRedirectURL("http://"+ApplicationServer.FORUMS_SERVER_NAME+"/?module=ThreadList&forumID="+request.getParameter("forum")));
    %>

