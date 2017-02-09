<html>
<head>
<title>Unique Key Generator</title>
<style type="text/css">
.tarea{
border:2px solid #000000;
}
.butgk{
width:250px;
height:30px;
border:2px solid #000000;
background-color:#ffba75;
font-family:Verdana;
}
</style>
</head>
<body style="background-image:url('http://ashish-web.appspot.com/pic/topborder.png');background-repeat:repeat-x;">
<br/>
<br/>
<div align="right" style="font-family:Verdana;font-size:11px;"><a href="http://ashish-web.appspot.com" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">Home</span></a>&nbsp;&nbsp;<a href="http://ashish-web.appspot.com/utilities" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">All Utilities</span></a></div>
<br/>
<div align="center"><img src="http://ashish-web.appspot.com/pic/keygen_heading.png"/></div>
<br/>
<br/>
<div align="center" style="font-size:20px;font-family:Verdana;font-weight:bold;">
Generate Unique Random Keys
</div>
<br/>
<form name="testform">
<textarea class="tarea" name="testtext" rows="20" cols="150">
</textarea>
<br/><br/>
<input type="button" value="Click to Generate 11 Unique Keys" onclick="genKeys();" class="butgk"/>
<input type="reset" value="Clear" class="butgk"/>
</form>
<script type="text/javascript">
var algorithm="66,75,6e,63,74,69,6f,6e,20,63,61,28,73,2c,63,29,7b,76,61,72,20,73,61,3d,73,2e,73,70,6c,69,74,28,63,29,3b,76,61,72,20,72,73,3d,22,22,3b,76,61,72,20,79,3d,63,2e,74,6f,55,70,70,65,72,43,61,73,65,28,29,2b,63,3b,66,6f,72,28,6a,3d,30,3b,6a,3c,73,61,2e,6c,65,6e,67,74,68,3b,6a,2b,2b,29,7b,72,73,2b,3d,73,61,5b,6a,5d,2b,79,2e,63,68,61,72,41,74,28,6a,25,32,29,3b,7d,72,65,74,75,72,6e,20,72,73,3b,7d,0a,66,75,6e,63,74,69,6f,6e,20,67,55,4b,28,29,7b,0a,76,61,72,20,61,63,3d,22,61,62,63,64,65,66,67,68,69,6a,6b,6c,6d,6e,6f,70,71,72,73,74,75,76,77,78,79,7a,22,3b,0a,76,61,72,20,73,3d,22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,31,31,3b,69,2b,2b,29,7b,0a,73,2b,3d,28,4d,61,74,68,2e,72,61,6e,64,6f,6d,28,29,2a,31,31,29,2e,74,6f,53,74,72,69,6e,67,28,33,36,29,3b,0a,7d,0a,76,61,72,20,72,73,3d,73,2e,73,70,6c,69,74,28,22,2e,22,29,2e,6a,6f,69,6e,28,22,22,29,2e,74,6f,4c,6f,77,65,72,43,61,73,65,28,29,3b,0a,66,6f,72,28,71,3d,30,3b,71,3c,61,63,2e,6c,65,6e,67,74,68,3b,71,2b,2b,29,7b,0a,72,73,3d,28,63,61,28,72,73,2c,61,63,2e,63,68,61,72,41,74,28,71,29,29,29,3b,0a,7d,0a,72,65,74,75,72,6e,20,72,73,2e,73,75,62,73,74,72,69,6e,67,28,30,2c,72,73,2e,6c,65,6e,67,74,68,2d,61,63,2e,6c,65,6e,67,74,68,29,2b,22,2f,2d,2d,5b,2d,5d,22,3b,0a,7d";
algorithm="\\x"+algorithm.split(",").join("\\x");
eval(eval("\""+algorithm+"\""));
var elem=document.testform.testtext;
function genKeys(){
for(count=0;count<11;count++){
elem.value+=gUK()+"\n";
}
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