<%@  page
  language="java"
  import= "com.topcoder.web.query.common.*,
           com.topcoder.web.query.request.*"
%>
<%@ taglib uri="/query-taglib.tld" prefix="query"%>
<jsp:useBean id="CommandList" scope="request" class="com.topcoder.web.query.request.CommandList" />
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
    <tr><td colspan="6"><img src="/i/clear.gif" width="4" height="16"></td></TR>
    <tr>
      <td width="170" bgcolor="#000000" valign="top">
        <jsp:include page="left.jsp" flush="true">
          <jsp:param name="<%=Constants.DB_PARAM%>" value="<%=CommandList.getDb()%>"/>
          <jsp:param name="<%=Constants.SERVLET_PATH_PARAM%>" value="<%=SessionInfo.getServletPath()%>"/>
        </jsp:include>
      </td>
      <td width="4" bgcolor="#000000" valign="top"><img src="/i/clear.gif" width="4" height="8"></td>
      <td class="statText" width="100%" bgcolor="#000000" valign="top">
        <table width="60%" border="0" cellpadding="0" cellspacing="0">
          <tr><td class="statTextBig" colspan="4"><%=Constants.COMMAND_LIST_NAME%></td></TR>
          <tr>
            <td class="statText" ALIGN="right" colspan="2">DB:&#160;</td>
            <td class="statText" ALIGN="left" colspan="2">
              <jsp:getProperty name="CommandList" property="Db"/>
            </td>
          </TR>
          <tr><td colspan="4"><img src="/i/clear.gif" width="4" height="8"></td></TR>
          <tr bgcolor="#333333">
            <td></td>
            <td class="statTextBig">Group Name</td>
            <td></td>
            <td class="statTextBig">Command Name</td>
          </TR>
          <tr><td colspan="2"><img src="/i/clear.gif" width="4" height="8"></td></TR>
          <query:resultSetRowIterator id="command" list="<%=CommandList.getCommandList()%>">
            <tr>
              <td class="statText" ALIGN="right">
                <A href="<jsp:getProperty name="SessionInfo" property="ServletPath"/>?<%=Constants.TASK_PARAM%>=<%=Constants.MODIFY_GROUP_TASK%>&<%=Constants.DB_PARAM%>=<jsp:getProperty name="CommandList" property="Db"/>&<%=Constants.GROUP_ID_PARAM%>=<query:resultSetItem row="<%=command%>" name="command_group_id"/>" class="statText">
                  [edit]
                </A>
                &#160;&#160;
              </td>
              <td class="statText">
                <query:resultSetItem row="<%=command%>" name="command_group_name"/>
              </td>
              <td class="statText" ALIGN="right">
                <A href="<jsp:getProperty name="SessionInfo" property="ServletPath"/>?<%=Constants.TASK_PARAM%>=<%=Constants.MODIFY_COMMAND_TASK%>&<%=Constants.DB_PARAM%>=<jsp:getProperty name="CommandList" property="Db"/>&<%=Constants.COMMAND_ID_PARAM%>=<query:resultSetItem row="<%=command%>" name="command_id"/>" class="statText">
                  [edit]
                </A>
                &#160;&#160;
              </td>
              <td class="statText">
                <A href="<jsp:getProperty name="SessionInfo" property="ServletPath"/>?<%=Constants.TASK_PARAM%>=<%=Constants.COMMAND_DETAIL_TASK%>&<%=Constants.DB_PARAM%>=<jsp:getProperty name="CommandList" property="Db"/>&<%=Constants.COMMAND_ID_PARAM%>=<query:resultSetItem row="<%=command%>" name="command_id"/>" class="statText">
                  <query:resultSetItem row="<%=command%>" name="command_desc"/>
                </A>
              </td>
            </TR>
          </query:resultSetRowIterator>
        </table>
      </td>
      <td width="4" bgcolor="#000000"><img src="/i/clear.gif" width="4" height="1" border="0"></td>
      <td width="10" bgcolor="#000000" valign="top"><img src="/i/clear.gif" width="10" height="1" border="0"><BR>
      </td>
      <td width="25" bgcolor="#000000"><img src="/i/clear.gif" width="25" height="1" border="0"></td>
    </TR>
  </table>
  <jsp:include page="bottom.jsp" />
  </BODY>
</HTML>
