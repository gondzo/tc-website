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
  <xsl:with-param name="image1">white</xsl:with-param>
  <xsl:with-param name="image">statisticsw</xsl:with-param>
  <xsl:with-param name="title">&#160;Last Match Editorials</xsl:with-param>
</xsl:call-template>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#FFFFFF" WIDTH="100%">
  <TR>
    <TD BGCOLOR="#FFFFFF" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
    <TD CLASS="bodyText" COLSPAN="2" VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="240" HEIGHT="1" BORDER="0"/><BR/>
<!--body contextual links-->
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="1" VALIGN="top" WIDTH="250" ALIGN="right">
 	<TR>
        <TD ROWSPAN="5" VALIGN="top" BGCOLOR="#FFFFFF" CLASS="smallText"><IMG SRC="/i/clear.gif" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
        <TD COLSPAN="2" BGCOLOR="#FFFFFF" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
    </TR> 
	<TR><TD COLSPAN="2" BGCOLOR="#999999" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="150" HEIGHT="1" BORDER="0"/></TD></TR>
	<TR>
		<TD VALIGN="top" BGCOLOR="#999999" CLASS="moduleTitle">&#160; &#160;</TD>
		<TD BGCOLOR="#999999" VALIGN="top" CLASS="moduleTitle">MATCH EDITORIAL LINKS:</TD>
	</TR>                    
	<TR>
    	<TD COLSPAN="4" VALIGN="top" BGCOLOR="#999999">
		<TABLE BORDER="0" WIDTH="100%" CELLSPACING="0" CELLPADDING="2" BGCOLOR="#CCCCCC">
		<TR>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="/?t=statistics&amp;c=srm96_room1" CLASS="bodyText">&#160;&#160;Room 1 Review</A></TD>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="/index?t=statistics&amp;c=editorial_archive" CLASS="bodyText">Editorial Archive</A></TD>
		</TR>
		<TR>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="/?t=statistics&amp;c=srm96_rookie" CLASS="bodyText">&#160;&#160;Rookie Review</A></TD>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="mailto:editorial@topcoder.com" CLASS="bodyText">Comments? Ideas?</A></TD>
		</TR>
		<TR>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="/?t=statistics&amp;c=srm96_prob" CLASS="bodyText">&#160;&#160;Problem Set</A></TD>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="mailto:editorial@topcoder.com" CLASS="bodyText">Want to write a feature?</A></TD>
		</TR>
	    <!-- <TR>
			<TD VALIGN="top" CLASS="bodyText"><A HREF="/?t=statistics&amp;c=srm96_lessons" CLASS="bodyText">&#160;&#160;Lessons Learned</A></TD>
			<TD VALIGN="top" CLASS="bodyText">&#160;</TD>
		</TR> -->
		<TR><TD VALIGN="top" COLSPAN="4" CLASS="smallText"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="5" BORDER="0"/></TD></TR>    		
		</TABLE>
		</TD>
	</TR>
 	<TR><TD COLSPAN="2" VALIGN="top" BGCOLOR="#FFFFFF" CLASS="smallText"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="10" BORDER="0"/></TD></TR>                
</TABLE>
<!--end contextual links-->
<IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="48" BORDER="0"/><BR/>
<!--<A HREF="stat?c=round_stats&amp;rd=4165&amp;dn=2" CLASS="bodyGeneric">-->
<P><B>Single Round Match 96</B><BR/>
June 11, 2002</P>
<P><B>Room 1 Review</B></P>

<b>Coding Phase</b>
<p>
            The contest began in a very competitive manner, when four coders submitted their solutions
            to the Level 1 problem all within a single minute.
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=154754&amp;rd=4200&amp;rm=5852">kv</a>, <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a>, <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=274023&amp;rd=4200&amp;rm=5852">venco</a>, and <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=272072&amp;rd=4200&amp;rm=5852">SnapDragon</a>
            started out with scores with a range of only 2 points.
        </p>
<p>
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a> took over the lead at the 24 minute mark with his submission of
            the Level 2 problem for 396.86 points (for the best Level 2 score across division 1).
            After looking at the Level 2 problem for 15 minutes, <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=270505&amp;rd=4200&amp;rm=5852">John Dethridge</a> gave up
            and attacked the Level 3 problem.  This resulted in his taking over the lead with his
            submission for 583.53 points (for the best Level 3 score across division 1).
        </p>
<p>
            However, it would be the coders that managed to complete all three problems that would rule the day.
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a> would be first to complete the entire set, submitting the Level 3 problem
            for 471.14 points with 15 minutes remaining in the Coding Phase.  This would later be trumped
            by <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=156592&amp;rd=4200&amp;rm=5852">benetin</a>'s submission for 564.92 points, with 5 minutes remaining.
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a> was the last coder to complete the entire set, submitting his
            Level 3 solution with only a minute remaining in the Coding Phase for 337.16 points.
        </p>
<p>
        At the end of the Coding Phase, the scores were:
    </p>
<ol>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=156592&amp;rd=4200&amp;rm=5852">benetin</a>
            - 1138.47</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a>
            - 1137.03</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a>
            - 968.17</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=270505&amp;rd=4200&amp;rm=5852">John Dethridge</a>
            - 836.37</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a>
            - 611.04</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=142795&amp;rd=4200&amp;rm=5852">Joe</a>
            - 550.54</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=272072&amp;rd=4200&amp;rm=5852">SnapDragon</a>
            - 519.74</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=154754&amp;rd=4200&amp;rm=5852">kv</a>
            - 510.56</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=274023&amp;rd=4200&amp;rm=5852">venco</a>
            - 507.68</li>
</ol>
<b>Challenge Phase</b>
<p>
            Only one challenge occurred during the Challenge Phase.  <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a> challenged
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a>'s Level 2 problem after noticing a fencepost error.
            This knocked <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a> from third to fifth place and moved <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a>
            up to fourth.
        </p>
<p>
        At the end of the Challenge Phase, the scores were:
    </p>
<ol>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=156592&amp;rd=4200&amp;rm=5852">benetin</a>
            - 1138.47</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a>
            - 1137.03</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=270505&amp;rd=4200&amp;rm=5852">John Dethridge</a>
            - 836.37</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a>
            - 661.04</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a>
            - 596.61</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=142795&amp;rd=4200&amp;rm=5852">Joe</a>
            - 550.54</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=272072&amp;rd=4200&amp;rm=5852">SnapDragon</a>
            - 519.74</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=154754&amp;rd=4200&amp;rm=5852">kv</a>
            - 510.56</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=274023&amp;rd=4200&amp;rm=5852">venco</a>
            - 507.68</li>
</ol>
<b>System Test Phase</b>
<p>
            Only one submission failed the system tests.  <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=156592&amp;rd=4200&amp;rm=5852">benetin</a>'s Level 3 problem failed,
            knocking him from first place to fifth place.  This left <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a> as the only
            coder in Room 1 to solve the entire problem set, consequently giving him the win for the night.
            <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=270505&amp;rd=4200&amp;rm=5852">John Dethridge</a>'s impressive performance on the two problems he did complete
            gave him a strong second place finish, with <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a> coming in at third.
        </p>
<b>Final Results</b>
<ol>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=152347&amp;rd=4200&amp;rm=5852">ZorbaTHut</a>
            - 1137.03</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=270505&amp;rd=4200&amp;rm=5852">John Dethridge</a>
            - 836.37</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=260835&amp;rd=4200&amp;rm=5852">reid</a>
            - 661.04</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=158067&amp;rd=4200&amp;rm=5852">KurtSteinkraus</a>
            - 596.61</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=156592&amp;rd=4200&amp;rm=5852">benetin</a>
            - 573.55</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=142795&amp;rd=4200&amp;rm=5852">Joe</a>
            - 550.54</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=272072&amp;rd=4200&amp;rm=5852">SnapDragon</a>
            - 519.74</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=154754&amp;rd=4200&amp;rm=5852">kv</a>
            - 510.56</li>
  <li>
    <a class="bodyGeneric" href="http://www.topcoder.com/stat?c=coder_room_stats&amp;cr=274023&amp;rd=4200&amp;rm=5852">venco</a>
            - 507.68</li>
</ol>


  
<IMG SRC="/i/m/Logan_mug.gif" ALT="" WIDTH="55" HEIGHT="61" BORDER="0" HSPACE="6" VSPACE="1" ALIGN="left"/>
By&#160;Logan<BR/><DIV CLASS="smallText"><I>TopCoder Member</I><BR/><A HREF="/stat?c=member_profile&amp;cr=112902" CLASS="smallText">Author Profile</A></DIV><BR CLEAR="all"/>
          <P><BR/></P>
					</TD>
					<TD VALIGN="top" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
				</TR>
				<TR>
					<TD COLSPAN="4" VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
				</TR>   	
				<TR>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" WIDTH="75"><IMG SRC="/i/table_mid_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
				</TR>	
				<TR>
					<TD VALIGN="top" WIDTH="11" ALIGN="right" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="14"><IMG SRC="/i/table_btm_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
					<TD VALIGN="top" BGCOLOR="#CCCCCC" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
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
<!-- <A HREF="/?&amp;t=sponsor&amp;c=link&amp;link=http://idenphones.motorola.com/iden/developer/developer_home.jsp&amp;refer=srm92"><IMG SRC="/i/motorola_sidebar.gif" ALT="" WIDTH="171" HEIGHT="117" BORDER="0"/></A>
<A href="Javascript:sponsorLinkWindow('/?&amp;t=sponsor&amp;c=link&amp;link=/contest/citrix/index.html&amp;refer=srm91_room1','Citrix','1','1','680','489')"><img src="/i/citrix_sidebar.jpg" ALT="" WIDTH="171" HEIGHT="117" BORDER="0"/></A> -->
<!-- <A HREF="/index?t=schedule&amp;c=tourny_sched"><IMG SRC="/i/tournament/sun_small_banner2.gif" ALT="" WIDTH="170" HEIGHT="84" BORDER="0"/></A> -->
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


