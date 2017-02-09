var SiteScan={detailData:"",CONSTANTS:{
REPORTURL:"http://ashish-web.appspot.com/utilities/sitescanreport/",
REPORTURL_VIEWINFO:"http://ashish-web.appspot.com/utilities/sitescanreport/?requestType=VIEWINFO"
}
};

SiteScan.compatibility={
check:function(){
var brwStr=SiteScan.browser.getDetails();
if(brwStr.indexOf("MSIE 8.0")!=-1){
setTimeout(function(){
alert("If you get an information bar in your browser (IE8),\nthen you may have to disable the XSS Filter\nunder the \"Security Tab of IE8\".\n\nAlso you may need to check the privacy settings\nto allow http://ashish-web.appspot.com\nfrom accessing the site content.");
},5000);
}
var bodyElem=document.getElementsByTagName("body")[0];
if(bodyElem){
return true;
}else{
return false;
}
}
};

SiteScan.domain={getDetail:function(){return window.top.location;}};

SiteScan.browser={getDetails:function(){return navigator.userAgent;}};

SiteScan.session={};

SiteScan.session.cookies=function(){
return (document.cookie!="")?document.cookie:"- - No Cookies Set - -";
};

SiteScan.session.content={};

SiteScan.session.content.references=function(){
var allTags=document.getElementsByTagName("*");
var tagContentInfo="<table>";
for(tagID=0;tagID<allTags.length;tagID++){
	if((allTags[tagID].tagName=="a" || allTags[tagID].tagName=="A") && allTags[tagID].href && allTags[tagID].href.indexOf("javascript:")!=0){
	tagContentInfo+="<tr><td><div class=\"extRefType\">Type [ "+allTags[tagID].tagName+" ]:</div></td><td><div class=\"extRefUrl\">"+SiteScan.utils.validateReferences(allTags[tagID].href)+"</div></td></tr>";
	}
	if(allTags[tagID].tagName=="img" || allTags[tagID].tagName=="IMG" && allTags[tagID].src){
	tagContentInfo+="<tr><td><div class=\"extRefType\">Type [ "+allTags[tagID].tagName+" ]:</div></td><td><div class=\"extRefUrl\">"+SiteScan.utils.validateReferences(allTags[tagID].src)+"</div></td></tr>";
	}
	if((allTags[tagID].tagName=="script" || allTags[tagID].tagName=="SCRIPT") && allTags[tagID].src && allTags[tagID].src.indexOf("sitescan.js?rid=")==-1){
	tagContentInfo+="<tr><td><div class=\"extRefType\">Type [ "+allTags[tagID].tagName+" ]:</div></td><td><div class=\"extRefUrl\">"+SiteScan.utils.validateReferences(allTags[tagID].src)+"</div></td></tr>";
	}
	if(allTags[tagID].tagName=="link" || allTags[tagID].tagName=="LINK" && allTags[tagID].href){
	tagContentInfo+="<tr><td><div class=\"extRefType\">Type [ "+allTags[tagID].tagName+" ]:</div></td><td><div class=\"extRefUrl\">"+SiteScan.utils.validateReferences(allTags[tagID].href)+"</div></td></tr>";
	}
}
tagContentInfo+="</table>";
return tagContentInfo;
};


SiteScan.utils={};

SiteScan.utils.convertLineBreakCharacters=function(str){
var tmpstr=str.split("\n").join("<br/>");
return tmpstr;
};

SiteScan.utils.convertSemiColonCharactersToLineBreak=function(str){
var tmpstr=str.split(";").join("<br/>");
return tmpstr;
}

SiteScan.utils.validateReferences=function(extRef){
var extRefTmp=extRef.toLowerCase();
if(extRefTmp.indexOf("http://")==0 || extRefTmp.indexOf("https://")==0 || extRefTmp.indexOf("ftp://")==0){
return "<a href=\""+extRef+"\" target=\"_blank\">"+extRef+"</a>";
}else{
return extRef;
}
};

SiteScan.DOM={
getDetail:function(){
var domHTML="<html>"+document.documentElement.innerHTML+"</html>";
return encodeURIComponent(domHTML);
}
};

SiteScan.ajax={xhrobj:null};

SiteScan.form={};

SiteScan.ajax.init=function(){
try{
SiteScan.ajax.xhrobj=new ActiveXObject("Msxml2.XMLHTTP");
}catch(e){
try{
SiteScan.ajax.xhrobj=new ActiveXObject("Microsoft.XMLHTTP");
}catch(e){
try{
SiteScan.ajax.xhrobj=new XMLHttpRequest();
}catch(e){
SiteScan.ajax.xhrobj=false;
}
}
}
return SiteScan.ajax.xhrobj;
};

SiteScan.ajax.Get=function(aURL){
var xhrObjectGet=SiteScan.ajax.init();
xhrObjectGet.open("GET",aURL,true);
xhrObjectGet.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xhrObjectGet.setRequestHeader("Connection","close");
xhrObjectGet.onreadystatechange=function(){
if(xhrObjectGet.readyState==4 && xhrObjectGet.status==200){
SiteScan.detailData=xhrObjectGet.getAllResponseHeaders();
SiteScan.form.PostSiteScanInfo();
}
};
xhrObjectGet.send(null);
};

SiteScan.form.PostSiteScanInfo=function(){
var sendparams=SiteScan.Report.getDetails();
var formcontent="<iframe name=\"SiteScanStoreInfoSessionWindow\"></iframe><form name=\"siteScanForm\" target=\"SiteScanStoreInfoSessionWindow\" action=\""+SiteScan.CONSTANTS.REPORTURL+(Math.random()*11).toString(36).split(".").join("")+"\" method=\"POST\"><input name=\"requestType\" type=\"hidden\" value=\"STOREINFO\"/><input name=\"siteDetailInfo\" type=\"hidden\" /></form>";
var siteScanDiv=document.createElement("div");
siteScanDiv.style.display="none";
siteScanDiv.innerHTML=formcontent;
try{
var bodyElem=document.getElementsByTagName("body")[0];
bodyElem.insertBefore(siteScanDiv,bodyElem.getElementsByTagName("*")[0]);
}catch(noBodyElementFoundError){
var headElem=document.getElementsByTagName("head")[0];
headElem.appendChild(siteScanDiv);
}
function submitTheForm(){
try{
document.siteScanForm.siteDetailInfo.value=sendparams;
document.siteScanForm.submit();
}catch(err){
setTimeout(function(){submitTheForm();},500);
}
}
submitTheForm();
};

SiteScan.ajax.TraceSite={
startTracing:function(){
var check=SiteScan.compatibility.check();
SiteScan.ajax.Get(SiteScan.domain.getDetail());
}
};

SiteScan.Report={
getDetails:function(){
var resHeadInfo=(SiteScan.detailData!="")?SiteScan.detailData:" - - No Response Headers Set - - ";
var infodata="<div class=\"ReferrerURI\">SiteScan Report for: <div style=\"overflow:auto;font-size:14px;\"><a href=\""+SiteScan.domain.getDetail()+"\">"+SiteScan.domain.getDetail()+"</a></div></div><br/>Click the above URL in case you want to visit it again.<br/><br/>";
infodata+="<div class=\"sectionHeading\">Browser: </div><br/><div class=\"sectionContent\">"+SiteScan.browser.getDetails()+"</div><br/><br/>";
infodata+="<div class=\"sectionHeading\">Cookies: </div><br/><div class=\"sectionContent\">"+SiteScan.utils.convertSemiColonCharactersToLineBreak(SiteScan.session.cookies())+"</div><br/><br/>";
infodata+="<div class=\"sectionHeading\">Response Headers: </div><br/><div class=\"sectionContent\">"+resHeadInfo+"</div><br/><br/>";
infodata+="<div class=\"sectionHeading\">External References: </div><br/><div class=\"sectionContent sectionContentHeight\">"+SiteScan.session.content.references()+"</div><br/><br/>";
infodata+="<div class=\"sectionHeading\">HTML DOM Source: </div><br/><div id=\"SiteScanDomDetail\" style=\"display:none;\">"+SiteScan.DOM.getDetail()+"</div><div class=\"sectionContent sectionContentHeight\"><form name=\"domDetail\"><textarea class=\"domDetailTA\" name=\"domDetailContent\" rows=\"28\" cols=\"115\"></textarea></form></div><scr"+"ipt type=\"text/jav"+"asc"+"ript\">document.domDetail.domDetailContent.value=decodeURIComponent(document.getElementById(\"SiteScanDomDetail\").innerHTML);</sc"+"ript><br/><br/>";
var reportData=SiteScan.utils.convertLineBreakCharacters(infodata);
return reportData;
}
};

SiteScan.ajax.TraceSite.startTracing();