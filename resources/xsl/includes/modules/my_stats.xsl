<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template name="my_stats">
       <TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="0" VALIGN="top"> 
                <TR> 
                  <TD BGCOLOR="#CC9900" HEIGHT="18" VALIGN="middle"><IMG SRC="/i/label_my_stats2.gif" ALT="My Stats" WIDTH="170" HEIGHT="17" BORDER="0"/></TD>
                </TR>
            <TR> 
                <TD BACKGROUND="/i/steel_darkblue_bg.gif" VALIGN="top"> 
                  <TABLE WIDTH="170" CELLSPACING="0" CELLPADDING="0" BORDER="0" BGCOLOR="#000033" BACKGROUND="/i/steel_darkblue_bg.gif">                
        <TR><TD COLSPAN="3" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="3" BORDER="0"/></TD></TR>
        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A><xsl:attribute name="HREF">/stat?c=member_profile&amp;cr=<xsl:value-of select="/TC/UserId"/></xsl:attribute><xsl:attribute name="CLASS">subNav</xsl:attribute>Profile</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>         

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A><xsl:attribute name="HREF">/stat?c=ratings_history&amp;cr=<xsl:value-of select="/TC/UserId"/></xsl:attribute><xsl:attribute name="CLASS">subNav</xsl:attribute>Ratings History</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>          

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A><xsl:attribute name="HREF">/stat?c=earnings_history&amp;cr=<xsl:value-of select="/TC/UserId"/></xsl:attribute><xsl:attribute name="CLASS">subNav</xsl:attribute>Earnings History</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>          

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A><xsl:attribute name="HREF">/stat?c=coder_room_stats&amp;cr=<xsl:value-of select="/TC/UserId"/></xsl:attribute><xsl:attribute name="CLASS">subNav</xsl:attribute>Room Statistics</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>          

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/stat?c=round_stats" CLASS="subNav">Round Statistics</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>                

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/index?t=search" CLASS="subNav">Member Search</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/PactsMemberServlet" CLASS="subNav">Affidavits</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/index?t=search&amp;c=refer" CLASS="subNav">My Referrals</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/index?t=development&amp;c=index" CLASS="subNav">Development</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>  

        <TR><TD VALIGN="top" BACKGROUND="/i/steel_darkblue_bg.gif" CLASS="subNav" ALIGN="right"><IMG SRC="/i/mystats_icon.gif" ALT="" WIDTH="10" HEIGHT="10" BORDER="0" HSPACE="3"/></TD><TD VALIGN="top" HEIGHT="15" BACKGROUND="/i/steel_darkblue_bg.gif" WIDTH="100%"><A HREF="/index?t=tces&amp;c=index" CLASS="subNav">Job Postings</A></TD><TD WIDTH="1" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0"/></TD></TR>

        <TR><TD COLSPAN="3" BACKGROUND="/i/steel_darkblue_bg.gif"><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="1" BORDER="0" VSPACE="2"/></TD></TR>
      </TABLE>
                </TD>
            </TR>
          </TABLE><IMG SRC="/i/clear.gif" WIDTH="1" HEIGHT="3" BORDER="0"/>      
  </xsl:template>
</xsl:stylesheet>
