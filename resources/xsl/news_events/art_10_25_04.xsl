<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="../top.xsl"/>
  <xsl:import href="../script.xsl"/>
  <xsl:import href="../includes/body_top.xsl"/>  
  <xsl:import href="../foot.xsl"/>
  <xsl:import href="../includes/modules/practice_room.xsl"/>
  <xsl:import href="../includes/modules/calendar.xsl"/>
  <xsl:import href="../includes/global_left.xsl"/>
  <xsl:import href="../includes/pr_right_col.xsl"/>     
  <xsl:output indent="no" method="html" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN"/>
  <xsl:template match="/">

<html>

<head>

<xsl:call-template name="Preload"/>      

<title>Press Room</title>

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
        <td width="180" valign="top">
            <xsl:call-template name="global_left"/>
        </td>
<!-- Left Column Ends -->

<!-- Gutter Begins -->
        <td width="4"><img src="/i/table_top_fill.gif" width="4" height="26" border="0"/></td>
<!-- Gutter Ends -->

<!-- Center Column Begins -->	
        <td class="bodyText" width="99%">
            <xsl:call-template name="BodyTop">
                <xsl:with-param name="image1">white</xsl:with-param>
                <xsl:with-param name="image">press_room</xsl:with-param>
                <xsl:with-param name="title">&#160;</xsl:with-param>
            </xsl:call-template>
            
            <table border="0" cellspacing="0" cellpadding="10" width="100%">
                <tr valign="top">
                    <td class="prText" width="100%"><img src="/i/clear.gif" alt="" width="400" height="1" border="0"/><br />
                        <div align="center">
                        <p><span class="bodyTitle">Google's creative search for elite programmers</span></p>
                        </div>

						<p>
Google Inc. finds almost anything on the Internet within seconds, but finding the sharp-minded computer engineers who program the company's lightning-quick search engine takes more time -- and a quirky bit of ingenuity.
<br/><br/>
As its rapidly growing business creates hundreds of new jobs, Google is trying to lure premier programming talent with offbeat measures, including a computer-coding competition and a brain-twisting aptitude test that mixes geek humor with a daunting mathematical workout.
<br/><br/>
"Hiring the most talented and most creative computer scientists in the world requires a great deal of creativity," said Alan Eustace, Google's vice president of engineering research and systems.
<br/><br/>
Plenty of people want to work at Mountain View-based Google -- a company that takes great pride in an employee-friendly culture that offers free meals and generous helpings of lucrative stock options.
<br/><br/>
But Google remains picky about whom it hires, even as its payroll has ballooned from just under 700 employees at the end of 2002 to about 2,700 workers today.
<br/><br/>
In its quest to identify the programming elite, Google recently inserted an unusual aptitude test in erudite magazines like the Massachusetts Institute of Technology's Technology Review, the Linux Journal, Mensa, Dr. Dobbs and Physics Today.
<br/><br/>
The 21-question test includes brain twisters like, "How many different ways can you color an icosahedron with one of three colors on each face?" and "On an infinite, two-dimensional rectangular lattice of 1-ohm resistors, what is the resistance between two nodes that are a knight's move away?"
<br/><br/>
The test also includes more subjective, tongue-in-cheek requests like "Write a haiku describing possible methods for predicting search traffic seasonality" and "What is the most beautiful math equation ever derived?"
<br/><br/>
Google has received an enthusiastic response to the test, Eustace said, although many of the people sending in their answers are economists, professors and other intellectuals more interested in a mental challenge than getting a new job.
<br/><br/>
The aptitude test is similar to another nerdy recruiting tool that Google deployed during the summer.
<br/><br/>
Without mentioning its name, Google placed billboards in Silicon Valley and Harvard Square that read: (first 10-digit prime found in consecutive digits of e).com. Anyone who figured out the correct answer wound up at a Web site that posed another puzzle that, if solved, led to a Google-branded site seeking resumes.
<br/><br/>
Google isn't always so subtle.
<br/><br/>
During the last two years, Google has offered cash prizes to computer engineers who compete against each other to solve complex coding problems.
<br/><br/>
The programming battles are becoming an increasingly popular way to recruit skilled programmers away from a number of high-tech companies, including two of Google's biggest rivals, Yahoo Inc. and Microsoft Corp.
<br/><br/>
The companies stage the events in conjunction with Glastonbury, Conn.-based TopCoder, which has developed an automated system for scoring the competitions.
<br/><br/>
TopCoder, formed in 1991, now boasts 43,000 members who enter the competitions looking for extra cash, bragging rights and a little more cachet on their resumes, said TopCoder President Rob Hughes.
<br/><br/>
"These are people who generally aren't into self-promotion and feel a little intimidated going to formal job interviews," Hughes said. "If they do well in a code jamming competition, they don't have to put on their Sunday best and they have more credibility before they even walk in through the door."
<br/><br/>
Google's latest competition, completed earlier this month, attracted 7,500 entrants -- a field that was whittled down to 50 finalists through a series of elimination rounds. The company gave away $50,000 to the finalists who also received to an all expenses-paid trip to Google's headquarters -- a cluster of rather unremarkable buildings that nevertheless has become a high-tech Mecca.
<br/><br/>
The headquarters, also known as the Googleplex, is staffed by hundreds of millionaires who have struck it rich on the company's high-flying stock. Google's 31-year-old co-founders, Larry Page and Sergey Brin, have gone from pedestrian computer science graduate students to Silicon Valley moguls with personal fortunes worth more than $6 billion apiece.
<br/><br/>
Although Google touts its coding competition an "annual celebration of the art of computer science," the company's motives aren't entirely altruistic.
<br/><br/>
"When you can get together 50 of the most talented computer scientists in the world, there's a chance that you are going to hire some of them," Eustace said.
<br/><br/>
This year's $10,000 first-place prize was won by Sergio Sancho, who already has a programming job in his native Argentina. Nevertheless, Sancho, 30, said he might consider working at Google. "It seems like a very computer-friendly place," Sancho said.
<br/><br/>
After finishing 14th place in last year's competition, Bartholomew Furrow landed a summer internship at Google and helped the company develop programs that improved the technology used to search the text of books.
<br/><br/>
Furrow, 20, recently returned to the University of British Columbia to pursue a doctorate in physics -- a degree he never considered using in computer programming until he spent some time at Google. "I have always planned on becoming a college professor, but (Google) has kind of opened my eyes to other opportunities," Furrow said.

						</p>

                        <p><br /></p>
                        

                    </td>
                </tr>
            </table>
        </td>
<!-- Center Column Ends -->

<!-- Gutter -->
        <td width="4"><img src="/i/clear.gif" width="4" height="1" border="0"/></td>
<!-- Gutter Ends -->

<!-- Right Column Begins -->
        <td width="170" valign="top"><img src="/i/clear.gif" width="170" height="1" border="0"/><br/>
            <xsl:call-template name="pr_right_col"/>       
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
