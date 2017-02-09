/*
-- Backup Generation Code --
document.open("text/html","replace");
document.write(decodeURIComponent("%3Ca%20class%3D%22mystyle%22%20href%3D%22https%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D0Bz-o7-kw_6KMR20tUWpnLWtISWs%26export%3Ddownload%22%3EDownload%20in%20.docx%20Format%3C%2Fa%3E%3Cbr%2F%3E%3Ca%20class%3D%22mystyle%22%20href%3D%22https%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D0Bz-o7-kw_6KMbW1iUGo0WllYYTQ%26export%3Ddownload%22%3EDownload%20in%20.pdf%20Format%3C%2Fa%3E"));
document.close();
*/

(function(){
function applyCSS(cssStr){
var styleElement=document.createElement("style");
styleElement.type="text/css";
if(styleElement.styleSheet){
styleElement.styleSheet.cssText=cssStr;
}else{
styleElement.appendChild(document.createTextNode(cssStr));
}
document.getElementsByTagName("head")[0].appendChild(styleElement);
}
applyCSS(".downloadLinks{font-family:Verdana;font-size:22px;color:#0084c4;cursor:pointer;border-bottom:1px dashed #0000ff;}");

window.fetchFile=function(filetype){
if(filetype==="docx"){
window.open("https://drive.google.com/uc?id=0Bz-o7-kw_6KMR20tUWpnLWtISWs&export=download","filefetchwin_akweb");
}else if(filetype==="pdf"){
window.open("https://drive.google.com/uc?id=0Bz-o7-kw_6KMbW1iUGo0WllYYTQ&export=download","filefetchwin_akweb");
}
};

function generateDownloadLinks(){
document.open("text/html","replace");
document.write(decodeURIComponent("%3Cspan%20class%3D%22downloadLinks%22%20onclick%3D%22fetchFile('docx')%3B%22%3EDownload%20in%20.docx%20format%3C%2Fspan%3E%3Cbr%2F%3E%3Cspan%20class%3D%22downloadLinks%22%20onclick%3D%22fetchFile('pdf')%3B%22%3EDownload%20in%20.pdf%20format%3C%2Fspan%3E%3Ciframe%20name%3D%22filefetchwin_akweb%22%20style%3D%22width%3A0px%3Bheight%3A0px%3Boverflow%3Ahidden%3Bdisplay%3Anone%3B%22%3E%3C%2Fiframe%3E"));
document.close();
}
generateDownloadLinks();
})();