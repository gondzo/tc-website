<%@ page import="javax.naming.*" %>
<%@ page import="javax.ejb.CreateException" %>
<%@ page import="java.io.*" %>
<%@ page import="java.rmi.*" %>
<%@ page import="javax.rmi.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.reflect.*" %>

<%@ include file="/includes/util.jsp" %>
<%@ include file="/includes/session.jsp" %>

<%
    // STANDARD PAGE VARIABLES
    String page_name = "c_catalog_market.jsp";
    String action = request.getParameter("a");
%>

<% // PAGE SPECIFIC DECLARATIONS %>
<%@ page import="com.topcoder.dde.catalog.*" %>
<%
    Object objTechTypes = CONTEXT.lookup(CatalogHome.EJB_REF_NAME);
    CatalogHome home = (CatalogHome) PortableRemoteObject.narrow(objTechTypes, CatalogHome.class);
    Catalog catalog = home.create();
%>

<%
    long lngCategory = 0;
    try {
        lngCategory = Long.parseLong(request.getParameter("c"));
    } catch (NumberFormatException nfe) {
        // invalid parameter, redirect to main page
        response.sendRedirect("c_showroom.jsp");
    }
    Category selectedCategory = catalog.getCategory(lngCategory);
    if (selectedCategory == null) {
        // not found, redirect to main page
        response.sendRedirect("c_showroom.jsp");
    }

    Collection colCategories = selectedCategory.getSubcategories();
    Category arrCategory[] = (Category[])colCategories.toArray(new Category[0]);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/2000/REC-xhtml1-20000126/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Software Categories available in the Component Catalog at TopCoder</title>

<link rel="stylesheet" type="text/css" href="/includes/tcs_style.css" />
<script language="JavaScript" src="/scripts/javascript.js"></script>
</head>

<body class="body">

<!-- Header begins -->
<jsp:include page="/includes/top.jsp">
<jsp:param name="TCDlevel" value="software" />
</jsp:include>
<jsp:include page="/includes/menu.jsp" >
    <jsp:param name="isSoftwarePage" value="true"/>
</jsp:include>
<!-- Header ends -->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">

<!-- Left Column begins -->
        <td width="165" class="leftColumn">
            <jsp:include page="/includes/left.jsp" >
                <jsp:param name="level1" value="catalog"/>
                <jsp:param name="level2" value="market"/>
            </jsp:include>
        </td>
<!-- Left Column ends -->

<!-- Gutter begins -->
        <td width="15"><img src="/images/clear.gif" alt="" width="15" height="10" border="0"></td>
<!-- Gutter ends -->

<!-- Center Column begins -->
        <td width="99%">
            <img src="/images/clear.gif" alt="" width="1" height="1" border="0"/><br/>

<!-- Search-->
            <table width="100%" cellpadding="0" cellspacing="6" align="center" border="0">
                <tr><td colspan="3" height="35"><img src="/images/hd_comp_catalog.png" alt="Component Catalog" border="0" /></td></tr>
                <tr>
                    <td height="8"><img src="/images/clear.gif" alt="" width="150" height="8" border="0" /></td>
                    <td height="8"><img src="/images/clear.gif" alt="" width="150" height="8" border="0" /></td>
                    <td height="8"><img src="/images/clear.gif" alt="" width="150" height="8" border="0" /></td>
                </tr>

<!-- Categories-->
                <tr><td colspan="3" height="16"><img src="/images/headChooseCat.gif" alt="now Choose a Category" width="158" height="16" border="0" /></td></tr>
            </table>

            <table width="100%" cellpadding="0" cellspacing="6" align="center" border="0">

                <tr><td colspan="2" bgcolor="#CCCCCC"><img src="/images/clear.gif" alt="" width="1" height="1" border="0" /></td></tr>

                <tr valign="middle">
                    <td class="smallText" width="70%"><span class="smallText"><strong>Search results for "<%= selectedCategory.getName() %>"</td>
                    <td align="right" width="30%">
                        <table cellpadding="0" cellspacing="6" border="0" class="catSearch">
                            <tr>
                                <td class="catSearch"><a href="catalogSearch.shtml" class="catSearch">> Advanced Search</a></td>
                            </tr>
                        </table></td>
                </tr>

                <tr><td colspan="2" bgcolor="#CCCCCC"><img src="/images/clear.gif" alt="" width="1" height="1" border="0" /></td></tr>
            </table>
<%        int numCols = 3;
%>
            <table width="100%" cellpadding="0" cellspacing="6" align="center" border="0">
<%        for (int r=0; r < (arrCategory.length/numCols + (arrCategory.length % numCols > 0 ? 1 : 0)); r++) {
%>
                <tr valign="middle">
<%                for (int i=0; i < numCols; i++) {
                        if (i+r*numCols < arrCategory.length) {
                            String tmpLink = "<strong>> " + arrCategory[i+r*numCols].getName() + "</strong>";
                            debug.addMsg(page_name, "looking for components for category " + arrCategory[i+r*numCols].getId());
                            if (catalog.getCategoryComponents(arrCategory[i+r*numCols].getId()).size() > 0) {
                                tmpLink = "<a href=\"c_comp_cat.jsp?c=" + arrCategory[i+r*numCols].getId() + "\" class=\"catCategoryTitle\">" + tmpLink + "</A>";
                            }
%>
                            <td class="catCategoryTitle" width="<%= 100/numCols %>%"><%= tmpLink %></td>
<%                    } else {
%>
                            <td class="catCategoryTitle" width="<%= 100/numCols %>%">&nbsp;</td>
<%                    }
                    }
%>
                </tr>
<%
            }
%>
                <tr><td colspan="3" height="40"><img src="/images/clear.gif" alt="" width="1" height="40" border="0"/></td></tr>
            </table>
        </td>
<!-- Center Column begins -->

<!-- Gutter begins -->
        <td width="15"><img src="/images/clear.gif" alt="" width="15" height="10" border="0"></td>
<!-- Gutter ends -->

<!--Right Column begins -->
        <td width="170" valign="top" bgcolor="#547584">
            <table width="100%" cellpadding="0" cellspacing="0" align="center" border="0">
                <tr><td align="left" valign="top"><a href="testdrives_index.jsp"><img src="/images/promotion.gif" alt="" width="150" height="135" border="0"/></a></td></tr>
                <tr><td align="left" valign="top"><a href="testdrives_index.jsp"><img src="/images/promotion.gif" alt="" width="150" height="135" border="0"/></a></td></tr>
                <tr><td align="left" valign="top"><a href="testdrives_index.jsp"><img src="/images/promotion.gif" alt="" width="150" height="135" border="0"/></a></td></tr>
                <tr><td align="left" valign="top"><a href="testdrives_index.jsp"><img src="/images/promotion.gif" alt="" width="150" height="135" border="0"/></a></td></tr>
            </table>
        </td>
<!--Right Column ends -->

<!-- Gutter begins -->
        <td width="10"><img src="/images/clear.gif" alt="" width="10" height="10" border="0"></td>
<!-- Gutter ends -->

    </tr>
</table>

<jsp:include page="/includes/foot.jsp" flush="true" />

</form>
</body>
</html>
