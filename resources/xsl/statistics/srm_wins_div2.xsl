<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../top.xsl"/>
  <xsl:import href="../script.xsl"/>
  <xsl:import href="../includes/body_top.xsl"/>   
  <xsl:import href="../foot.xsl"/>
  <xsl:import href="../includes/modules/stats_intro.xsl"/>  
  <xsl:import href="../includes/stats/public_stats_left.xsl"/> 
  <xsl:import href="../includes/public_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">
    <HTML>
      <HEAD>
        <xsl:call-template name="Preload"/>      
        <TITLE>TopCoder :: Statistics</TITLE>
        <xsl:call-template name="CSS"/>      
        <!--<LINK REL="stylesheet" TYPE="text/css" HREF="/css/style.css"/>
        <LINK REL="stylesheet" TYPE="text/css" HREF="/css/coders.css"/>-->
        <META NAME="description" CONTENT="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
        <META NAME="keywords" CONTENT="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>
      </HEAD>
      <BODY BGCOLOR="#FFFFFF" TOPMARGIN="0" MARGINHEIGHT="0" LEFTMARGIN="0" MARGINWIDTH="0">
        <xsl:call-template name="Top"/>

<!-- Body Begins -->
<TABLE WIDTH="100%" HEIGHT="69%" BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC">
  <TR>
    <!-- Left Column Begins -->
    <TD WIDTH="170" BGCOLOR="#CCCCCC" VALIGN="top">
<!-- Left Column Include Begins -->  
    <!-- Global Seconday Nav Begins -->        
        <xsl:call-template name="public_stats_left"/>
  <!-- Global Seconday Nav Ends -->      
<!-- Left Column Include Ends -->              
      </TD>
  <!-- Left Column Ends -->
  <!-- Gutter Begins -->
    <TD WIDTH="4" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="8" BORDER="0"/></TD>
    <!-- Gutter Ends -->

<!-- Body Area -->
  <!-- Center Column Begins -->  
    <TD CLASS="bodyText" WIDTH="100%" bgcolor="#CCCCCC" valign="top"><img src="/i/clear.gif" width="240" height="1" VSPACE="5" BORDER="0"/><BR/>
<xsl:call-template name="BodyTop">
  <xsl:with-param name="image1">steelblue</xsl:with-param>
  <xsl:with-param name="image">statistics</xsl:with-param>
  <xsl:with-param name="title">&#160;Quick Stats</xsl:with-param>
</xsl:call-template>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
	<TR>
		<TD BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
		<TD COLSPAN="2" VALIGN="top" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="240" HEIGHT="1" BORDER="0"/><BR/>
<xsl:choose>
<xsl:when test="/TC/LoggedIn='true'">
<P CLASS="statText">
This chart ranks the Top-25 in Room Wins while competing in Division II (through March 11, 2002).
</P>
<P CLASS="statText">
See All-Time Wins for <A HREF="/index?t=statistics&amp;c=srm_wins_div1" CLASS="statTextBig">Division I</A>
</P>
</xsl:when>
<xsl:otherwise>
<P CLASS="statText">
This chart ranks the Top-10 in Room Wins while competing in Division II (through March 11, 2002).
</P>
<P CLASS="statText">
See All-Time Wins for <A HREF="/index?t=statistics&amp;c=srm_wins_div1" CLASS="statTextBig">Division I</A>
</P>
</xsl:otherwise>
</xsl:choose>
    <!-- Stats Intro Begins -->
        <xsl:call-template name="stats_intro"/>
	<!-- Stats Intro Ends -->

<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
	<TR>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="3" CLASS="smallFoot"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="4" BORDER="0"/></TD>		
	</TR>
	<TR>
		<TD BACKGROUND="/i/steel_gray_bg.gif" COLSPAN="3" CLASS="statTextBig" VALIGN="middle" HEIGHT="18">&#160;All-Time Wins - Division II</TD>		
	</TR>
	<TR>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="3" CLASS="smallFoot" WIDTH="1"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>		
	</TR>	
	<TR>
		<TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statText" VALIGN="middle" ALIGN="center" WIDTH="10" HEIGHT="18">&#160;</TD>	
		<TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statText" VALIGN="middle" ALIGN="left" WIDTH="50%">Handle</TD>
		<TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="statText" VALIGN="middle" ALIGN="center" WIDTH="50%">Wins</TD>	
	</TR>
	<TR>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="3" CLASS="smallFoot" WIDTH="1"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>		
	</TR>
<xsl:choose>
<xsl:when test="/TC/LoggedIn='true'">
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">1.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=143845" CLASS="coderTextYellow">skazzytl</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">14</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T2.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=111057" CLASS="coderTextBlue">bm999</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">12</TD>
	</TR>    
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T2.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=141187" CLASS="coderTextBlue">gsh</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">12</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=141448" CLASS="coderTextYellow">claw</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
  	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=154074" CLASS="coderTextYellow">dimer0</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=113491" CLASS="coderTextYellow">hilgart</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=109527" CLASS="coderTextBlue">patsup</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=152614" CLASS="coderTextYellow">stkaway</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">9.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=111435" CLASS="coderTextBlue">overflow</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">10</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=139080" CLASS="coderTextYellow">bbeck13</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>    
  	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=143330" CLASS="coderTextBlue">BitConductor</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=151360" CLASS="coderTextYellow">buddh4sack</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=155031" CLASS="coderTextBlue">e-Motion</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
  	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=151059" CLASS="coderTextBlue">jthomas</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=104810" CLASS="coderTextYellow">marmaros</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=119676" CLASS="coderTextBlue">Pops</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>    
   	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=112441" CLASS="coderTextYellow">seacow</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
 	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T10.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=124856" CLASS="coderTextBlue">wyzmo</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">9</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=156640" CLASS="coderTextBlue">Arremoon</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=155069" CLASS="coderTextBlue">chi</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>	
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=156017" CLASS="coderTextBlue">czth</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=142986" CLASS="coderTextGreen">dcros</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
 	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=132980" CLASS="coderTextBlue">Hao</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
 	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=138158" CLASS="coderTextBlue">leelin</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=129063" CLASS="coderTextBlue">mktong</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=156768" CLASS="coderTextYellow">Nok</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=154364" CLASS="coderTextYellow">schrockn</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T19.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=150905" CLASS="coderTextBlue">solman</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">8</TD>
	</TR>	
</xsl:when>
<xsl:otherwise>		
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">1.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=143845" CLASS="coderTextYellow">skazzytl</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">14</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T2.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=111057" CLASS="coderTextBlue">bm999</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">12</TD>
	</TR>    
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T2.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=141187" CLASS="coderTextBlue">gsh</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">12</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=141448" CLASS="coderTextYellow">claw</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
  	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=154074" CLASS="coderTextYellow">dimer0</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=113491" CLASS="coderTextYellow">hilgart</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=109527" CLASS="coderTextBlue">patsup</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T4.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=152614" CLASS="coderTextYellow">stkaway</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">11</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T9.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=151360" CLASS="coderTextYellow">buddh4sack</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">10</TD>
	</TR>
	<TR>
		<TD CLASS="smallFoot" ALIGN="right" HEIGHT="13">T9.&#160;</TD>
		<TD VALIGN="middle"><A HREF="/index?t=statistics&amp;c=member_profile&amp;Coder_Id=111435" CLASS="coderTextBlue">overflow</A></TD>
		<TD CLASS="statText" VALIGN="middle" ALIGN="center">10</TD>
	</TR>
</xsl:otherwise>
</xsl:choose>	
  <TR>
      <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>    
    </TR>
    <TR>
      <TD BACKGROUND="/i/steel_blue_bg.gif" CLASS="statText" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
    </TR>
    <TR>
        <TD BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="statText" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="16" BORDER="0"/></TD>
    </TR>    
</TABLE>  
		</TD>
		<TD VALIGN="top" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
	</TR>
	<TR>
		<TD COLSPAN="4" VALIGN="top" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
	</TR>   	
	<TR>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="14"><IMG SRC="/i/table_mid_left2x.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
		<TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
	</TR>	
	<TR>
		<TD VALIGN="top" BACKGROUND="" WIDTH="11" ALIGN="right" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="14"><IMG SRC="/i/table_btm_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
		<TD VALIGN="top" BACKGROUND="" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
	</TR>
</TABLE>
		</TD>
	<!-- Center Column Ends -->
<!-- Body Area Ends -->

	<!-- Gutter -->
		<TD WIDTH="4" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="4" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
	<!-- Right Column Begins -->
		<TD WIDTH="170" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="170" HEIGHT="1" BORDER="0"/><BR/>
<!-- Right Column Include Begins -->        
        <xsl:call-template name="public_right_col"/>        
<!-- Right Column Include Ends -->        
        </TD>
	<!-- Right Column Ends -->
	<!-- Gutter -->
		<TD WIDTH="25" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="25" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
	</TR>
</TABLE>
<!-- Body Ends -->
        <xsl:call-template name="Foot"/>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>

