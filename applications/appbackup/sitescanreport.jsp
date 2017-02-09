<html>
<head>
<title>SiteScan - Report</title>
<style type="text/css">
body{
font-family:Verdana;
font-size:12px;
}
.sectionHeading{
border:2px solid #000000;
background-color:#ffba75;
height:40px;
width:80%;
font-weight:bold;
padding:10px;
font-size:25px;
}
.sectionContent{
border:2px solid #000000;
color:#ff0000;
width:80%;
padding:10px;
overflow:auto;
}

.sectionContentHeight{
height:500px;
overflow:auto;
}

.ReferrerURI{
font-size:20px;
font-weight:bold;
width:80%;
}

.extRefType{
width:150px;
color:#ff0000;
}

.extRefUrl{
width:700px;
white-space:nowrap;
overflow:hidden;
}

a:link{color:#000000;}
a:hover{color:#000000;}
a:visited{color:#000000;}
a:active{color:#000000;}

.domDetailTA{
border:1px solid #000000;
outline-style:none;
}

</style>
</head>
<body>
<%
String requestType=request.getParameter("requestType");
String siteDetailInfo=request.getParameter("siteDetailInfo");
if("STOREINFO".equals(requestType)){
/*store the information in session*/
session.setAttribute("SITESCANINFO",siteDetailInfo);
%>
<script type="text/javascript">
alert("SiteScan has completed scanning this site.\n\nYou will now be redirected to the Report Page to view all the details.\nPlease click OK to proceed.");
window.top.location="http://ashish-web.appspot.com/utilities/sitescanreport/?requestType=VIEWINFO"+"&requestMode="+Math.random().toString(36).split(".").join("");
</script>
<%
}else if("VIEWINFO".equals(requestType)){
/*display the information from within the session*/
%>
<div align="right" style="font-size:14px;font-weight:bold;color:#ff0000;">Site Scan Report (Powered by <a href="http://ashish-web.appspot.com" target="_akweb11" style="text-decoration:none;color:#0000ff;">Ashish's Web</a>)</div>
<hr/>
<%=session.getAttribute("SITESCANINFO")%>
<hr/>
<%
}else{
%>
Invalid SiteScan Request !!!<br/> Please try again.
<%
}
%>
</body>
</html>