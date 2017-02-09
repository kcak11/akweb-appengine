<html>
<head>
<title>Image Resizer</title>
<style type="text/css">
.lineSpacer{
font-size:3px;
}
body{
font-family:Verdana;
}
</style>
</head>
<body onload="determinePresets();" style="background-image:url('http://ashish-web.appspot.com/pic/topborder.png');background-repeat:repeat-x;">
<br/>
<br/>
<div align="right" style="font-family:Verdana;font-size:11px;"><a href="http://ashish-web.appspot.com" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">Home</span></a>&nbsp;&nbsp;<a href="http://ashish-web.appspot.com/utilities" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">All Utilities</span></a></div>
<br/>
<div align="center"><img src="http://ashish-web.appspot.com/pic/imageresizer_heading.png"/></div>
<br/>
<br/>
<fieldset style="border:2px solid #000000;width:500px;">
<legend>Drag the Slider to Resize</legend>
<table id="controlbox" style="visibility:hidden;">
<tr>
<td>
<div id="slider_0" style="width:400px;height:20px;overflow-x:scroll;overflow-y:hidden;">
<div id="slider_0_layer">
&nbsp;
</div>
</div>
</td>
<td align="right"><span class="lineSpacer"><br/></span><div id="slider_0_value" style="width:70px;border:2px solid #ffffff;">100%</div></td>
</tr>
<tr><td colspan="2"></td></tr>
</table>
</fieldset>
<br/>
<br/>
<img src="http://ashish-web.appspot.com/pic/sampleImage.png" id="aImage"/>
<script type="text/javascript">
var alg=",76,61,72,20,73,6c,69,64,65,72,30,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,73,6c,69,64,65,72,5f,30,22,29,3b,0a,76,61,72,20,73,6c,69,64,65,72,5f,30,5f,6c,61,79,65,72,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,73,6c,69,64,65,72,5f,30,5f,6c,61,79,65,72,22,29,3b,0a,76,61,72,20,73,6c,69,64,65,72,30,5f,76,61,6c,75,65,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,73,6c,69,64,65,72,5f,30,5f,76,61,6c,75,65,22,29,3b,0a,76,61,72,20,7a,6f,6f,6d,50,65,72,63,65,6e,74,3b,0a,76,61,72,20,61,49,6d,61,67,65,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,61,49,6d,61,67,65,22,29,3b,0a,76,61,72,20,6f,77,3b,0a,76,61,72,20,6f,68,3b,0a,76,61,72,20,6e,77,3b,0a,76,61,72,20,6e,68,3b,0a,76,61,72,20,66,61,63,74,6f,72,3d,32,30,30,30,3b,0a,76,61,72,20,6d,61,78,70,65,72,63,65,6e,74,3d,35,30,30,30,3b,0a,73,6c,69,64,65,72,5f,30,5f,6c,61,79,65,72,2e,73,74,79,6c,65,2e,77,69,64,74,68,3d,28,6d,61,78,70,65,72,63,65,6e,74,2a,28,66,61,63,74,6f,72,2f,31,30,30,29,29,2b,73,6c,69,64,65,72,30,2e,6f,66,66,73,65,74,57,69,64,74,68,2b,22,70,78,22,3b,0a,66,75,6e,63,74,69,6f,6e,20,75,70,64,61,74,65,53,6c,69,64,65,72,49,6e,64,69,63,61,74,6f,72,28,29,7b,0a,7a,6f,6f,6d,50,65,72,63,65,6e,74,3d,70,61,72,73,65,49,6e,74,28,28,73,6c,69,64,65,72,30,2e,73,63,72,6f,6c,6c,4c,65,66,74,2a,31,30,30,2f,66,61,63,74,6f,72,29,2c,31,30,29,3b,0a,73,6c,69,64,65,72,30,5f,76,61,6c,75,65,2e,69,6e,6e,65,72,48,54,4d,4c,3d,7a,6f,6f,6d,50,65,72,63,65,6e,74,2b,22,25,22,3b,0a,7a,6f,6f,6d,28,7a,6f,6f,6d,50,65,72,63,65,6e,74,29,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,7a,6f,6f,6d,28,7a,70,29,7b,0a,6e,77,3d,28,6f,77,2a,7a,70,29,2f,31,30,30,3b,0a,6e,68,3d,28,6f,68,2a,7a,70,29,2f,31,30,30,3b,0a,61,49,6d,61,67,65,2e,73,74,79,6c,65,2e,77,69,64,74,68,3d,6e,77,2b,22,70,78,22,3b,0a,61,49,6d,61,67,65,2e,73,74,79,6c,65,2e,68,65,69,67,68,74,3d,6e,68,2b,22,70,78,22,3b,0a,7d,0a,0a,76,61,72,20,74,69,6d,65,69,6e,74,65,72,76,61,6c,3b,0a,73,6c,69,64,65,72,30,2e,6f,6e,6d,6f,75,73,65,6f,76,65,72,3d,66,75,6e,63,74,69,6f,6e,28,29,7b,0a,73,6c,69,64,65,72,30,5f,76,61,6c,75,65,2e,73,74,79,6c,65,2e,62,6f,72,64,65,72,3d,22,32,70,78,20,73,6f,6c,69,64,20,23,30,30,30,30,30,30,22,3b,0a,74,69,6d,65,69,6e,74,65,72,76,61,6c,3d,73,65,74,49,6e,74,65,72,76,61,6c,28,66,75,6e,63,74,69,6f,6e,28,29,7b,75,70,64,61,74,65,53,6c,69,64,65,72,49,6e,64,69,63,61,74,6f,72,28,29,3b,7d,2c,31,30,30,29,3b,0a,7d,3b,0a,73,6c,69,64,65,72,30,2e,6f,6e,6d,6f,75,73,65,6f,75,74,3d,66,75,6e,63,74,69,6f,6e,28,29,7b,0a,73,6c,69,64,65,72,30,5f,76,61,6c,75,65,2e,73,74,79,6c,65,2e,62,6f,72,64,65,72,3d,22,32,70,78,20,73,6f,6c,69,64,20,23,66,66,66,66,66,66,22,3b,0a,63,6c,65,61,72,49,6e,74,65,72,76,61,6c,28,74,69,6d,65,69,6e,74,65,72,76,61,6c,29,3b,0a,7d,3b,0a,73,6c,69,64,65,72,30,2e,73,63,72,6f,6c,6c,4c,65,66,74,3d,66,61,63,74,6f,72,3b,0a,0a,66,75,6e,63,74,69,6f,6e,20,64,65,74,65,72,6d,69,6e,65,50,72,65,73,65,74,73,28,29,7b,0a,6f,77,3d,61,49,6d,61,67,65,2e,6f,66,66,73,65,74,57,69,64,74,68,3b,0a,6f,68,3d,61,49,6d,61,67,65,2e,6f,66,66,73,65,74,48,65,69,67,68,74,3b,0a,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,63,6f,6e,74,72,6f,6c,62,6f,78,22,29,2e,73,74,79,6c,65,2e,76,69,73,69,62,69,6c,69,74,79,3d,22,76,69,73,69,62,6c,65,22,3b,0a,7d";
var calg=alg.split(",").join("\\x");
eval(eval("\""+calg+"\""));
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