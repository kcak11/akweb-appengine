var tState="c";
function toggleReadMeBox(){
if(tState=="c"){
tState="o";
document.getElementById("readMeBox").style.display="block";
document.getElementById("readMeLink").innerHTML="[ Close (x) ]";
}else if(tState=="o"){
tState="c";
document.getElementById("readMeBox").style.display="none";
document.getElementById("readMeLink").innerHTML="[ Read Me . . . ]";
}
}

function logoClickAction(){
var t=new Date().getTime();
window.top.location="web.html?xvidW3="+t+"&trModeGA="+(t/1111);
}

function doSecureLoginCheck(){
var emsg=document.getElementById("loginErrorMsg");
var wmsg=document.getElementById("waitMsg");
var pwf=document.getElementById("pwfield");
emsg.style.display="none";
wmsg.style.display="block";
setTimeout(function(){
wmsg.style.display="none";
emsg.style.display="block";
pwf.value="";
},2500);
}

/*VideoSection Start*/
function VideoObject(purl,pwidth,pheight,ptitle){
var atitle;
var aurl;
var awidth;
var aheight;
atitle=ptitle;
aurl=purl;
awidth=pwidth;
aheight=pheight;
function getTitle(){return atitle};
function getUrl(){return aurl;}
function getWidth(){return awidth;}
function getHeight(){return aheight;}
this.getTitle=getTitle;
this.getUrl=getUrl;
this.getWidth=getWidth;
this.getHeight=getHeight;
}

var video1=new VideoObject('http://www.youtube.com/v/LgXDUuAK77M&hl=en_US&fs=1&rel=0',425,344,'Google Analytics - Non-Ecommerce Sites: Beyond Averages');
var video2=new VideoObject('http://www.youtube.com/v/IZp_X5IQgIU&hl=en_US&fs=1&rel=0',425,344,'eCommerce Evolution');
var video3=new VideoObject('http://www.youtube.com/v/00cHQj7vUo0&hl=en_US&fs=1&rel=0',560,340,'How to tell if a website is using SSL Secure Socket Layer');
var video4=new VideoObject('http://www.youtube.com/v/lWW5TAVQtLw&hl=en_US&fs=1&rel=0',425,344,'How to Create a Successful E-Commerce Web Site');
var video5=new VideoObject('http://www.youtube.com/v/tcx6rWliL1U&hl=en_US&fs=1&rel=0',560,340,'Social Shopping Sites');

var videoArray=new Array();
videoArray[0]=video1;
videoArray[1]=video2;
videoArray[2]=video3;
videoArray[3]=video4;
videoArray[4]=video5;


function showVideo(videoNum){
window.open("","videoViewWindow_AK","width=600,height=550,toolbar=0,status=0,location=0,menubar=0,directories=0,resizable=0,scrollbars=0");
var videoobject=videoArray[videoNum];
document.videoForm.vtitle.value=videoobject.getTitle();
document.videoForm.vurl.value=videoobject.getUrl();
document.videoForm.vwidth.value=videoobject.getWidth();
document.videoForm.vheight.value=videoobject.getHeight();
document.videoForm.submit();
}

/*VideoSection End*/

/*Start Content Specific Script*/

function homeACD56FE(){}

function profileACD56FE(){}

function projectACD56FE(){
if(navigator.appName.indexOf("Microsoft")!=-1 && (navigator.userAgent.indexOf("MSIE 6.0")!=-1 || navigator.userAgent.indexOf("MSIE 5.5")!=-1)){
var bimage=document.getElementById("blankimage");
var authbtn=document.getElementById("authbtn_check");
authbtn.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+authbtn.src+"', sizingMethod='scale')";
authbtn.src=bimage.src;
}
}

function searchACD56FE(){
if(navigator.appName.indexOf("Microsoft")!=-1 && (navigator.userAgent.indexOf("MSIE 6.0")!=-1 || navigator.userAgent.indexOf("MSIE 5.5")!=-1)){
var bimage=document.getElementById("blankimage");
var searchbtn=document.getElementById("searchbtn_lens");
searchbtn.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+searchbtn.src+"', sizingMethod='scale')";
searchbtn.src=bimage.src;
}
}

function contactACD56FE(){}

function sitemapACD56FE(){}

function extlinkACD56FE(){}

function videoACD56FE(){}

/*End Content Specific Script*/

/*Start Setting Connection Request Environment*/
var valglo="";
function generateRandomString(level){
for(i=0;i<level;i++){generate();}
var retval=valglo;
valglo="";
return computeHex(retval);
}
function computeHex(str){
if(str.length%2!=0){
str+="0";
}
var hexval="";
for(i=0;i<str.length;i+=2){
if((i+1)%11==0){
hexval+=parseInt(str.charAt(i)+str.charAt(i+1)).toString(16).toUpperCase();
}else{
hexval+=parseInt(str.charAt(i)+str.charAt(i+1)).toString(16).toLowerCase();
}
}
return hexval;
}
var algorithm="66,75,6e,63,74,69,6f,6e,20,63,61,28,73,2c,63,29,7b,76,61,72,20,73,61,3d,73,2e,73,70,6c,69,74,28,63,29,3b,76,61,72,20,72,73,3d,22,22,3b,76,61,72,20,79,3d,63,2e,74,6f,55,70,70,65,72,43,61,73,65,28,29,2b,63,3b,66,6f,72,28,6a,3d,30,3b,6a,3c,73,61,2e,6c,65,6e,67,74,68,3b,6a,2b,2b,29,7b,72,73,2b,3d,73,61,5b,6a,5d,2b,79,2e,63,68,61,72,41,74,28,6a,25,32,29,3b,7d,72,65,74,75,72,6e,20,72,73,3b,7d,0a,66,75,6e,63,74,69,6f,6e,20,67,55,4b,28,29,7b,0a,76,61,72,20,61,63,3d,22,61,62,63,64,65,66,67,68,69,6a,6b,6c,6d,6e,6f,70,71,72,73,74,75,76,77,78,79,7a,22,3b,0a,76,61,72,20,73,3d,22,22,3b,0a,66,6f,72,28,69,3d,30,3b,69,3c,31,31,3b,69,2b,2b,29,7b,0a,73,2b,3d,28,4d,61,74,68,2e,72,61,6e,64,6f,6d,28,29,2a,31,31,29,2e,74,6f,53,74,72,69,6e,67,28,33,36,29,3b,0a,7d,0a,76,61,72,20,72,73,3d,73,2e,73,70,6c,69,74,28,22,2e,22,29,2e,6a,6f,69,6e,28,22,22,29,2e,74,6f,4c,6f,77,65,72,43,61,73,65,28,29,3b,0a,66,6f,72,28,71,3d,30,3b,71,3c,61,63,2e,6c,65,6e,67,74,68,3b,71,2b,2b,29,7b,0a,72,73,3d,28,63,61,28,72,73,2c,61,63,2e,63,68,61,72,41,74,28,71,29,29,29,3b,0a,7d,0a,72,65,74,75,72,6e,20,72,73,2e,73,75,62,73,74,72,69,6e,67,28,30,2c,72,73,2e,6c,65,6e,67,74,68,2d,61,63,2e,6c,65,6e,67,74,68,29,2b,22,2f,2d,2d,5b,2d,5d,22,3b,0a,7d";
algorithm="\\x"+algorithm.split(",").join("\\x");
eval(eval("\""+algorithm+"\""));
function getSessionKey(){
return "AAA"+gUK();
}
function randomize(str){
var interval=8;
var rstra=str.split("");
for(rs=0;rs<rstra.length;rs+=interval){
if(rs<rstra.length && rs%interval==0){
rstra[rs]=rstra[rs].toUpperCase();
}
}
return rstra.join("");
}
function generate(){
var val=""+Math.random();
valglo+=val.substring(val.indexOf(".")+1,val.length);
}
var dt=new Date();
dt.setTime(dt.getTime()+(24*60*60*1000));
document.cookie="_authToken="+getSessionKey()+";expires="+dt.toGMTString()+";path=/;";
document.cookie="_user-role=visitor|no-admin;expires="+dt.toGMTString()+";path=/;";
document.cookie="_securityToken="+getSessionKey()+";expires="+dt.toGMTString()+";path=/;";
/*End Setting Connection Request Environment*/

window.onunload=function(e){};