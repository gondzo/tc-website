<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../top.xsl"/>
  <xsl:import href="../script.xsl"/>
  <xsl:import href="../includes/body_top.xsl"/>  
  <xsl:import href="../foot.xsl"/>
  <xsl:import href="../includes/modules/practice_room.xsl"/>
  <xsl:import href="../includes/modules/calendar.xsl"/>
  <xsl:import href="../includes/global_left.xsl"/> 
  <xsl:import href="../includes/public_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">

<html>

<head>

<script>
function openWin(url, name, w, h) {
    win = window.open(url, 'biowin', "scrollbars=auto,toolbar=no,resizable=no,menubar=no,width="+w+",height="+h);
    win.location.href = url;
    win.focus();
}
</script>

<xsl:call-template name="Preload"/>      

<title>Intel is the title sponsor of the 2003 TopCoder Open</title>

<xsl:call-template name="CSS"/>      

<meta name="description" content="TopCoder is a programming tournament site. All members who compete attain a rating that provides a metric for coding competence and potential. These ratings, coupled with tournament performance, can lead to monetary rewards and employment opportunities."/>
<meta name="keywords" content="Computer Jobs, Programming, Programming Jobs, Programming Contest, Programming Competition, Online Games, Coding, Information Technology Jobs, Java, C++"/>

</head>

<body>

<!-- Header begins -->
<xsl:call-template name="Top"/>
<!-- Header ends -->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">
<!-- Left Column Begins -->
        <td width="180">
            <xsl:call-template name="global_left"/>
        </td>
<!-- Left Column Ends -->

<!-- Center Column Begins -->
        <td align="center">    
            <table border="0" cellspacing="15" cellpadding="0" width="540">
                <tr valign="top">
                    <td colspan="2" align="center"><img src="/i/sponsor/intel_ids/IDS_TC-header.gif" width="510" height="115" /></td>
                </tr> 
                
                <tr align="left">
                    <td class="bodyText" valign="top" width="295" > 
                        <p>With technology complexity increasing at a blistering pace, <a href="https://cedar.intel.com/cgi-bin/ids.dll/registration/regIndex.jsp?action=signup">
                        <strong>Intel&#174; Developer Services</strong> </a> offers the resources and opportunities you need to keep stride with industry innovations, 
                        take advantage of emerging technologies and accelerate the successful development and delivery of your solutions.</p>
                                             
                        <p>How? With offerings such as legacy and emerging code, demos, software documentation, online training, developer forums and 
                        technical white papers, membership with <a href="https://cedar.intel.com/cgi-bin/ids.dll/registration/regIndex.jsp?action=signup"><strong>Intel Developer 
                        Services</strong> </a> gives you FREE access to tools and resources that can maximize your code's performance, give you 
                        time-to-market advantage and make your software sing. Fast.</p>
                        
                        <img src="/i/clear.gif" width="295" height="1" border="0"/>
                     </td>
                     
                     <td class="smallText" width="200">
                        <div align="center"><img src="/i/sponsor/intel_ids/Centrino_Image_embossed.jpg" width="120" height="117" /></div>
                       
                        <p>Register for Intel Developer Services and compete in the TopCoder Open to be entered for a chance to win an Intel Centrino 
                        mobile-technology- based notebook! <A href="Javascript:openWin('?t=tournaments&#38;c=tco03_intel_specs','comp',545,700);"><strong>View Specs</strong></A>.</p>
                        
                        <p><strong><A href="https://cedar.intel.com/cgi-bin/ids.dll/registration/regIndex.jsp?action=signup">Register Now!</A> Use promotion code TCO2003.</strong></p>

                        <img src="/i/clear.gif" width="200" height="1" border="0"/>
                    </td>
                </tr>
             
                <tr>
                    <td colspan="2">
                        <p class="promoCallout">
                        <A href="Javascript:openWin('?t=tournaments&#38;c=tco03_intel_sample','comp',545,700);"><strong>Check out a sample</strong></A> of what Intel Developer 
                        Services offers you.  Then join <A href="https://cedar.intel.com/cgi-bin/ids.dll/registration/regIndex.jsp?action=signup"><strong>Intel Developer Services</strong></A> 
                        today and get FREE technical resources designed to help you capitalize on today's technology trends, optimize solutions and fulfill your customers' growing demands. </p>
                    
                        <p><font size="3">Remember to use promotion code <strong>TCO2003</strong> and compete in the TCO to be entered for a chance to win an Intel Centrino mobile-technology based notebook!</font></p>
                    
                        <p class="bodyText"><A href="Javascript:openWin('?t=tournaments&#38;c=tco03_intel_rules','comp',545,700);">Official Drawing Rules</A> for Intel&#174; Centrino&#153; Mobile Technology-based Notebook.</p>
                    
                        <p><br /></p>
                    </td>
                </tr>
            </table>
        </td>
<!-- Center Column Ends -->

<!-- Right Column Begins -->
        <td width="170">
            <xsl:call-template name="public_right_col">
                <xsl:with-param name="sectionName">tourny</xsl:with-param>
                <xsl:with-param name="sectionSubname">intel</xsl:with-param>
            </xsl:call-template>
        </td>
<!-- Right Column Ends -->

<!-- Gutter -->
        <td width="10"><img src="/i/clear.gif" width="10" height="1" border="0"/></td>
<!-- Gutter Ends -->
    </tr>
</table>

<!-- Footer begins -->
<xsl:call-template name="Foot"/>
<!-- Footer ends -->

</body>

</html>

  </xsl:template>
</xsl:stylesheet>
