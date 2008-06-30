<%@  page language="java"  %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>

<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<title>TopCoder - The Digital Run</title>

<jsp:include page="../../script.jsp" />
<jsp:include page="../../style.jsp">
  <jsp:param name="key" value="digitalrun"/>
</jsp:include>
<jsp:include page="../../script.jsp" />
</head>
<body>

<jsp:include page="../../top.jsp" >
    <jsp:param name="level1" value=""/>
</jsp:include>

<div align="center">
    <div class="fixedWidthBody">

<jsp:include page="../../page_title.jsp" >
<jsp:param name="image" value="digital_run_20061031"/>
<jsp:param name="title" value="2008 Development Cup Series"/>
</jsp:include>

<jsp:include page="nav.jsp" >
    <jsp:param name="tabLev1" value="development"/>
    <jsp:param name="tabLev2" value="prizes"/>
</jsp:include>

<span class="title">Prizes</span>
<br /><br />
The Prize Pool for the Development Cup will grow with every competition posted within that Stage's timeframe.  TopCoder will set a guaranteed minimum Prize Pool of $10,000 for the Development Cup per month (the pool will never be less than that amount).  Every contest launched has a specific amount of points associated to it.  Each point adds $1 to the Development Cup Prize Pool.  For example, if we launch a component development competition on July 12, 2008 with 600 Digital Run points then TopCoder will add $600 to the Design Cup for July 2008.  The more contests we launch, the larger the Development Cup Prize Pool will grow.
<br /><br />
For each Stage, competitors will accumulate placement points according to the <a href="/tc?module=Static&amp;d1=digital_run&amp;d2=2008v2&amp;d3=devOverview">points table</a>. In addition to the competition prize earnings, the top five (5) finishers will win large prizes and the top 1/2 of the point-getters in each Stage will receive a smaller prize. A total of 50% of the total Development Cup prize pool will be awarded in bonus prizes each Stage and will be distributed as follows: 
<br /><br />
<strong>Top Five Stage Prizes</strong><br />
<strong>1st</strong> - 50%<br />
<strong>2nd</strong> - 25%<br />
<strong>3rd</strong> - 13%<br />
<strong>4th</strong> - 8%<br />
<strong>5th</strong> - 4%
<br /><br />
If there is a tie for a position among the top 5 finishers, the tie will be resolved in the following manner (in order): 
<ol>
<li>The competitor who has the most higher-placed submissions in the Stage.</li>
<li>If a tie still remains, then the competitor with the highest average individual competition score of the lesser number of competitions used to develop the placement scores for the tied competitors.</li>
<li>If a tie still remains, then the tied competitors will share equally the prize money at hand.</li>
</ol>
<strong>Top Half Stage Prizes</strong><br />
The remaining 50% of the Development Cup prize pool will be distributed among the top &#189; of point-getters (all competitors tied for the last spot will be included) and will be allocated based on the value of each placement point.
<br /><br />
<%--
<strong>For example:</strong><br />
A total of 120 developers accumulate placement points during the Stage. We will sum the total number of placement points accumulated by the top 60 developers and divide $37,000 by that number to find the dollar per placement point bonus that is available to those 60 developers. If the total placement points of those 60 developers are 5,000, then each point is worth $7.40 ($37,000/5,000 = $7.40 per placement point). Each of the top 60 developers, including the top five, will receive $7.40 for each placement point they earned during the Stage. In addition, the top five point-getters in each Stage will receive the Top Five Stage prizes outlined above.
<br /><br />
--%>
As an added prize, the top three (3) point-getters from Stage 1 and Stage 2 will win a trip to the 2009 TCO finals to be recognized.  Additionally, the top point-getter of the remaining 6 monthly stages (July - December) will win a trip to the 2009 TCO finals to be recognized. At the TCO awards presentation, the overall highest point-getter for the entire year will be recognized as the winner of the TopCoder&174; Development Cup. 
<br /><br />
Digital Run prize money will be paid at the end of each Stage within 60 days of announcing the Top Five and Top Half money winners.
<br /><br />

    </div>
</div>

<jsp:include page="../../foot.jsp" />

</body>

</html>