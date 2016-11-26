#!/usr/local/bin/perl


use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;
  open(my $fh,'>','tmp.txt');
  print $fh $c->param('name');
  $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>mbox-connect</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.5.0/css/framework7.ios.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.5.0/css/framework7.ios.colors.min.css">
</head>
<body>
<script>
(function(global){var startY=0;var enabled=false;var handleTouchmove=function(evt){var el=evt.target;while(el!==document.body){var style=window.getComputedStyle(el);if(!style){break}if(el.nodeName==="INPUT"&&el.getAttribute("type")==="range"){return}var scrolling=style.getPropertyValue("-webkit-overflow-scrolling");var overflowY=style.getPropertyValue("overflow-y");var height=parseInt(style.getPropertyValue("height"),10);var isScrollable=scrolling==="touch"&&(overflowY==="auto"||overflowY==="scroll");var canScroll=el.scrollHeight>el.offsetHeight;if(isScrollable&&canScroll){var curY=evt.touches?evt.touches[0].screenY:evt.screenY;var isAtTop=startY<=curY&&el.scrollTop===0;var isAtBottom=startY>=curY&&el.scrollHeight-el.scrollTop===height;if(isAtTop||isAtBottom){evt.preventDefault()}return}el=el.parentNode}evt.preventDefault()};var handleTouchstart=function(evt){startY=evt.touches?evt.touches[0].screenY:evt.screenY};var enable=function(){window.addEventListener("touchstart",handleTouchstart,false);window.addEventListener("touchmove",handleTouchmove,false);enabled=true};var disable=function(){window.removeEventListener("touchstart",handleTouchstart,false);window.removeEventListener("touchmove",handleTouchmove,false);enabled=false};var isEnabled=function(){return enabled};var testDiv=document.createElement("div");document.documentElement.appendChild(testDiv);testDiv.style.WebkitOverflowScrolling="touch";var scrollSupport="getComputedStyle"in window&&window.getComputedStyle(testDiv)["-webkit-overflow-scrolling"]==="touch";document.documentElement.removeChild(testDiv);if(scrollSupport){enable()}var iNoBounce={enable:enable,disable:disable,isEnabled:isEnabled};if(typeof module!=="undefined"&&module.exports){module.exports=iNoBounce}if(typeof global.define==="function"){(function(define){define("iNoBounce",[],function(){return iNoBounce})})(global.define)}else{global.iNoBounce=iNoBounce}})(this);
</script>

<style>

.views {
    height: 100%;
    overflow: auto;
    -webkit-overflow-scrolling: touch;
}

</style>

<div class="views">
<div class="view view-main">
<div class="pages">
<div data-page="home" class="page navbar-fixed">
<div class="navbar">
<div class="navbar-inner">
<div class="left"> </div>
<div class="center">mbox-connect</div>
<div class="right"> </div>
</div>
</div>
<div class="page-content">

<div class="list-block">
<form id="my-form" action="/" method="GET" class="ajax-submit-onchange" >
<ul>
<li>
<div class="item-content">
<div class="item-inner">
<div class="item-title label">Name</div>
<div class="item-input">
<input type="text" name="name" placeholder="Your name">
</div>
</div>
</div>
</li>
<li>
<div class="item-content">
<div class="item-inner">
<div class="item-title label">E-mail</div>
<div class="item-input">
<input type="email" name="email" placeholder="E-mail">
</div>
</div>
</div>
</li>
<li>
<div class="item-content">
<div class="item-inner">
<div class="item-title label">Gender</div>
<div class="item-input">
<select name="gender">
<option value="male" selected>Male</option>
<option value="female">Female</option>
</select>
</div>
</div>
</div>
</li>
<li>
<div class="item-content">
<div class="item-inner">
<div class="item-title label">Switch</div>
<div class="item-input">
<label class="label-switch">
<input type="checkbox" name="switch" value="yes">
<div class="checkbox"></div>
</label>
</div>
</div>
</div>
</li>
<li>
<div class="item-content">
<div class="item-inner">
<div class="item-title label">Slider</div>
<div class="item-input">
<div class="range-slider">
<input type="range" min="0" max="100" value="50" step="0.1" name="slider">
</div>
</div>
</div>
</div>
</li>
</ul>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/framework7/1.5.0/js/framework7.min.js"></script>
<script>
var myApp = new Framework7();
 
var $$ = Dom7;
 
$$('form.ajax-submit').on('submitted', function (e) {
  var xhr = e.detail.xhr; // actual XHR object
   
    var data = e.detail.data; // Ajax response from action file
      // do something with response data
      });
      </script>
<script>
      var myApp = new Framework7();  
      
      var $$ = Dom7;
      
      $$('.form-to-data').on('click', function(){
        var formData = myApp.formToData('#my-form');
        alert(JSON.stringify(formData));
      });
    </script>
</body>
</html>
