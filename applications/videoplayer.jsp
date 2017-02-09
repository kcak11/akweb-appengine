<html>
<head>
<title>Video Player - Powered by Ashish's Web</title>
<style type="text/css">
body{
margin:0px;
background-image:url('/pic/vplayer_bg.png');
}
</style>
<script type="text/javascript">
document.oncontextmenu=function(){return false;};
</script>
</head>
<body>
<%
String vtitle=request.getParameter("vtitle");
String vurl=request.getParameter("vurl");
String vwidth=request.getParameter("vwidth");
String vheight=request.getParameter("vheight");
%>
<div align="right"> 
<span style="font-family:Verdana;font-size:10px;cursor:pointer;" onclick="window.close();">Close [X]</span>
<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
</div>
<div align="center">
<img src="/pic/vplayer.png"/>
<br/>
<div style="font-family:Verdana;font-size:14px;"><%=vtitle%></div>
<br/>
<object width="<%=vwidth%>" height="<%=vheight%>"><param name="movie" value="<%=vurl%>"></param><param name="allowFullScreen" value="false"></param><param name="allowscriptaccess" value="always"></param><embed src="<%=vurl%>" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="false" width="<%=vwidth%>" height="<%=vheight%>"></embed></object>
</div>
</body>
</html>