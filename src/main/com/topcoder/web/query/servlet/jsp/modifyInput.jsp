<%@  page
  language="java"
  errorPage="errorPage.jsp"
  import= "com.topcoder.web.query.common.*,
           com.topcoder.web.query.bean.*"
%>
<%@ taglib uri="/query-taglib.tld" prefix="query"%>
<jsp:useBean id="ModifyInputTask" scope="request" class="com.topcoder.web.query.bean.task.ModifyInputTask" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
  <HEAD>
    <TITLE>Query Tool</TITLE>
    <LINK REL="stylesheet" TYPE="text/css" HREF="/css/style.css"/>
    <LINK REL="stylesheet" TYPE="text/css" HREF="/css/coders.css"/>
  </HEAD>
  <BODY BGCOLOR="#000000" TOPMARGIN="0" MARGINHEIGHT="0" LEFTMARGIN="0" MARGINWIDTH="0"">
  <jsp:include page="top.jsp" />

  <TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="0">
    <TR><TD COLSPAN="6"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="16"></TD></TR>
    <TR>
      <TD WIDTH="170" bgcolor="#000000" VALIGN="top">
        <jsp:include page="left.jsp" flush="true">
          <jsp:param name="<%=Constants.DB_PARAM%>" value="<%=ModifyInputTask.getDb()%>"/>
          <jsp:param name="<%=Constants.SERVLET_PATH_PARAM%>" value="<%=ModifyInputTask.getServletPath()%>"/>
        </jsp:include>      </TD>
      <TD WIDTH="4" BGCOLOR="#000000" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD>
      <TD CLASS="statText" WIDTH="100%" BGCOLOR="#000000" VALIGN="top" ALIGN="left">
        <TABLE WIDTH="60%" BORDER="0" CELLPADDING="0" CELLSPACING="0">
          <FORM ACTION="<jsp:getProperty name="ModifyInputTask" property="ServletPath"/>" method="post" name="ModInputForm" >
            <INPUT TYPE="hidden" NAME="<%=Constants.TASK_PARAM%>" VALUE="<%=Constants.MODIFY_INPUT_TASK%>">
            <INPUT TYPE="hidden" NAME="<%=Constants.INPUT_ID_PARAM%>" VALUE="<jsp:getProperty name="ModifyInputTask" property="InputId"/>">
            <INPUT TYPE="hidden" NAME="<%=Constants.STEP_PARAM%>" VALUE="<%=Constants.SAVE_STEP%>">
            <INPUT TYPE="hidden" NAME="<%=Constants.DB_PARAM%>" VALUE="<jsp:getProperty name="ModifyInputTask" property="Db"/>">
            <TR><TD CLASS="statTextBig" COLSPAN="2"><%=Constants.MODIFY_INPUT_NAME%></TD></TR>
            <TR><TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD></TR>
            <TR>
              <TD CLASS="statText" ALIGN="right">DB:&#160;</TD>
              <TD CLASS="statText" ALIGN="left">
                  <jsp:getProperty name="ModifyInputTask" property="Db"/>
              </TD>
            </TR>
            <TR><TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD></TR>
            <TR><TD CLASS="errorText" COLSPAN="2"><query:error task="<%=ModifyInputTask%>" key="<%=Constants.INPUT_ID_PARAM%>"/></TD></TR>
            <TR><TD CLASS="errorText" COLSPAN="2"><query:error task="<%=ModifyInputTask%>" key="<%=Constants.INPUT_DESC_PARAM%>"/></TD></TR>
            <TR>
              <TD CLASS="statText" ALIGN="right" WIDTH="50%">Description: </TD>
              <TD CLASS="statText" ALIGN="left" WIDTH="50%">
                <input type="text" name="<%=Constants.INPUT_DESC_PARAM%>" value ="<jsp:getProperty name="ModifyInputTask" property="InputDesc" />" size="30" maxlength="100">
              </TD>
            </TR>
            <TR><TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD></TR>
            <TR><TD CLASS="errorText" COLSPAN="2"><query:error task="<%=ModifyInputTask%>" key="<%=Constants.INPUT_CODE_PARAM%>"/></TD></TR>
            <TR>
              <TD CLASS="statText" ALIGN="right">Code: </TD>
              <TD CLASS="statText" ALIGN="left">
                <input type="text" name="<%=Constants.INPUT_CODE_PARAM%>" value ="<jsp:getProperty name="ModifyInputTask" property="InputCode" />" size="10" maxlength="30">
              </TD>
            </TR>
            <TR><TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD></TR>
            <TR><TD CLASS="errorText" COLSPAN="2"><query:error task="<%=ModifyInputTask%>" key="<%=Constants.DATA_TYPE_ID_PARAM%>"/></TD></TR>
            <TR>
              <TD CLASS="statText" ALIGN="right">Data Type: </TD>
              <TD CLASS="statText" ALIGN="left">
                <query:dataTypeSelect name="<%=Constants.DATA_TYPE_ID_PARAM%>" class="dropdown" selectedValue='<%=""+ModifyInputTask.getDataTypeId()%>'/>
              </TD>
            </TR>
            <TR><TD COLSPAN="2"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8"></TD></TR>
            <TR>
              <TD CLASS="statText" ALIGN="center" COLSPAN="2">
                <A HREF="javascript:void document.ModInputForm.submit()" CLASS="statText">
                  [save]
                </A>
              </TD>
            </TR>
          <FORM>
        </TABLE>
      </TD>
      <TD WIDTH="4" BGCOLOR="#000000"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="1" BORDER="0"></TD>
      <TD WIDTH="10" BGCOLOR="#000000" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="10" HEIGHT="1" BORDER="0"><BR>
      </TD>
      <TD WIDTH="25" BGCOLOR="#000000"><IMG SRC="/i/clear.gif" WIDTH="25" HEIGHT="1" BORDER="0"></TD>
    </TR>
  </TABLE>
  <jsp:include page="bottom.jsp" />
  </BODY>
</HTML>
