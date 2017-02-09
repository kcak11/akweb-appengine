function computeDim() {
  var cw = 0;
  var ch = 0;
  if( typeof( window.innerWidth ) == 'number' ) {
    //Non-IE
    cw = window.innerWidth;
    ch = window.innerHeight;
  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
    //IE 6+ in 'standards compliant mode'
    cw = document.documentElement.clientWidth;
    ch = document.documentElement.clientHeight;
  } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
    //IE 4 compatible
    cw = document.body.clientWidth;
    ch = document.body.clientHeight;
  }
  return [cw,ch];
}

function getScrollXY() {
  var scrOfX = 0, scrOfY = 0;
  if( typeof( window.pageYOffset ) == 'number' ) {
    //Netscape compliant
    scrOfY = window.pageYOffset;
    scrOfX = window.pageXOffset;
  } else if( document.body && ( document.body.scrollLeft || document.body.scrollTop ) ) {
    //DOM compliant
    scrOfY = document.body.scrollTop;
    scrOfX = document.body.scrollLeft;
  } else if( document.documentElement && ( document.documentElement.scrollLeft || document.documentElement.scrollTop ) ) {
    //IE6 standards compliant mode
    scrOfY = document.documentElement.scrollTop;
    scrOfX = document.documentElement.scrollLeft;
  }
  return [ scrOfX, scrOfY ];
}

function adjustScroll(sx,sy){
try{
    window.pageYOffset=sy;
    window.pageXOffset=sx;
}catch(scErr1){/**/}
try{
    document.body.scrollTop=sy;
    document.body.scrollLeft=sx;
}catch(scErr2){/**/}
try{
    document.documentElement.scrollTop=sy;
    document.documentElement.scrollLeft=sx;
}catch(scErr3){/**/}
}