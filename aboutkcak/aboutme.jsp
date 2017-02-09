<!DOCTYPE html>
<html xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="http://opengraphprotocol.org/schema/">
<head>
<title>About Me - K.C.Ashish Kumar</title>
<%
String basestr="http://ashish-web.appspot.com/aboutkcak/";
String domainStr="http://ashish-web.appspot.com/";
if(request.getRequestURL().indexOf("http://localhost")!=-1){
basestr="http://localhost:8080/akweb/aboutkcak/";
domainStr="http://localhost:8080/akweb/";
}
%>
<base href="<%=basestr%>"/>
<style type="text/css">
body{
font-family:Verdana;
}

.tLinks{
color:#ffffff;
font-weight:bold;
border-bottom:1px dashed #ffffff;
font-family:Verdana;
font-size:11px;
}

.sheading{
font-weight:bold;
font-size:12px;
}

.sbody{
font-size:12px;
line-height:20px;
}
</style>
<script type="text/javascript" src="abtfiles/jq.js"></script>
<script type="text/javascript">
document.cookie="akwebsrcurl="+window.top.location+";path=/";
var nua=navigator.userAgent;
if(nua.indexOf("MSIE 6")!=-1 || nua.indexOf("MSIE 7")!=-1){
window.top.location="<%=domainStr%>oldbrowser/";
}
function _loadParser0(loadcontent,pexp,fexp){
document.open();
document.write(decodeURIComponent(loadcontent).split("").reverse().join("").replace("<span id=\"pexp\"></span>",pexp).replace("<span id=\"fexp\"></span>",fexp));
document.close();
}
</script>
</head>
<body style="background-image:url('abtfiles/topbar.png');background-repeat:repeat-x;">
<div id="fb-root"></div>
<script type="text/javascript">
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

<div id="topBarContent" style="position:absolute;top:9px;right:20px;">
<a href="http://ashish-web.appspot.com/" target="akwin" style="text-decoration:none;"><span class="tLinks">Ashish's Web</span></a>
&nbsp;<span style="color:#ffffff;">|</span>&nbsp;
<a href="http://code-archives.appspot.com/" target="cawin" style="text-decoration:none;"><span class="tLinks">Code-Archives</span></a>
&nbsp;<span style="color:#ffffff;">|</span>&nbsp;
<a href="http://easyutility.appspot.com/" target="eutilwin" style="text-decoration:none;"><span class="tLinks">EasyUtility</span></a>
</div>
<!--START CONTAINER-->
<div id="akwebMainContainer" style="position:relative;width:1183px;">

<div id="leftSideContent" style="position:absolute;top:50px;left:1px;width:600px;">
<script type="text/javascript">
document.open();
document.write("<sc"+"ript type=\"text/javas"+"cript\" src=\"http://cdn.ashishkumarkc.com/fetch?rID="+(new Date()).getTime()+"&type=text/javascript&furl=https://raw.githubusercontent.com/kcak11/code-project-121/master/web/akweb/jsdata9572995624294.js?cID="+new Date().getTime()+"\"></scr"+"ipt>");
document.close();
</script>
<div style="height:22px;" id="bottomSpacer">&nbsp;</div>
</div>

<div id="rightSideContent" style="position:absolute;top:150px;left:700px;">
<span class="sheading">Follow me on:</span>
<br/>
<br/>
<div style="display:none;width:1px;height:1px;">
<img src="abtfiles/twitter1.png" border="0"/>
<img src="abtfiles/fb1.png" border="0"/>
<img src="abtfiles/gplus1.png" border="0"/>
<img src="abtfiles/lin1.png" border="0"/>
</div>
<a href="http://twitter.com/kcak11" target="twitter_win" onmouseover="toggleImg('twitter',1);" onmouseout="toggleImg('twitter',0);"><img id="twitter" src="abtfiles/twitter0.png" border="0"/></a>
<a href="http://facebook.com/kcak11" target="fb_win" onmouseover="toggleImg('fb',1);" onmouseout="toggleImg('fb',0);"><img id="fb" src="abtfiles/fb0.png" border="0"/></a>
<a href="https://plus.google.com/113070604723616731524" target="gplus_win" onmouseover="toggleImg('gplus',1);" onmouseout="toggleImg('gplus',0);"><img id="gplus" src="abtfiles/gplus0.png" border="0"/></a>
<a href="http://in.linkedin.com/in/kcak11" target="lin_win" onmouseover="toggleImg('lin',1);" onmouseout="toggleImg('lin',0);"><img id="lin" src="abtfiles/lin0.png" border="0"/></a>
<br/>
<br/>
<table cellpadding="0" cellspacing="0"><tr>
<td align="center">
	<span class="sheading">QR Code for this Page:</span>
	<br/>
	<img src="abtfiles/aboutme_qr.png" style="width:150px;height:150px;"/>
	<br/>
</td>
<td>
<div style="width:22px;">&nbsp;</div>
</td>
<td align="center">
	<span class="sheading">Avatar:</span>
	<br/>
	<img src="abtfiles/avatar.png" style="width:150px;height:150px;" title="Avatar"/>
	<br/>
</td>
</tr></table>
<br/>
<span class="sbody">
My Technical Blog: <a href="http://code-archives.appspot.com/" target="cawin" style="color:#ff0000;text-decoration:none;border-bottom:1px solid #ff0000;">Code-Archives (http://code-archives.appspot.com)</a>
</span>
<br/>
<br/>
<span class="sbody">
Tags: <span style="color:#ff0000">Java Programmer, Web Designer, Graphics Creator, JavaScript,<br/>Web Analyst, HTML5, Mobile Web Programming</span>
</span>
<div style="height:11px;overflow:hidden;display:block;">&nbsp;</div>
<span class="sbody">&copy; <script type="text/javascript">var dt=new Date();document.write(dt.getFullYear());</script> Ashish's Web. All Rights Reserved.</span>
<div id="socialShareButtons" style="display:none;position:relative;top:20px;left:1px;">
<!--Twitter button-->
<a href="https://twitter.com/share" class="twitter-share-button" style="display:none;" data-url="http://ashish-web.appspot.com/aboutme" data-text="Check out this page">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
<!--End Twitter button-->

<!-- Facebook button -->
<div class="fb-like" style="margin-right:5px;" data-href="http://ashish-web.appspot.com/aboutme" data-send="false" data-layout="button_count" data-width="0" data-show-faces="false" data-font="verdana"></div>
<!--End Facebook button -->

<!--gplus button -->
<!-- Place this tag where you want the +1 button to render -->
<g:plusone size="medium" annotation="inline" width="120"></g:plusone>
<!-- Place this render call where appropriate -->
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>
<!--End gplus button -->

<!-- LinkedIn Button -->
<script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/Share" data-url="http://ashish-web.appspot.com/aboutme" data-counter="right"></script>
<!-- End LinkedIn Button -->
</div>
<script type="text/javascript">
setTimeout(function(){document.getElementById("socialShareButtons").style.display="block";
document.getElementById("___plusone_0").style.width="100px";
},4000);
</script>

</div>
</div><!--END CONTAINER-->

<script type="text/javascript">
document.oncontextmenu=function(e){return false;};
function toggleImg(imgid,scode){
document.getElementById(imgid).src="abtfiles/"+imgid+scode+".png";
}
</script>
<script type="text/javascript">
function adjustScreenPos(){
var cw=1183;
var ww=$(window).width();
var cp=(ww-cw)/2;
if(cp>0){
document.getElementById("akwebMainContainer").style.left=cp+"px";
}else{
document.getElementById("akwebMainContainer").style.left="10px";
}
}
adjustScreenPos();
if(navigator.userAgent.indexOf("MSIE")==-1){
window.addEventListener("resize",function(){adjustScreenPos();},false);
}else{
window.attachEvent("onresize",function(){adjustScreenPos();});
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