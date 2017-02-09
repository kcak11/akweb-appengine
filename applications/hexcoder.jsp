<html>
<head>
<title>HexCoder - Ashish's Web</title>
<style type="text/css">
textarea{
color:rgb(59,89,152);
border:1px solid #000000;
font-family:Verdana;
}
</style>
</head>
<body style="background-image:url('http://ashish-web.appspot.com/pic/topborder.png');background-repeat:repeat-x;">
<br/>
<br/>
<div align="right" style="font-family:Verdana;font-size:11px;"><a href="http://ashish-web.appspot.com" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">Home</span></a>&nbsp;&nbsp;<a href="http://ashish-web.appspot.com/utilities" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">All Utilities</span></a></div>
<br/>
<div align="center"><img src="http://ashish-web.appspot.com/pic/hexcoder_heading.png"/></div>
<br/>
<br/>

<table>
<tr>
<td><img src="http://ashish-web.appspot.com/pic/hexcoder.png"/></td>
<td><span style="font-size:22px;font-family:Verdana;">&nbsp;&nbsp;HexEncoder / HexDecoder</span></td>
</tr>
</table>
<form name="utilityTool">
<textarea name="inp" rows="6" cols="70">
</textarea>
<br/>
<input type="checkbox" name="plainencoding"/> Plain Encoding
<br/><img src="/pic/hxencodebtn.png" style="cursor:pointer;" onclick="hexCode();"/>
<img src="/pic/hxdecodebtn.png" style="cursor:pointer;" onclick="hexDeCode();"/>
<br/>
<textarea name="outp" rows="6" cols="70">
</textarea>
</form>
<script type="text/javascript">
function hexCode(){
var str=document.utilityTool.inp.value;
var tmp;
var outp="";
var prefix="\\x";
if(document.utilityTool.plainencoding.checked==true){
prefix="";
}
for(i=0;i<str.length;i++){
tmp=str.charCodeAt(i);
if(tmp<16){
outp+=prefix+"0"+tmp.toString(16);
}else{
outp+=prefix+tmp.toString(16);
}
}
document.utilityTool.outp.value=outp;
}
function hexDeCode(){
if(document.utilityTool.plainencoding.checked==true){
alert("Decoding a Plain Encoded text is currently not supported.");
return -37;
}
var str=eval("\""+document.utilityTool.inp.value+"\"");
document.utilityTool.outp.value=str;
}
</script>

<script type="text/javascript" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript"> 
/*
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
*/
</script>
<script type="text/javascript"> 
function ga_code(){
try {
var pageTracker = _gat._getTracker("UA-12203959-1");
pageTracker._trackPageview();
} catch(err) {}
}
ga_code();
</script>

</body>
</html>