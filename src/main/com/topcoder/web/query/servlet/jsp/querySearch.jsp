<%@  page
  language="java"
  import= "com.topcoder.web.query.common.*,
           com.topcoder.web.query.request.*"
%>
<%@ taglib uri="/query-taglib.tld" prefix="query"%>
<jsp:useBean id="QuerySearch" scope="request" class="com.topcoder.web.query.request.QuerySearch" />
<jsp:useBean id="SessionInfo" scope="request" class="com.topcoder.web.common.SessionInfo" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE>Query Tool</TITLE>
    <LINK REL="stylesheet" TYPE="text/css" href="/css/style.css"/>
    <LINK REL="stylesheet" TYPE="text/css" href="/css/coders.css"/>
  </HEAD>
  <BODY bgcolor="#000000" topmargin="0" marginheight="0" LEFTMARGIN="0" marginwidth="0"">
  <jsp:include page="top.jsp" />

  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr><td colspan="6"><img src="/i/clear.gif" width="4" height="16"></td></tr>
    <tr>
      <td width="170" bgcolor="#000000" valign="top">
        <jsp:include page="left.jsp" flush="true">
          <jsp:param name="<%=Constants.DB_PARAM%>" value="<%=QuerySearch.getDb()%>"/>
          <jsp:param name="<%=Constants.SERVLET_PATH_PARAM%>" value="<%=SessionInfo.getServletPath()%>"/>
        </jsp:include>
      </td>
      <td width="4" bgcolor="#000000" valign="top"><img src="/i/clear.gif" width="4" height="8"></td>
      <td class="statText" width="100%" bgcolor="#000000" valign="top">
        <table width="60%" border="0" cellpadding="3" cellspacing="1">
          <tr><td class="statTextBig" colspan="2"><%=Constants.QUERY_SEARCH_NAME%></td></tr>
          <tr>
            <td class="statText" ALIGN="right">DB:&#160;</td>
            <td class="statText" ALIGN="left">
              <jsp:getProperty name="QuerySearch" property="Db"/>
            </td>
          </tr>
          <tr bgcolor="#333333">
            <form action="<jsp:getProperty name="SessionInfo" property="ServletPath"/>" method="get" name="QuerySearchForm" >
              <input type="hidden" name="<%=Constants.TASK_PARAM%>" VALUE="<%=Constants.QUERY_SEARCH_TASK%>">
              <input type="hidden" name="<%=Constants.DB_PARAM%>" VALUE="<jsp:getProperty name="QuerySearch" property="Db"/>">
            <td class="statTextBig">Search Criteria:</td>
            <td class="statTextBig">
              <input type="text" name="<%=Constants.SEARCH_CRITERIA_PARAM%>" value ='<jsp:getProperty name="QuerySearch" property="SearchCriteria" />' size="30" maxlength="100"/>
            </td>
            <td class="statTextBig">
              <A href="javascript:void document.QuerySearchForm.submit()" class="statText">
                [search]
              </A>
            </td>
          </tr>
        </table>
        <table width="60%" border="0" cellpadding="3" cellspacing="1">
          <query:queryIterator id="query" list="<%=QuerySearch.getSearchResults()%>">
            <tr>
              <td class="statText" ALIGN="right">
                <A href="<jsp:getProperty name="SessionInfo" property="ServletPath"/>?<%=Constants.TASK_PARAM%>=<%=Constants.MODIFY_QUERY_TASK%>&<%=Constants.DB_PARAM%>=<jsp:getProperty name="QuerySearch" property="Db"/>&<%=Constants.QUERY_ID_PARAM%>=<jsp:getProperty name="query" property="QueryId"/>" class="statText">
                  [edit]
                </A>
                &#160;&#160;
              </td>
              <td class="statText">
                <jsp:getProperty name="query" property="name"/>
              </td>
            </tr>
          </query:queryIterator>
        </table>
      </td>
      <td width="4" bgcolor="#000000"><img src="/i/clear.gif" width="4" height="1" border="0"></td>
      <td width="10" bgcolor="#000000" valign="top"><img src="/i/clear.gif" width="10" height="1" border="0"><BR>
      </td>
      <td width="25" bgcolor="#000000"><img src="/i/clear.gif" width="25" height="1" border="0"></td>
    </tr>
  </table>
  <jsp:include page="bottom.jsp" />
  </BODY>
</HTML>
