<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../includes/modules/srm_dates.xsl"/>
  <xsl:import href="../includes/modules/common_questions.xsl"/>
  <xsl:import href="../includes/modules/tc_updates.xsl"/>
  <xsl:import href="../includes/modules/last_srm.xsl"/>
  <xsl:import href="../includes/modules/quick_stats_pulldown.xsl"/>
  <xsl:import href="../includes/modules/quick_stats_tidbit.xsl"/>
  <xsl:import href="../includes/modules/countries.xsl"/>    
  <xsl:import href="../includes/modules/coder_week.xsl"/>
  <xsl:import href="../includes/modules/top_10_coders.xsl"/>
  <xsl:import href="../includes/modules/round_table.xsl"/>
  <xsl:import href="../includes/modules/practice_room.xsl"/>
  <xsl:import href="../includes/modules/module_login.xsl"/>
  <xsl:import href="../includes/modules/arena.xsl"/>  
  <xsl:import href="../includes/modules/calendar.xsl"/>  
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template name="PublicBody">
<!-- Body Begins -->
<TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC">
  <TR>
    <TD VALIGN="top" COLSPAN="3"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/><BR/>
      <!-- SRM Promo Begins -->
      <!-- SRM Promo Ends -->    
    </TD>
    <!-- Right Column Include Begins -->
    <!-- Gutter -->
    <TD WIDTH="3" ROWSPAN="2" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="3" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
  <!-- Right Column Begins -->
    <TD WIDTH="170" ROWSPAN="2" BGCOLOR="#CCCCCC" VALIGN="top"><!-- <IMG SRC="/i/clear.gif" WIDTH="170" HEIGHT="1" BORDER="0"/><BR/> --> 
<xsl:call-template name="calendar"/>
<IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="3" BORDER="0"/>
<xsl:call-template name="module_login"/> 
<xsl:call-template name="top_10_coders"/>
<xsl:call-template name="arena"/>
<!-- <xsl:call-template name="round_table"/>
                <xsl:choose>
                  <xsl:when test="/TC/LoggedIn='true'">
                  </xsl:when>                  
                  <xsl:otherwise>
                     <xsl:call-template name="practice_room"/>
                  </xsl:otherwise>
                </xsl:choose> -->
    </TD>
  <!-- Right Column Ends -->
    
  <!-- Gutter -->
    <TD WIDTH="25" ROWSPAN="2" BGCOLOR="#CCCCCC"><IMG SRC="/i/clear.gif" WIDTH="25" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->       
  </TR>    
   <TR>
<!-- Left Column Include Begins -->   
  <!-- Gutter Begins -->
    <!-- <TD WIDTH="1" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD> -->
     <!-- Gutter Ends -->
    <!-- Left Column Begins -->
    <TD WIDTH="170" BGCOLOR="#CCCCCC" VALIGN="top"><!-- <IMG SRC="/i/clear.gif" WIDTH="170" HEIGHT="1" BORDER="0" VSPACE="5"><BR/> -->
<xsl:call-template name="srm_dates"/>
<IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="3" BORDER="0"/>
<xsl:call-template name="common_questions"/>
<xsl:call-template name="tc_updates"/>
<xsl:call-template name="countries"/>
<IMG SRC="/i/logo_ghosted_bracket.gif" WIDTH="160" HEIGHT="77" BORDER="0" ALT="[ TopCoder ]" VSPACE="5"/>
      </TD>    
  <!-- Left Column Ends -->
  <!-- Gutter Begins -->
    <TD WIDTH="3" BGCOLOR="#CCCCCC" VALIGN="top"><IMG SRC="/i/clear.gif" WIDTH="3" HEIGHT="1" BORDER="0"/></TD>
    <!-- Gutter Ends -->
<!-- Left Column Include Ends -->

<!-- Body Area -->
  <!-- Center Column Begins -->  
    <TD WIDTH="100%" VALIGN="top" ALIGN="center">
  <!-- Motorola Promo Begins -->
      <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC" WIDTH="100%">
        <TR>
          <TD WIDTH="187" VALIGN="top" BGCOLOR="#990000"><A HREF="/?ContestId=4095&amp;t=schedule&amp;c=srm"><IMG SRC="/i/moto_promo1.gif" ALT="" WIDTH="240" HEIGHT="161" BORDER="0"/></A></TD>
          <TD WIDTH="285" VALIGN="top" BGCOLOR="#990000"><A HREF="/i/mot_redir.html" target="_blank"><IMG SRC="/i/moto_promo2.gif" ALT="" WIDTH="244" HEIGHT="161" BORDER="0"/></A></TD>
          <TD WIDTH="100%" BACKGROUND="/i/mot_promo_bg.gif" BGCOLOR="#990000" VALIGN="top"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
          <TD WIDTH="20" BACKGROUND="/i/mot_promo_bg.gif" BGCOLOR="#990000" VALIGN="top" ALIGN="right"><IMG SRC="/i/mot_promo_top_rt.gif" ALT="" WIDTH="23" HEIGHT="22" BORDER="0"/></TD>          
        </TR>
      </TABLE>
     <!-- Motorola Promo Ends -->
  <!-- Sun Promo Begins -->
      <!-- <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" BGCOLOR="#CCCCCC" WIDTH="100%">
        <TR>
          <TD WIDTH="187" VALIGN="top" BGCOLOR="#43515E"><A HREF="/?t=schedule&amp;c=tourny_sched"><IMG SRC="/i/sun_promo1.jpg" ALT="" WIDTH="240" HEIGHT="161" BORDER="0"/></A></TD>
          <TD WIDTH="285" VALIGN="top" BGCOLOR="#43515E"><A HREF="/i/sun_redir.html" target="_blank"><IMG SRC="/i/sun_promo2.gif" ALT="" WIDTH="244" HEIGHT="161" BORDER="0"/></A></TD>
          <TD WIDTH="100%" BACKGROUND="/i/sun_promo_bg.gif" BGCOLOR="#43515E" VALIGN="top"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
          <TD WIDTH="20" BACKGROUND="/i/sun_promo_bg.gif" BGCOLOR="#43515E" VALIGN="top" ALIGN="right"><IMG SRC="/i/sun_promo_top_rt.gif" ALT="" WIDTH="23" HEIGHT="22" BORDER="0"/></TD>          
        </TR>
      </TABLE> -->
     <!-- Sun Promo Ends -->   
     
    
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" BACKGROUND="/i/steel_darkblue_bg.gif">
  <TR>
    <TD VALIGN="top" WIDTH="100%" BGCOLOR="#FFFFFF"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="17" BORDER="0"/></TD>
  </TR>   
  <TR>
    <TD VALIGN="top" WIDTH="100%" NOWRAP="0" BGCOLOR="#44515E" ALIGN="center"><A HREF="/?t=schedule&amp;c=tourny_sched"><IMG SRC="/i/sumsemi_sm_top1.gif" ALT="" WIDTH="267" HEIGHT="60" BORDER="0"/><IMG SRC="/i/sumsemi_sm_top2.gif" ALT="" WIDTH="217" HEIGHT="60" BORDER="0"/></A></TD>
  </TR>   
  <TR>
    <TD VALIGN="top" WIDTH="100%" BGCOLOR="#FFFFFF" ALIGN="center"><IMG SRC="/i/sumsemi_sm_top3.gif" ALT="" WIDTH="484" HEIGHT="17" BORDER="0"/></TD>
  </TR> 
</TABLE>  

<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" BACKGROUND="/i/steel_darkblue_bg.gif">   
  <TR>
    <TD VALIGN="top" align="center"><A HREF="/?t=schedule&amp;c=tourny_sched"><IMG SRC="/i/sunsemi1_sm.gif" ALT="" WIDTH="267" HEIGHT="161" BORDER="0" VSPACE="3"/><IMG SRC="/i/sunsemi2_sm.gif" ALT="" WIDTH="217" HEIGHT="161" BORDER="0" VSPACE="3"/></A></TD>
    <!-- <TD VALIGN="top" COLSPAN="2" ALIGN="left" BGCOLOR="#FFFFFF"></TD> -->
  </TR> 
  <TR>
    <TD VALIGN="top" COLSPAN="2" WIDTH="100%" ALIGN="left" BGCOLOR="#FFFFFF"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/><IMG SRC="/i/label_tourney_breakdown.gif" ALT="" WIDTH="220" HEIGHT="26" BORDER="0"/></TD>
    <!-- <TD VALIGN="top" WIDTH="33%" COLSPAN="2" ALIGN="left" BGCOLOR="#FFFFFF"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD>
    <TD VALIGN="top" WIDTH="33%" COLSPAN="3" ALIGN="left" BGCOLOR="#FFFFFF"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD> -->
  </TR>   
</TABLE>

<!-- Favs, Cinder, Who to Watch --> 
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" BACKGROUND="/i/steel_darkblue_bg.gif">  
  <TR>
    <TD VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="26" BORDER="0"/></TD>  
    <TD VALIGN="top" WIDTH="33%" ALIGN="left" CLASS="statText"><DIV><A HREF="/index?t=statistics&amp;c=2002tccc_favs"><IMG SRC="/i/tourny_badge_favs.gif" ALT="" WIDTH="150" HEIGHT="41" BORDER="0" VSPACE="4"/></A></DIV>
    <IMG SRC="/i/m/dmwright_mug.gif" ALT="" WIDTH="55" HEIGHT="61" BORDER="0" HSPACE="8" VSPACE="1" ALIGN="left"/>
<A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=114853" CLASS="coderTextRed">dmwright</A><BR/>
The big cheese.  The head honcho.  The top gun.  The dictionary defines a favorite as "a competitor judged most likely to win".  And win is exactly what the favorites have done so far in their TopCoder careers, as all of the favorites are among the top-25 in all-time room wins.  Let's take a deeper look at the four coders who have earned the distinction as favorites...<A HREF="/?t=statistics&amp;c=2002tccc_favs" CLASS="statText">click here</A><BR/><BR/>
</TD>
    <TD VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>    
    <TD VALIGN="top" WIDTH="33%"  ALIGN="left" CLASS="statText"><DIV><A HREF="/index?t=statistics&amp;c=2002tccc_cind"><IMG SRC="/i/tourny_badge_cind.gif" ALT="" WIDTH="150" HEIGHT="41" BORDER="0" VSPACE="4"/></A></DIV>
    <IMG SRC="/i/m/ante_mug.gif" ALT="" WIDTH="55" HEIGHT="61" BORDER="0" HSPACE="8" VSPACE="1" ALIGN="left"/>
<A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=264869" CLASS="coderTextYellow">ante</A><BR/>
Every competition has them.  The 1980 "Miracle on Ice" US Mens Ice Hockey Team, Buster Douglas, Rocky Balboa, the New England Patriots, and most recently Sarah Hughes.  They're what make tournaments fun, interesting and compelling. They also provide a ton of emotional drama.  It's the American way; everyone loves the underdog...<A HREF="/?t=statistics&amp;c=2002tccc_cind" CLASS="statText">click here</A><BR/><BR/>
</TD>
    <TD VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>    
    <TD VALIGN="top" WIDTH="33%" ALIGN="left" CLASS="statText"><DIV><A HREF="/index?t=statistics&amp;c=2002tccc_eyeon"><IMG SRC="/i/tourny_badge_eyeon.gif" ALT="" WIDTH="150" HEIGHT="41" BORDER="0" VSPACE="4"/></A></DIV>
    <IMG SRC="/i/m/milhouse_mug.gif" ALT="" WIDTH="55" HEIGHT="61" BORDER="0" HSPACE="8" VSPACE="1" ALIGN="left"/>
<A HREF="/?t=statistics&amp;c=member_profile&amp;Coder_Id=154089" CLASS="coderTextRed">milhouse</A><BR/>    
These are the coders that the top-seeds fear the most.  They are either TopCoder veterans, TopCoder tournament tested, those who had outstanding performances with top scores in the Regional Quarterfinals and/or Regional Semifinals, or all of the above...<A HREF="/?t=statistics&amp;c=2002tccc_eyeon" CLASS="statText">click here</A><BR/><BR/></TD>
    <TD VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>    
  </TR>  
</TABLE>
     
    <!-- Last SRM Begins --> 
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
  <TR>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="11" ALIGN="right"><IMG SRC="/i/steelblue_top_left1.gif" ALT="" WIDTH="11" HEIGHT="26" BORDER="0"/></TD>
    <TD VALIGN="top" WIDTH="75" ALIGN="left" BGCOLOR="#FFFFFF"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD>
    <TD CLASS="header" VALIGN="middle" BGCOLOR="#FFFFFF" WIDTH="184"><A HREF="/index?t=statistics&amp;c=match_summary"><IMG SRC="/i/label_srm_summary.gif" ALT="Last Match Summary" WIDTH="184" HEIGHT="26" BORDER="0"/></A></TD>
    <TD CLASS="header" VALIGN="middle" BGCOLOR="#FFFFFF" WIDTH="100%" ALIGN="right"><A HREF="/stat?c=last_match"><IMG SRC="/i/label_view_results.gif" ALT="View Results" WIDTH="194" HEIGHT="26" BORDER="0"/></A></TD>
    <!-- <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="10" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="26" BORDER="0"/></TD> -->
  </TR>
</TABLE>  
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">  
  <TR>
    <TD VALIGN="top" WIDTH="11" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
    <TD COLSPAN="2" VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
<xsl:call-template name="last_srm"/>
    </TD>
    <TD VALIGN="top" WIDTH="10" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
  </TR>
  <TR>
    <TD COLSPAN="4" VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
  </TR>     
  <TR>
    <TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="14"><IMG SRC="/i/clear.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
    <TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
  </TR>  
</TABLE>
    <!-- Last SRM Ends -->                     
  <!-- Division I Begins -->
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" WIDTH="100%">
  <TR>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="11" ALIGN="right"><IMG SRC="/i/steelblue_top_left1.gif" ALT="" WIDTH="11" HEIGHT="26" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="75" ALIGN="left"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD>
    <TD CLASS="bodySubHead" VALIGN="middle" BGCOLOR="#FFFFFF" WIDTH="60%"><A HREF="/stat?c=all_time_wins_by_div&amp;dn=1"><IMG SRC="/i/label_div_1.gif" ALT="Division I" WIDTH="116" HEIGHT="26" BORDER="0" ALIGN="left"/></A></TD>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="10" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="26" BORDER="0"/></TD>
    <TD ROWSPAN="8" VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="2"><IMG SRC="/i/clear.gif" ALT="" WIDTH="2" HEIGHT="1" BORDER="0"/></TD>
    <TD ROWSPAN="8" VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="40%">
  <!-- Featured Stats Begins -->  
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#FFFFFF">
        <TR>
          <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="11" ALIGN="right" BACKGROUND=""><IMG SRC="/i/steelblue_top_left1.gif" ALT="" WIDTH="11" HEIGHT="26" BORDER="0"/></TD>
          <TD VALIGN="top" WIDTH="75" ALIGN="left" BGCOLOR="#FFFFFF" BACKGROUND=""><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD>
          <TD CLASS="bodySubHead" VALIGN="middle" BGCOLOR="#FFFFFF" BACKGROUND="" WIDTH="100%"><IMG SRC="/i/label_quick_stats_sm.gif" ALT="Quick Stats" WIDTH="104" HEIGHT="26" BORDER="0"/></TD>
          <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="10" ALIGN="right" BACKGROUND=""><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="26" BORDER="0"/></TD>
        </TR>
  <!-- <TR>
    <TD COLSPAN="4" VALIGN="top" BGCOLOR="#999999" WIDTH="50%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="2" BORDER="0"/></TD>
  </TR> --> 
        <TR>
          <TD VALIGN="top" WIDTH="11" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
          <TD COLSPAN="2" VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="105" HEIGHT="1" BORDER="0"/><BR/>
            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="2" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
              <TR>
                <TD CLASS="statText" VALIGN="top" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>
              </TR>              
              <TR>
                <TD CLASS="statText" VALIGN="top" COLSPAN="3">Select a Quick Stat from the menu below.</TD>
              </TR>
              <TR>
                <TD CLASS="statText" VALIGN="top" COLSPAN="3"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>
              </TR>                              
               <TR>
                <TD CLASS="quickstatText" VALIGN="top" COLSPAN="3">
    <!-- Quick Stat Pulldown Begins --> 
<xsl:call-template name="quick_stats_pulldown"/>
    <!-- Quick Stat Pulldown Ends -->
                </TD>
              </TR>                 
            </TABLE> 
    <!-- Quick Stat Pulldown Begins --> 
<xsl:call-template name="quick_stats_tidbit"/>
    <!-- Quick Stat Pulldown Ends -->              
          </TD>
          <TD VALIGN="top" WIDTH="10" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="1" BORDER="0"/></TD>
        </TR>
  <!-- <TR>
    <TD COLSPAN="4" VALIGN="top" BGCOLOR="#999999" WIDTH="40%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="2" BORDER="0"/></TD>
  </TR>     
  <TR>
    <TD VALIGN="top" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" WIDTH="75"><IMG SRC="/i/clear.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
  </TR>  
  <TR>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="11" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="14"><IMG SRC="/i/table_btm_left2.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="40%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#999999" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
  </TR> -->
      </TABLE>
  <!-- Featured Stats Ends -->
    </TD>
  </TR>
  <TR>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="2" VALIGN="top" BGCOLOR="#000033" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="105" HEIGHT="1" BORDER="0"/><BR/>
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
        <TR>
          <TD COLSPAN="4" WIDTH="1"><IMG HEIGHT="3" WIDTH="1" SRC="/i/clear.gif"/></TD>
        </TR>
        <TR>
          <TD BACKGROUND="/i/steel_gray_bg3.gif" CLASS="registerNav" COLSPAN="4" VALIGN="middle" HEIGHT="14">&#160;&#160;Top-3 room winners from the last match<!-- Top-3 winners from match 71 - Mar. 11 --></TD>
        </TR>        
        <TR>
          <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="4"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>    
        </TR>                
        <TR>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="10" HEIGHT="13">&#160;&#160;Place&#160;&#160;&#160;</TD>  
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" WIDTH="32%">Handle</TD>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="32%">Room#</TD>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="32%">Points</TD>  
        </TR>
        <TR>
          <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="4" CLASS="smallFoot"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>    
        </TR> 
        <!-- <TR>
          <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="4" CLASS="statTextBig">There were no Division-I coders in this round.<BR/><BR/></TD>    
        </TR> -->                
        <TR>
          <TD CLASS="statText" ALIGN="right" VALIGN="middle" HEIGHT="12">&#160;&#160;&#160;1st.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=152073" CLASS="coderTextRed">NDBronson</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1360.71</TD>  
        </TR>    
        <TR>
          <TD CLASS="statText" VALIGN="middle" ALIGN="right" HEIGHT="12">2nd.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=264869" CLASS="coderTextRed">ante</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">2</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1257.66</TD>
        </TR>
        <TR>
          <TD CLASS="statText" ALIGN="right" VALIGN="middle" HEIGHT="12">3rd.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=262902" CLASS="coderTextYellow">ZandMaster</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">3</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1184.24</TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
        </TR>                          
      </TABLE>  
    </TD>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
  </TR>
  <!-- <TR>
    <TD COLSPAN="4" VALIGN="top" BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="10" BORDER="0"/></TD>
  </TR> -->  
  <!-- Division I Ends -->
  <!-- Division II Begins -->
  <TR>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="11" ALIGN="right"><IMG SRC="/i/steelblue_top_left1.gif" ALT="" WIDTH="11" HEIGHT="26" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="75" ALIGN="left"><IMG SRC="/i/steelblue_top_left2.gif" ALT="" WIDTH="75" HEIGHT="26" BORDER="0"/></TD>
    <TD CLASS="bodySubHead" VALIGN="middle" BGCOLOR="#FFFFFF" WIDTH="100%"><A HREF="/stat?c=all_time_wins_by_div&amp;dn=2"><IMG SRC="/i/label_div_2.gif" ALT="Division II" WIDTH="116" HEIGHT="26" BORDER="0" ALIGN="left"/></A></TD>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="10" ALIGN="right"><IMG SRC="/i/clear.gif" ALT="" WIDTH="10" HEIGHT="26" BORDER="0"/></TD>
  </TR>
  <TR>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
    <TD COLSPAN="2" VALIGN="top" BGCOLOR="#000033" WIDTH="100%" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="105" HEIGHT="1" BORDER="0"/><BR/>
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%">
        <TR>
          <TD COLSPAN="4" WIDTH="1"><IMG HEIGHT="3" WIDTH="1" SRC="/i/clear.gif"/></TD>
        </TR>
        <TR>
          <TD BACKGROUND="/i/steel_gray_bg3.gif" CLASS="registerNav" COLSPAN="4" VALIGN="middle" HEIGHT="14">&#160;&#160;Top-3 room winners from the last match<!-- Top-3 winners from match 71 - Mar. 11 --></TD>
        </TR>        
        <TR>
          <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="4"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>    
        </TR>      
        <TR>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="10" HEIGHT="13">&#160;&#160;Place&#160;&#160;&#160;</TD>  
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" WIDTH="32%">Handle</TD>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="32%">Room#</TD>
          <TD BACKGROUND="/i/steel_bluebv_bg.gif" CLASS="smallFoot" VALIGN="middle" ALIGN="center" WIDTH="32%">Points</TD>  
        </TR>
        <TR>
          <TD BACKGROUND="/i/steel_darkblue_bg.gif" COLSPAN="4" CLASS="smallFoot" WIDTH="1"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>    
        </TR>        
        <TR>
          <TD CLASS="statText" ALIGN="right" VALIGN="middle" HEIGHT="12">&#160;&#160;&#160;1st.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=272072" CLASS="coderTextYellow">SnapDragon</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">53</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1523.54</TD>  
        </TR>    
        <TR>
          <TD CLASS="statText" VALIGN="middle" ALIGN="right" HEIGHT="12">2nd.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=260292" CLASS="coderTextBlue">mcarland</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">23</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1391.82</TD>
        </TR>
        <TR>
          <TD CLASS="statText" ALIGN="right" VALIGN="middle" HEIGHT="12">3rd.&#160;&#160;&#160;</TD>
          <TD CLASS="statText" VALIGN="middle"><A HREF="/stat?c=member_profile&amp;cr=155031" CLASS="coderTextBlue">e-Motion</A></TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">22</TD>
          <TD CLASS="statText" VALIGN="middle" ALIGN="center">1385.04</TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="3" BORDER="0"/></TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_blue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
        </TR>
        <TR>
          <TD  COLSPAN="4" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="smallText"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
        </TR>          
      </TABLE>  
    </TD>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" WIDTH="11"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="1" BORDER="0"/></TD>
  </TR>
  <!-- <TR>
    <TD COLSPAN="4" VALIGN="top" BGCOLOR="#000033" WIDTH="100%" BACKGROUND="/i/steel_blue_bg.gif"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="5" BORDER="0"/></TD>
  </TR> -->    
  <TR>
    <TD VALIGN="top" WIDTH="11" ALIGN="right" BGCOLOR="#FFFFFF"><IMG SRC="/i/clear.gif" ALT="" WIDTH="11" HEIGHT="8" BORDER="0"/></TD>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="14"><IMG SRC="/i/table_mid_left_blue_home.gif" ALT="" WIDTH="14" HEIGHT="8" BORDER="0"/></TD>
    <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top" BGCOLOR="#000033" WIDTH="100%"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
    <TD VALIGN="top" BGCOLOR="#FFFFFF" WIDTH="10"><IMG SRC="/i/clear.gif" ALT="" WIDTH="1" HEIGHT="1" BORDER="0"/></TD>
  </TR>  
</TABLE>
  <!-- Division II Ends -->
 <!-- Coder of the Week Begins -->
<xsl:call-template name="coder_week"/>
<!-- Coder of the Week Ends -->       
    </TD>
  <!-- Center Column Ends -->
<!-- Body Area Ends -->
  </TR>   
</TABLE>
  </xsl:template>
</xsl:stylesheet>
