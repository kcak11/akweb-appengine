<!DOCTYPE html>
<html>
<head>
<title>Unsupported Browser Version - Please Upgrade</title>
<%
String basestr="http://ashish-web.appspot.com/aboutkcak/";
String domainStr="http://ashish-web.appspot.com/";
if(request.getRequestURL().indexOf("http://localhost")!=-1){
basestr="http://localhost:8080/akweb/aboutkcak/";
domainStr="http://localhost:8080/akweb/";
}
%>
<base href="<%=basestr%>"/>
<script type="text/javascript">
function getCookie(ckname){
var cka=document.cookie.split(";");
for(var i=0;i<cka.length;i++){
if(cka[i].indexOf(ckname+"=")!=-1){
return cka[i].split("=")[1];
}
}
return "NOT_DEFINED";
}
var nua=navigator.userAgent;
if(nua.indexOf("MSIE 6")==-1 && nua.indexOf("MSIE 7")==-1){
var s=getCookie("akwebsrcurl");
if(s!="NOT_DEFINED"){
window.top.location=s;
}
}
document.oncontextmenu=function(e){return false;};
</script>
</head>
<body>
<br/>
<br/>
<div align="center">
<img src="abtfiles/obrowser.png" width="695" height="367"/>
</div>
</body>
</html>