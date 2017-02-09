<html>
<head>
<title>Logged Out !!!</title>
<script type="text/javascript">
window.onunload=function(e){};
history.go(1);
function noHistory(){history.go(1);}
</script>
<style type="text/css">
body{
font-family:Verdana;
}
</style>
</head>
<body>
<iframe src="about:blank" style="width:1px;height:1px;border:0px solid #ffffff;overflow:hidden;display:none;" onload="noHistory();"></iframe>
You have been logged out !!!
<br/>
<br/>
<span style="text-decoration:underline;cursor:pointer;color:#0000ff;" onclick="doLoginAgain();">Login Again</span>
<script type="text/javascript">
function doLoginAgain(){
window.top.location="https://ashish-web.appspot.com/applications/adminPage.jsp?mode=Login&rKey="+(new Date().getTime()/1111);
}
</script>
</body>
</html>