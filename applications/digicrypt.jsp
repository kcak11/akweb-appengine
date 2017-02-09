<html>
<head>
<title>DigiCrypt</title>
<style type="text/css">
textarea{
border:2px solid #000000;
color:#ff0000;
width:480px;
height:55px;
}
body{
font-family:Verdana;
font-size:11px;
}
.redfont{
color:#ff0000;
font-weight:bold;
}
.btndecor{
border:2px solid #000000;
background-color:#ffba75;
font-family:Verdana;
}
.fielddecor{
border:2px solid #000000;
background-color:#ffff00;
}
fieldset{
padding:20px;
width:530px;
border:2px solid #000000;
}
legend{
font-weight:bold;
}
</style>
</head>
<body style="background-image:url('http://ashish-web.appspot.com/pic/topborder.png');background-repeat:repeat-x;">
<br/>
<br/>
<div align="right" style="font-family:Verdana;font-size:11px;"><a href="http://ashish-web.appspot.com" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">Home</span></a>&nbsp;&nbsp;<a href="http://ashish-web.appspot.com/utilities" style="text-decoration:none;"><span style="color:#000000;text-decoration:none;border-bottom:2px solid #ff0000;font-weight:bold;">All Utilities</span></a></div>
<br/>
<div align="center"><img src="http://ashish-web.appspot.com/pic/digicrypt_heading.png"/></div>
<br/>
<br/>
<form name="crypto">
<img src="http://ashish-web.appspot.com/pic/digicrypt_logo.png"/>
<br/><fieldset>
<legend>&nbsp;Encryption / Decryption Form&nbsp;</legend>
<br/>Original Message(<span class="redfont">*</span>):
<br/>
<textarea name="omsg" rows="5" cols="50"></textarea>
<br/>
<br/>
Key(<span class="redfont">*</span>): <input type="text" class="fielddecor" name="ekey"/> <span style="font-size:10px;">&nbsp;[This key will be used for Encryption / Decryption <a href="#" onclick="javascript:showSuggestions();return false;" style="color:#ff0000;font-weight:bold;">(?)</a> ]</span>
<br/>
<br/>
<input type="button" class="btndecor" value="Encrypt" onclick="encode();"/>&nbsp;<input type="button" class="btndecor" value="Decrypt" onclick="decode();"/> <span id="procmsg" style="visibility:hidden;">[ Processing, Please wait . . . ]</span>
<br/>
<br/>
Result:
<br/>
<textarea name="rmsg" rows="5" cols="50"></textarea>
<br/>
<br/>
Note: Fields marked with (<span class="redfont">*</span>) are mandatory
<br/>
<br/>
<input type="button" class="btndecor" value="Reset the Form" onclick="resetvalues();return false;"/>
</fieldset>
</form>
<script type="text/javascript">
var algorithm=","+
"76,61,72,20,44,41,54,41,5f,4d,41,50,3d,22,51,2f,51,54,53,76,78,77,63,2b,4d,48,30,66,67,42,59,79,56,4b,73,42,4a,43,6f,6b,59,55,"+
"33,30,49,51,6a,62,63,6c,34,64,32,41,49,42,67,4a,42,55,51,70,55,52,73,34,4e,30,52,4b,30,74,35,79,66,4f,36,5a,32,7a,6e,72,7a,50,"+
"76,4d,20,4d,38,2f,4c,7a,50,78,4f,64,6d,37,32,66,76,61,61,4e,57,76,39,31,75,7a,2f,73,2f,62,73,35,2b,35,39,63,48,78,38,66,42,56,"+
"2f,45,49,41,41,42,43,44,51,4c,49,47,72,6d,34,32,63,77,43,45,41,41,51,68,41,34,44,49,42,64,4a,78,31,41,41,45,49,20,51,4b,42,74,"+
"41,75,68,34,32,2f,55,6a,65,67,68,41,41,41,4c,6f,4f,47,73,41,41,68,43,41,51,4e,73,45,30,50,47,32,36,30,66,30,45,49,41,41,42,4e,"+
"42,78,31,67,41,45,49,41,43,42,74,67,6d,67,34,32,33,58,6a,2b,67,68,41,41,45,49,58,48,31,77,20,63,41,41,46,43,45,41,41,41,74,30,"+
"51,61,45,58,54,63,71,55,33,59,48,39,5a,78,46,50,2b,4b,35,43,4e,78,68,34,31,32,65,69,44,41,58,76,35,6c,48,54,69,4f,39,37,4e,38,"+
"69,49,52,43,45,41,67,53,6d,43,2b,44,6b,67,68,69,6b,35,58,5a,6d,42,49,20,36,6a,72,2f,6d,58,4b,61,31,44,64,52,71,6f,34,62,32,64,"+
"71,6b,46,48,33,66,4b,55,48,62,47,77,4f,6a,78,38,73,6f,4d,77,6f,43,45,47,69,55,67,4e,45,4f,70,6e,53,5a,55,58,57,71,6a,73,4b,51,"+
"31,49,44,43,56,70,77,36,4d,4d,75,5a,2f,66,48,45,20,39,79,4e,4f,45,51,2f,67,58,75,48,30,57,42,45,57,72,69,41,41,67,58,30,53,6d,"+
"4a,52,45,2f,38,6b,49,6e,51,65,56,67,64,59,30,51,39,79,4d,34,7a,36,33,42,52,77,6d,74,64,55,33,50,56,7a,32,37,2f,71,2b,63,63,63,"+
"65,64,52,4b,2f,31,35,74,36,20,53,76,31,56,2b,4a,77,54,6d,53,34,6f,4e,6b,4d,67,41,49,46,63,41,6c,4f,7a,71,50,2b,6b,45,4e,73,48,"+
"74,59,69,6e,74,50,4e,4b,77,64,52,66,59,69,38,62,69,48,7a,61,2b,74,43,33,39,42,31,77,31,57,75,72,6d,39,52,33,36,65,33,73,71,65,"+
"75,4b,20,73,55,50,48,30,33,4d,57,35,35,6e,54,50,58,46,6e,62,71,68,38,37,6d,4c,46,48,67,4b,44,45,77,6a,30,31,32,45,79,78,75,64,"+
"74,4b,59,49,32,4f,66,53,5a,68,59,66,4c,54,6a,6d,36,50,36,37,56,32,62,63,33,45,76,56,67,4a,47,37,59,31,2b,6e,48,20,46,58,66,31,"+
"4c,71,62,73,68,4b,62,4f,68,4d,58,31,47,33,7a,64,6b,7a,34,45,65,69,4c,67,37,4c,75,31,76,4b,53,49,7a,41,72,74,6f,2b,71,55,54,30,"+
"34,44,5a,39,67,37,64,30,4b,57,72,6b,36,65,6a,74,74,30,4a,48,46,31,5a,69,73,37,4a,65,71,78,20,68,6f,65,6c,38,38,63,2f,42,43,44,"+
"51,42,41,47,35,2b,78,46,74,74,4b,76,73,6b,4b,52,67,6b,64,73,67,4a,32,65,61,30,2b,32,52,33,42,59,37,5a,54,72,50,6e,73,66,5a,2f,"+
"66,47,79,56,72,70,34,65,74,2f,41,46,63,36,6c,31,57,50,47,49,51,51,67,20,73,44,6b,42,71,57,41,42,4b,55,38,55,75,6b,51,7a,51,38,"+
"70,39,45,4a,52,5a,73,62,69,48,74,39,72,50,58,43,77,59,46,74,43,6f,76,42,6f,47,50,6e,75,44,74,55,35,62,48,34,2b,65,62,44,64,66,"+
"4c,67,51,41,41,51,67,73,52,4d,42,51,54,2b,50,39,20,76,5a,78,55,50,32,56,49,68,31,51,65,34,37,34,61,72,69,52,65,44,51,39,50,35,"+
"39,4d,69,57,35,48,31,6b,63,43,6c,35,62,36,72,46,51,4e,58,4d,57,70,76,38,6a,54,67,6d,42,33,52,58,47,67,35,34,68,59,43,45,4e,67,"+
"2f,67,57,68,37,75,76,38,55,20,4c,70,2b,4e,30,50,45,6d,36,6b,53,51,45,49,44,41,45,67,51,4b,64,44,7a,39,61,73,49,6c,41,6e,62,36,"+
"52,4d,64,58,51,38,31,45,45,49,41,41,42,42,59,68,6b,48,65,39,79,69,49,68,34,42,51,43,45,49,41,41,42,47,59,51,51,4d,64,6e,77,47,"+
"4d,6f,20,42,43,41,41,67,52,30,51,51,4d,64,33,55,41,52,43,67,41,41,45,49,44,43,44,41,44,6f,2b,41,78,35,44,49,51,41,42,43,4f,79,"+
"41,41,44,71,2b,67,79,49,51,41,67,51,67,41,49,45,5a,42,4e,44,78,47,66,41,59,43,67,45,49,51,47,41,48,42,4a,72,58,20,38,5a,51,76,"+
"7a,64,6d,51,73,77,78,76,35,36,46,75,53,49,6d,70,49,62,41,6f,67,63,54,2f,59,62,39,6f,44,49,73,36,54,37,31,2b,58,49,47,77,2f,34,"+
"2b,73,2f,4c,2b,74,34,57,64,6c,47,72,45,76,68,44,7a,39,79,64,44,6f,66,31,4f,79,41,35,76,44,20,4b,2b,44,4e,39,33,55,43,34,65,6d,"+
"6b,77,37,71,68,7a,6b,6d,54,73,52,44,59,4d,34,47,79,31,39,71,61,47,51,58,2b,38,33,33,46,4d,4f,51,73,7a,69,39,6d,71,66,6b,37,45,"+
"6f,6c,78,36,32,39,47,6e,4f,77,44,70,30,63,74,64,73,70,2b,50,79,64,53,20,66,55,61,4a,6e,6c,70,38,51,50,67,71,78,38,53,6c,67,74,"+
"6e,49,42,4e,52,2f,73,4e,52,2f,2b,31,45,41,6f,79,68,6c,76,78,65,52,58,6c,6e,6a,71,78,4f,64,2f,34,6c,55,66,33,46,75,79,65,2b,36,"+
"32,61,45,59,33,7a,67,54,62,6a,79,64,58,30,2b,6a,20,66,4e,6f,44,6a,52,35,66,62,55,33,34,53,71,75,66,73,75,38,6f,35,33,71,67,38,"+
"37,37,7a,32,51,42,33,48,59,77,64,6b,6a,4e,4f,77,30,77,4f,54,36,38,75,6c,68,41,59,69,6b,42,55,41,64,54,4c,56,72,37,6b,4e,52,2f,"+
"35,69,70,59,48,45,31,2b,4a,20,5a,61,65,51,78,46,39,69,43,33,39,4e,75,66,31,4e,57,4f,45,76,53,72,79,36,4c,4e,61,41,6c,49,64,46,"+
"76,48,67,4a,61,72,65,42,30,34,41,38,47,52,52,4d,4a,44,76,75,39,4b,5a,62,64,39,6e,47,6f,6f,6c,32,33,34,6c,76,55,41,6f,53,59,51,"+
"67,45,20,2b,69,4d,77,76,62,35,38,66,62,70,2b,4b,70,71,31,64,4b,4a,50,41,42,58,62,2f,30,41,54,72,5a,38,36,4f,65,74,55,2f,70,72,"+
"79,4d,2f,31,34,56,4c,7a,43,4c,65,54,38,6e,59,64,6f,47,56,49,4d,70,44,36,6d,32,47,39,6c,34,2b,7a,5a,74,77,71,47,20,65,53,47,77,"+
"45,77,4a,71,4e,7a,58,72,31,53,47,46,53,32,2f,47,4b,73,6b,4f,4a,42,57,56,75,36,68,42,46,72,48,69,62,78,35,50,6d,53,58,76,65,68,"+
"56,35,34,6b,72,78,76,6c,73,62,33,64,51,76,39,4f,34,68,6d,72,6a,78,39,69,4a,71,6a,77,45,45,20,78,69,45,51,36,4c,75,7a,39,44,32,"+
"52,57,4f,35,70,34,38,48,33,2f,61,65,2f,5a,43,38,31,4f,75,56,33,33,64,53,58,69,61,74,62,6c,62,38,38,48,61,38,79,4a,55,34,67,41,"+
"41,45,49,46,42,43,51,2b,6c,36,78,57,53,35,7a,36,2f,73,6c,65,33,6b,38,20,30,49,4e,72,73,79,70,53,58,75,64,7a,7a,71,79,53,42,46,"+
"70,67,65,2b,2b,37,31,76,5a,39,56,6f,51,59,51,77,41,43,57,78,46,49,66,4d,6b,48,7a,4e,54,57,53,6c,54,6f,6e,52,37,6b,77,63,52,49,"+
"41,71,43,4b,4e,64,72,2b,72,54,6a,70,79,6e,61,62,20,2b,72,74,75,74,76,67,36,35,54,68,77,55,47,59,62,52,69,7a,78,47,5a,39,57,61,"+
"79,66,36,75,4a,77,78,5a,58,62,62,6f,52,47,4d,6e,74,31,33,66,49,70,42,6e,6d,2f,73,2b,35,4f,42,73,51,4c,53,62,62,5a,36,38,54,41,"+
"76,42,50,5a,44,49,46,63,42,20,62,44,30,78,64,46,77,2b,74,46,2f,67,67,65,6c,38,53,68,58,34,70,55,33,6e,52,64,2f,32,4c,37,63,4a,"+
"4b,66,4f,43,39,31,30,2f,62,76,2b,47,58,50,79,73,74,5a,2f,71,56,6f,39,6b,71,38,33,78,36,6f,6e,67,45,41,49,51,47,4a,6e,41,75,44,"+
"71,4f,20,69,49,2b,38,37,73,6b,64,41,73,55,45,69,6e,64,4c,69,6d,65,4d,44,68,78,58,78,36,4e,6f,4d,49,41,41,42,43,44,51,42,41,47,"+
"75,56,32,6d,69,54,41,51,4a,41,51,68,41,77,45,73,41,48,57,64,78,51,41,41,43,45,47,69,62,41,44,72,65,64,76,32,49,20,48,67,49,51,"+
"67,41,41,36,7a,68,71,41,41,41,51,67,30,44,59,42,64,4c,7a,74,2b,68,45,39,42,43,41,41,41,58,53,63,4e,51,41,42,43,45,43,67,62,51,"+
"4c,6f,65,4e,76,31,49,33,6f,49,51,41,41,43,36,44,68,72,41,41,49,51,67,45,44,62,42,4e,44,78,20,74,75,74,48,39,42,43,41,41,41,54,"+
"51,63,64,59,41,42,43,41,41,67,62,59,4a,6f,4f,4e,74,31,34,2f,6f,49,51,41,42,43,4b,44,6a,72,41,45,49,51,41,41,43,62,52,4e,41,78,"+
"39,75,75,48,39,46,44,41,41,49,51,51,4d,64,5a,41,78,43,41,41,41,54,61,20,4a,6f,43,4f,74,31,30,2f,6f,6f,63,41,42,43,43,41,6a,72,"+
"4d,47,49,41,41,42,43,4c,52,4e,41,42,31,76,75,33,35,45,44,77,45,49,51,41,41,64,5a,77,31,41,41,41,49,51,61,4a,76,41,77,56,32,66,"+
"2b,32,4c,62,47,52,41,39,42,43,41,41,67,62,45,4a,20,31,4e,48,78,74,37,2f,74,4c,53,31,69,50,48,66,75,33,47,63,2f,66,2f,65,69,6b,"+
"54,2f,2b,63,59,39,65,77,76,39,7a,6e,2f,76,63,74,39,7a,2b,39,69,55,38,34,78,4d,43,45,47,69,4f,51,44,55,64,76,2b,4f,4f,4f,39,70,"+
"4b,2f,72,59,33,76,75,46,4a,20,54,33,33,6d,43,6a,72,2b,71,59,39,2f,71,43,36,5a,64,2f,7a,56,75,79,66,61,36,48,68,64,71,6e,69,44,"+
"51,4c,73,45,61,75,72,34,68,51,73,58,47,67,49,78,79,53,73,36,33,6c,43,39,43,42,55,43,45,50,41,52,34,48,4e,4f,42,35,6b,6e,76,50,"+
"2f,2b,20,57,7a,2f,37,6b,46,76,76,75,76,72,6e,50,2f,32,4e,6c,33,2f,71,76,70,2f,37,78,4c,32,33,66,50,53,72,4c,2f,33,77,6c,31,2f,"+
"38,2f,76,39,35,30,58,76,76,66,75,45,2f,2f,63,64,50,76,4f,65,75,48,33,76,58,76,39,2f,38,4e,2f,39,36,30,31,39,2b,20,37,43,6c,2f,"+
"2b,42,36,57,46,77,51,67,41,49,45,4e,43,61,44,6a,62,76,6a,76,2b,49,46,72,33,2f,47,44,6a,2f,71,4c,5a,31,2f,33,7a,68,39,39,7a,46,"+
"2f,66,64,50,33,66,50,65,38,37,33,2f,58,38,4a,2f,33,39,43,35,2f,36,6a,7a,2f,31,6a,41,73,76,20,75,66,47,39,50,2f,4e,44,37,33,76,"+
"35,6a,33,7a,77,6c,54,64,39,35,42,65,66,39,36,32,50,65,50,67,39,39,78,35,73,57,45,4b,6d,33,67,4f,42,4a,31,7a,2f,37,64,4e,74,44,"+
"35,47,30,48,73,50,49,4a,4a,39,77,2f,61,4f,6e,57,30,45,46,30,58,45,58,20,74,4f,4e,76,54,45,65,2f,35,61,45,50,69,64,34,75,44,33,"+
"37,67,55,67,46,33,68,69,78,48,77,43,63,45,36,6e,68,44,61,71,73,44,74,69,4f,33,6e,34,71,6d,5a,67,79,5a,7a,7a,38,36,34,2f,77,70,"+
"6c,76,41,51,6f,4b,71,6d,6b,77,62,4f,41,41,4b,4a,20,52,38,63,47,4d,6c,49,4b,66,74,66,6e,54,71,2b,38,73,47,58,64,64,77,51,64,64,"+
"34,47,39,64,48,2f,47,41,69,72,56,38,53,63,2f,37,55,5a,39,6b,39,4e,4e,42,77,4d,50,4d,77,49,62,32,37,51,68,76,66,61,4a,78,63,6d,"+
"72,2b,6f,76,36,70,69,52,47,20,47,63,76,6a,36,6e,36,34,32,6d,71,67,30,39,56,51,79,38,54,67,6f,4c,6a,4a,70,53,49,4e,6a,4b,65,30,"+
"78,50,75,49,68,63,66,47,43,6d,53,4b,65,46,5a,64,30,48,47,76,6a,68,39,39,2f,59,45,76,33,78,75,35,58,52,35,63,70,4f,4f,54,57,48,"+
"2f,79,20,58,7a,36,6f,62,34,5a,32,36,35,69,55,57,56,5a,46,4d,51,37,49,6f,76,32,55,72,34,48,53,50,56,65,67,77,30,70,38,79,70,43,"+
"4a,77,4d,50,69,32,6d,6b,46,43,5a,38,53,41,76,36,64,75,64,67,51,74,41,65,64,52,66,69,39,67,72,52,58,51,77,78,37,20,65,37,67,78,"+
"78,48,6b,2b,7a,6f,30,32,45,61,79,42,30,56,62,35,77,43,6b,7a,4f,6a,59,78,68,6d,43,4e,72,6d,79,35,32,48,73,76,56,38,76,33,43,47,"+
"45,36,38,2b,4e,6f,78,73,4f,6c,2b,32,35,35,39,5a,30,76,2f,59,55,37,70,33,2b,6a,74,77,49,64,20,74,39,56,35,45,6d,74,62,79,68,48,"+
"78,34,67,56,6a,76,77,4a,56,4e,32,6f,34,6a,44,5a,51,6b,34,47,76,68,37,55,37,58,4f,6e,63,31,30,65,6e,5a,35,54,53,5a,61,64,37,4d,"+
"79,77,4e,35,39,45,6d,56,4e,76,4c,4e,77,54,4b,70,2b,53,6a,5a,46,6f,66,20,31,41,2b,6c,4e,45,74,58,47,6d,2f,55,55,73,59,66,6e,53,"+
"4b,41,5a,56,47,71,78,65,57,77,64,31,51,65,5a,48,74,35,6a,30,57,71,39,72,54,72,59,6d,79,38,6e,4e,43,2b,2b,32,71,6a,51,6e,62,42,"+
"69,6f,4e,72,65,4f,43,6c,2b,39,2f,2b,42,38,39,35,20,35,61,74,75,75,50,32,32,48,33,37,74,61,37,2f,72,74,74,2b,35,38,66,57,76,65,"+
"38,70,76,6e,6e,2f,47,64,4a,76,75,54,41,2b,6e,67,39,4e,54,6b,38,46,6b,64,6e,7a,56,38,52,4b,5a,49,75,49,56,71,66,70,36,4f,69,6e,"+
"75,69,64,4b,76,6f,67,72,33,20,76,78,55,6a,6c,77,72,6f,50,42,57,6c,42,4b,4e,54,63,7a,61,2f,30,56,7a,30,2b,63,2b,4a,79,4b,6d,77,"+
"50,67,4c,47,71,54,53,77,48,65,53,62,4e,43,56,61,34,39,51,53,4b,45,66,55,32,78,4b,6c,4c,50,4e,70,39,4f,44,47,77,2f,69,2b,79,6a,"+
"37,50,20,59,47,55,73,55,6b,64,64,75,76,2b,4e,62,2f,72,6b,78,7a,37,34,6c,54,65,39,2b,64,38,2b,63,4f,63,39,62,33,33,62,5a,2f,37,"+
"68,33,56,39,36,36,39,39,2b,39,5a,48,6e,58,76,7a,73,58,37,33,2b,38,62,63,2b,37,73,6d,2f,39,34,72,66,2f,75,4d,76,20,54,51,61,54,"+
"32,66,45,43,4d,6f,36,49,70,31,62,4b,62,32,65,49,54,6e,51,48,65,66,36,4d,68,71,49,35,52,56,4e,47,6c,53,34,69,36,5a,61,4a,41,6d,"+
"71,66,32,41,4c,37,47,37,6c,6b,4b,72,72,79,54,56,31,6c,69,76,6c,55,63,38,6b,73,5a,32,2f,71,20,75,4e,78,6d,57,57,37,57,76,58,74,"+
"2b,34,50,35,66,65,63,32,54,6e,33,37,6a,49,31,2f,7a,71,75,39,2b,31,6e,4f,75,66,64,6e,50,33,6e,44,54,7a,64,66,39,39,45,75,2b,34,"+
"7a,48,66,2f,48,39,58,50,65,53,68,55,2f,44,54,22,3b,0a,76,61,72,20,64,61,74,61,5f,73,69,67,31,3b,0a,76,61,72,20,64,61,74,61,5f,"+
"73,69,67,32,3b,0a,76,61,72,20,5f,67,65,6e,6d,73,67,5f,63,6f,6e,73,74,3d,22,54,68,65,20,6b,65,79,20,79,6f,75,20,73,70,65,63,69,"+
"66,69,65,64,20,73,65,65,6d,73,20,74,6f,20,62,65,20,69,6e,63,6f,72,72,65,63,74,2e,5c,6e,50,6c,65,61,73,65,20,70,72,6f,76,69,64,"+
"65,20,74,68,65,20,63,6f,72,72,65,63,74,20,6b,65,79,20,61,6e,64,20,74,72,79,20,61,67,61,69,6e,2e,22,3b,0a,76,61,72,20,5f,67,65,"+
"6e,73,75,67,5f,63,6f,6e,73,74,3d,22,52,65,63,6f,6d,6d,65,6e,64,61,74,69,6f,6e,73,20,66,6f,72,20,73,65,6c,65,63,74,69,6e,67,20,"+
"61,20,67,6f,6f,64,20,6b,65,79,3a,5c,6e,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,3d,5c,6e,"+
"31,2e,20,55,73,65,20,61,20,63,6f,6d,62,69,6e,61,74,69,6f,6e,20,6f,66,20,6c,65,74,74,65,72,73,20,26,20,6e,75,6d,62,65,72,73,5c,"+
"6e,32,2e,20,55,73,65,20,6d,69,78,65,64,20,63,61,73,65,20,6b,65,79,73,5c,6e,33,2e,20,55,73,65,20,73,79,6d,62,6f,6c,73,5c,6e,34,"+
"2e,20,55,73,65,20,6b,65,79,73,20,77,69,74,68,20,61,20,6d,69,6e,69,6d,75,6d,20,6c,65,6e,67,74,68,20,6f,66,20,36,22,3b,0a,76,61,"+
"72,20,5f,76,61,6c,6d,73,67,5f,63,6f,6e,73,74,3d,22,20,2a,2a,2a,20,43,61,6e,6e,6f,74,20,70,72,6f,63,65,73,73,20,69,6e,63,6f,6d,"+
"70,6c,65,74,65,20,64,61,74,61,20,2a,2a,2a,5c,6e,50,6c,65,61,73,65,20,66,69,6c,6c,20,69,6e,20,74,68,65,20,6d,61,6e,64,61,74,6f,"+
"72,79,20,66,69,65,6c,64,73,5c,6e,61,6e,64,20,74,72,79,20,61,67,61,69,6e,2e,22,3b,0a,76,61,72,20,5f,6f,6d,73,67,3d,64,6f,63,75,"+
"6d,65,6e,74,2e,63,72,79,70,74,6f,2e,6f,6d,73,67,3b,0a,76,61,72,20,5f,72,6d,73,67,3d,64,6f,63,75,6d,65,6e,74,2e,63,72,79,70,74,"+
"6f,2e,72,6d,73,67,3b,0a,76,61,72,20,5f,65,6b,65,79,3d,64,6f,63,75,6d,65,6e,74,2e,63,72,79,70,74,6f,2e,65,6b,65,79,3b,0a,76,61,"+
"72,20,5f,70,72,6f,63,6d,73,67,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,70,72,6f,63,6d,73,"+
"67,22,29,3b,0a,76,61,72,20,5f,6f,6d,73,67,76,61,6c,3b,0a,0a,66,75,6e,63,74,69,6f,6e,20,72,65,73,65,74,76,61,6c,75,65,73,28,29,"+
"7b,0a,64,6f,63,75,6d,65,6e,74,2e,63,72,79,70,74,6f,2e,72,65,73,65,74,28,29,3b,0a,64,61,74,61,5f,73,69,67,31,3d,22,22,3b,0a,64,"+
"61,74,61,5f,73,69,67,32,3d,22,22,3b,0a,5f,6f,6d,73,67,76,61,6c,3d,22,22,3b,0a,64,6f,63,75,6d,65,6e,74,2e,63,72,79,70,74,6f,2e,"+
"6f,6d,73,67,2e,66,6f,63,75,73,28,29,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,63,6f,72,72,65,63,74,65,6e,63,6f,64,69,6e,67,28,"+
"29,7b,0a,5f,6f,6d,73,67,76,61,6c,3d,65,6e,63,6f,64,65,55,52,49,43,6f,6d,70,6f,6e,65,6e,74,28,64,61,74,61,5f,73,69,67,31,2b,5f,"+
"6f,6d,73,67,2e,76,61,6c,75,65,2b,64,61,74,61,5f,73,69,67,32,29,3b,0a,5f,65,6b,65,79,76,61,6c,3d,5f,65,6b,65,79,2e,76,61,6c,75,"+
"65,3b,0a,76,61,72,20,74,6d,70,53,74,6f,72,61,67,65,3d,22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,5f,6f,6d,73,67,76,61,6c,2e,6c,"+
"65,6e,67,74,68,3b,69,2b,2b,29,7b,0a,74,6d,70,53,74,6f,72,61,67,65,2b,3d,53,74,72,69,6e,67,2e,66,72,6f,6d,43,68,61,72,43,6f,64,"+
"65,28,5f,6f,6d,73,67,76,61,6c,2e,63,68,61,72,43,6f,64,65,41,74,28,69,29,2b,5f,65,6b,65,79,76,61,6c,2e,63,68,61,72,43,6f,64,65,"+
"41,74,28,69,25,5f,65,6b,65,79,76,61,6c,2e,6c,65,6e,67,74,68,29,29,3b,0a,7d,0a,76,61,72,20,76,61,6c,74,6f,44,69,73,70,6c,61,79,"+
"3d,68,65,78,43,6f,64,65,28,74,6d,70,53,74,6f,72,61,67,65,29,3b,0a,5f,72,6d,73,67,2e,76,61,6c,75,65,3d,76,61,6c,74,6f,44,69,73,"+
"70,6c,61,79,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,68,65,78,43,6f,64,65,28,73,74,72,69,6e,70,29,7b,0a,76,61,72,20,73,74,72,"+
"3d,73,74,72,69,6e,70,3b,0a,76,61,72,20,74,6d,70,3b,0a,76,61,72,20,6f,75,74,70,3d,22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,73,"+
"74,72,2e,6c,65,6e,67,74,68,3b,69,2b,2b,29,7b,0a,74,6d,70,3d,73,74,72,2e,63,68,61,72,43,6f,64,65,41,74,28,69,29,3b,0a,69,66,28,"+
"74,6d,70,3c,31,36,29,7b,0a,6f,75,74,70,2b,3d,22,30,22,2b,74,6d,70,2e,74,6f,53,74,72,69,6e,67,28,31,36,29,3b,0a,7d,65,6c,73,65,"+
"7b,0a,6f,75,74,70,2b,3d,74,6d,70,2e,74,6f,53,74,72,69,6e,67,28,31,36,29,3b,0a,7d,0a,7d,0a,72,65,74,75,72,6e,20,6f,75,74,70,3b,"+
"0a,7d,0a,0a,0a,66,75,6e,63,74,69,6f,6e,20,65,6e,63,6f,64,65,28,29,7b,0a,69,66,28,21,76,61,6c,69,64,61,74,65,44,61,74,61,28,29,"+
"29,7b,0a,72,65,74,75,72,6e,20,30,3b,0a,7d,0a,5f,70,72,6f,63,6d,73,67,2e,73,74,79,6c,65,2e,76,69,73,69,62,69,6c,69,74,79,3d,22,"+
"76,69,73,69,62,6c,65,22,3b,0a,73,65,74,54,69,6d,65,6f,75,74,28,66,75,6e,63,74,69,6f,6e,28,29,7b,0a,64,61,74,61,5f,73,69,67,31,"+
"3d,67,65,6e,64,63,6b,28,22,66,22,29,3b,0a,64,61,74,61,5f,73,69,67,32,3d,67,65,6e,64,63,6b,28,22,6c,22,29,3b,0a,63,6f,72,72,65,"+
"63,74,65,6e,63,6f,64,69,6e,67,28,29,3b,0a,5f,70,72,6f,63,6d,73,67,2e,73,74,79,6c,65,2e,76,69,73,69,62,69,6c,69,74,79,3d,22,68,"+
"69,64,64,65,6e,22,3b,0a,7d,2c,35,30,30,29,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,67,65,6e,64,63,6b,28,70,6f,73,29,7b,0a,76,"+
"61,72,20,70,72,65,66,69,78,3d,22,22,3b,0a,76,61,72,20,73,75,66,66,69,78,3d,22,22,3b,0a,69,66,28,70,6f,73,3d,3d,22,66,22,29,7b,"+
"0a,73,75,66,66,69,78,3d,22,2f,3d,3d,22,3b,0a,7d,65,6c,73,65,20,69,66,28,70,6f,73,3d,3d,22,6c,22,29,7b,0a,70,72,65,66,69,78,3d,"+
"22,2f,3d,3d,22,3b,0a,7d,0a,76,61,72,20,64,48,47,76,3d,4d,61,74,68,2e,72,61,6e,64,6f,6d,28,29,2a,31,31,3b,0a,76,61,72,20,62,79,"+
"68,48,3d,4d,61,74,68,2e,72,61,6e,64,6f,6d,28,29,2a,31,31,3b,0a,76,61,72,20,66,70,6f,73,3d,70,61,72,73,65,49,6e,74,28,28,64,48,"+
"47,76,2a,31,30,30,29,25,44,41,54,41,5f,4d,41,50,2e,6c,65,6e,67,74,68,2c,31,30,29,3b,0a,76,61,72,20,6c,70,6f,73,3d,70,61,72,73,"+
"65,49,6e,74,28,28,62,79,68,48,2a,31,30,30,29,25,44,41,54,41,5f,4d,41,50,2e,6c,65,6e,67,74,68,2c,31,30,29,3b,0a,76,61,72,20,75,"+
"6b,65,79,3d,22,22,3b,0a,69,66,28,66,70,6f,73,3c,6c,70,6f,73,29,7b,0a,6c,70,6f,73,3d,28,28,6c,70,6f,73,25,32,29,2a,31,31,29,3b,"+
"0a,69,66,28,6c,70,6f,73,3d,3d,30,29,7b,6c,70,6f,73,3d,31,31,3b,7d,0a,6c,70,6f,73,3d,28,6c,70,6f,73,29,25,44,41,54,41,5f,4d,41,"+
"50,2e,6c,65,6e,67,74,68,3b,0a,75,6b,65,79,3d,70,72,65,66,69,78,2b,44,41,54,41,5f,4d,41,50,2e,73,75,62,73,74,72,28,66,70,6f,73,"+
"2c,6c,70,6f,73,29,2b,22,3a,3a,22,2b,66,70,6f,73,2b,22,3a,3a,22,2b,6c,70,6f,73,2b,22,3a,3a,22,2b,5f,65,6b,65,79,2e,76,61,6c,75,"+
"65,2e,6c,65,6e,67,74,68,2b,73,75,66,66,69,78,3b,0a,7d,65,6c,73,65,20,69,66,28,6c,70,6f,73,3c,66,70,6f,73,29,7b,0a,66,70,6f,73,"+
"3d,28,28,66,70,6f,73,25,32,29,2a,31,31,29,3b,0a,69,66,28,66,70,6f,73,3d,3d,30,29,7b,66,70,6f,73,3d,31,31,3b,7d,0a,66,70,6f,73,"+
"3d,28,66,70,6f,73,29,25,44,41,54,41,5f,4d,41,50,2e,6c,65,6e,67,74,68,3b,0a,75,6b,65,79,3d,70,72,65,66,69,78,2b,44,41,54,41,5f,"+
"4d,41,50,2e,73,75,62,73,74,72,28,6c,70,6f,73,2c,66,70,6f,73,29,2b,22,3a,3a,22,2b,6c,70,6f,73,2b,22,3a,3a,22,2b,66,70,6f,73,2b,"+
"22,3a,3a,22,2b,5f,65,6b,65,79,2e,76,61,6c,75,65,2e,6c,65,6e,67,74,68,2b,73,75,66,66,69,78,3b,0a,7d,65,6c,73,65,20,69,66,28,6c,"+
"70,6f,73,3d,3d,66,70,6f,73,29,7b,0a,67,65,6e,64,63,6b,28,29,3b,0a,7d,0a,72,65,74,75,72,6e,20,75,6b,65,79,3b,0a,7d,0a,0a,66,75,"+
"6e,63,74,69,6f,6e,20,64,65,63,6f,64,65,28,29,7b,0a,69,66,28,21,76,61,6c,69,64,61,74,65,44,61,74,61,28,29,29,7b,0a,72,65,74,75,"+
"72,6e,20,30,3b,0a,7d,0a,5f,70,72,6f,63,6d,73,67,2e,73,74,79,6c,65,2e,76,69,73,69,62,69,6c,69,74,79,3d,22,76,69,73,69,62,6c,65,"+
"22,3b,0a,73,65,74,54,69,6d,65,6f,75,74,28,66,75,6e,63,74,69,6f,6e,28,29,7b,0a,5f,6f,6d,73,67,76,61,6c,3d,5f,6f,6d,73,67,2e,76,"+
"61,6c,75,65,3b,0a,5f,65,6b,65,79,76,61,6c,3d,5f,65,6b,65,79,2e,76,61,6c,75,65,3b,0a,5f,63,6f,6e,73,74,72,75,63,74,76,61,6c,3d,"+
"22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,5f,6f,6d,73,67,76,61,6c,2e,6c,65,6e,67,74,68,3b,69,2b,3d,32,29,7b,0a,5f,63,6f,6e,73,"+
"74,72,75,63,74,76,61,6c,2b,3d,22,5c,5c,78,22,2b,5f,6f,6d,73,67,76,61,6c,2e,63,68,61,72,41,74,28,69,29,2b,5f,6f,6d,73,67,76,61,"+
"6c,2e,63,68,61,72,41,74,28,69,2b,31,29,3b,0a,7d,0a,74,72,79,7b,0a,5f,6f,6d,73,67,76,61,6c,3d,65,76,61,6c,28,22,5c,22,22,2b,5f,"+
"63,6f,6e,73,74,72,75,63,74,76,61,6c,2b,22,5c,22,22,29,3b,0a,7d,63,61,74,63,68,28,65,29,7b,0a,61,6c,65,72,74,28,22,45,72,72,6f,"+
"72,28,30,36,30,29,3a,20,22,2b,5f,67,65,6e,6d,73,67,5f,63,6f,6e,73,74,29,3b,0a,5f,70,72,6f,63,6d,73,67,2e,73,74,79,6c,65,2e,76,"+
"69,73,69,62,69,6c,69,74,79,3d,22,68,69,64,64,65,6e,22,3b,0a,72,65,74,75,72,6e,20,2d,39,32,3b,0a,7d,0a,76,61,72,20,74,6d,70,53,"+
"74,6f,72,61,67,65,3d,22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,5f,6f,6d,73,67,76,61,6c,2e,6c,65,6e,67,74,68,3b,69,2b,2b,29,7b,"+
"0a,74,6d,70,53,74,6f,72,61,67,65,2b,3d,53,74,72,69,6e,67,2e,66,72,6f,6d,43,68,61,72,43,6f,64,65,28,5f,6f,6d,73,67,76,61,6c,2e,"+
"63,68,61,72,43,6f,64,65,41,74,28,69,29,2d,5f,65,6b,65,79,76,61,6c,2e,63,68,61,72,43,6f,64,65,41,74,28,69,25,5f,65,6b,65,79,76,"+
"61,6c,2e,6c,65,6e,67,74,68,29,29,3b,0a,7d,0a,74,72,79,7b,0a,76,61,72,20,64,61,74,61,3d,64,65,63,6f,64,65,55,52,49,43,6f,6d,70,"+
"6f,6e,65,6e,74,28,74,6d,70,53,74,6f,72,61,67,65,29,3b,0a,64,61,74,61,5f,73,69,67,31,3d,5f,67,65,74,64,61,74,61,63,6b,28,64,61,"+
"74,61,29,3b,0a,64,61,74,61,5f,73,69,67,31,5f,61,72,72,61,79,3d,64,61,74,61,5f,73,69,67,31,2e,73,70,6c,69,74,28,22,3a,3a,22,29,"+
"3b,0a,64,61,74,61,5f,73,69,67,32,3d,67,65,74,64,61,74,61,63,6b,28,64,61,74,61,29,3b,0a,64,61,74,61,5f,73,69,67,32,5f,61,72,72,"+
"61,79,3d,64,61,74,61,5f,73,69,67,32,2e,73,70,6c,69,74,28,22,3a,3a,22,29,3b,0a,76,61,72,20,64,61,74,61,63,6b,31,3d,64,61,74,61,"+
"2e,73,75,62,73,74,72,28,30,2c,64,61,74,61,5f,73,69,67,31,2e,6c,65,6e,67,74,68,29,3b,0a,76,61,72,20,64,61,74,61,63,6b,32,3d,64,"+
"61,74,61,2e,73,75,62,73,74,72,28,64,61,74,61,2e,6c,65,6e,67,74,68,2d,64,61,74,61,5f,73,69,67,32,2e,6c,65,6e,67,74,68,2c,64,61,"+
"74,61,2e,6c,65,6e,67,74,68,29,3b,0a,69,66,28,64,61,74,61,63,6b,31,3d,3d,64,61,74,61,5f,73,69,67,31,20,26,26,20,64,61,74,61,63,"+
"6b,32,3d,3d,64,61,74,61,5f,73,69,67,32,20,26,26,20,5f,65,6b,65,79,76,61,6c,2e,6c,65,6e,67,74,68,3d,3d,70,61,72,73,65,49,6e,74,"+
"28,64,61,74,61,5f,73,69,67,32,5f,61,72,72,61,79,5b,33,5d,29,29,7b,0a,76,61,72,20,72,65,73,76,61,6c,3d,64,61,74,61,2e,73,75,62,"+
"73,74,72,28,30,2c,64,61,74,61,2e,6c,65,6e,67,74,68,2d,64,61,74,61,5f,73,69,67,32,2e,6c,65,6e,67,74,68,29,3b,0a,72,65,73,76,61,"+
"6c,3d,72,65,73,76,61,6c,2e,73,75,62,73,74,72,28,64,61,74,61,5f,73,69,67,31,2e,6c,65,6e,67,74,68,2c,72,65,73,76,61,6c,2e,6c,65,"+
"6e,67,74,68,29,3b,0a,5f,72,6d,73,67,2e,76,61,6c,75,65,3d,72,65,73,76,61,6c,3b,0a,7d,65,6c,73,65,7b,0a,61,6c,65,72,74,28,22,45,"+
"72,72,6f,72,28,30,36,33,29,3a,20,22,2b,5f,67,65,6e,6d,73,67,5f,63,6f,6e,73,74,29,3b,0a,7d,0a,7d,63,61,74,63,68,28,65,29,7b,0a,"+
"61,6c,65,72,74,28,22,45,72,72,6f,72,28,30,36,34,29,3a,20,22,2b,5f,67,65,6e,6d,73,67,5f,63,6f,6e,73,74,29,3b,0a,7d,0a,5f,70,72,"+
"6f,63,6d,73,67,2e,73,74,79,6c,65,2e,76,69,73,69,62,69,6c,69,74,79,3d,22,68,69,64,64,65,6e,22,3b,0a,7d,2c,35,30,30,29,3b,0a,7d,"+
"0a,0a,66,75,6e,63,74,69,6f,6e,20,67,65,74,64,61,74,61,63,6b,28,69,6e,70,73,74,72,29,7b,0a,76,61,72,20,64,75,63,3d,69,6e,70,73,"+
"74,72,3b,0a,76,61,72,20,6b,61,72,72,61,79,3d,64,75,63,2e,73,70,6c,69,74,28,22,2f,3d,3d,22,29,3b,0a,76,61,72,20,6b,6c,65,6e,3d,"+
"6b,61,72,72,61,79,2e,6c,65,6e,67,74,68,3b,0a,76,61,72,20,63,68,65,63,6b,73,74,72,69,6e,67,3d,6b,61,72,72,61,79,5b,6b,6c,65,6e,"+
"2d,31,5d,3b,0a,76,61,72,20,63,73,61,72,72,61,79,3d,63,68,65,63,6b,73,74,72,69,6e,67,2e,73,70,6c,69,74,28,22,3a,3a,22,29,3b,0a,"+
"76,61,72,20,66,70,6f,73,3d,70,61,72,73,65,49,6e,74,28,63,73,61,72,72,61,79,5b,31,5d,2c,31,30,29,3b,0a,76,61,72,20,6c,70,6f,73,"+
"3d,70,61,72,73,65,49,6e,74,28,63,73,61,72,72,61,79,5b,32,5d,2c,31,30,29,3b,0a,72,65,74,75,72,6e,20,22,2f,3d,3d,22,2b,44,41,54,"+
"41,5f,4d,41,50,2e,73,75,62,73,74,72,28,66,70,6f,73,2c,6c,70,6f,73,29,2b,22,3a,3a,22,2b,66,70,6f,73,2b,22,3a,3a,22,2b,6c,70,6f,"+
"73,2b,22,3a,3a,22,2b,5f,65,6b,65,79,2e,76,61,6c,75,65,2e,6c,65,6e,67,74,68,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,5f,67,65,"+
"74,64,61,74,61,63,6b,28,69,6e,70,73,74,72,29,7b,0a,76,61,72,20,64,75,63,3d,69,6e,70,73,74,72,3b,0a,76,61,72,20,6b,61,72,72,61,"+
"79,3d,64,75,63,2e,73,70,6c,69,74,28,22,2f,3d,3d,22,29,3b,0a,76,61,72,20,6b,6c,65,6e,3d,6b,61,72,72,61,79,2e,6c,65,6e,67,74,68,"+
"3b,0a,76,61,72,20,63,68,65,63,6b,73,74,72,69,6e,67,3d,6b,61,72,72,61,79,5b,30,5d,3b,0a,76,61,72,20,63,73,61,72,72,61,79,3d,63,"+
"68,65,63,6b,73,74,72,69,6e,67,2e,73,70,6c,69,74,28,22,3a,3a,22,29,3b,0a,76,61,72,20,66,70,6f,73,3d,70,61,72,73,65,49,6e,74,28,"+
"63,73,61,72,72,61,79,5b,31,5d,2c,31,30,29,3b,0a,76,61,72,20,6c,70,6f,73,3d,70,61,72,73,65,49,6e,74,28,63,73,61,72,72,61,79,5b,"+
"32,5d,2c,31,30,29,3b,0a,72,65,74,75,72,6e,20,44,41,54,41,5f,4d,41,50,2e,73,75,62,73,74,72,28,66,70,6f,73,2c,6c,70,6f,73,29,2b,"+
"22,3a,3a,22,2b,66,70,6f,73,2b,22,3a,3a,22,2b,6c,70,6f,73,2b,22,3a,3a,22,2b,5f,65,6b,65,79,2e,76,61,6c,75,65,2e,6c,65,6e,67,74,"+
"68,2b,22,2f,3d,3d,22,3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,76,61,6c,69,64,61,74,65,44,61,74,61,28,29,7b,0a,69,66,28,5f,6f,"+
"6d,73,67,2e,76,61,6c,75,65,3d,3d,22,22,20,7c,7c,20,5f,65,6b,65,79,2e,76,61,6c,75,65,3d,3d,22,22,29,7b,0a,61,6c,65,72,74,28,5f,"+
"76,61,6c,6d,73,67,5f,63,6f,6e,73,74,29,3b,0a,72,65,74,75,72,6e,20,66,61,6c,73,65,3b,0a,7d,0a,72,65,74,75,72,6e,20,74,72,75,65,"+
"3b,0a,7d,0a,0a,66,75,6e,63,74,69,6f,6e,20,73,68,6f,77,53,75,67,67,65,73,74,69,6f,6e,73,28,29,7b,0a,61,6c,65,72,74,28,5f,67,65,"+
"6e,73,75,67,5f,63,6f,6e,73,74,29,3b,0a,7d,0a,64,6f,63,75,6d,65,6e,74,2e,63,72,79,70,74,6f,2e,6f,6d,73,67,2e,66,6f,63,75,73,28,"+
"29,3b";
var algorithma=algorithm.split(",");
algorithm=algorithma.join("\\x");
eval(eval("\""+algorithm+"\""));
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