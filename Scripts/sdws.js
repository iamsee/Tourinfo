
function setMainHeight(d_height){var w_height=$(window).height()-d_height;w_height=w_height<0?0:w_height;$(".main_container").css({"min-height":w_height+"px","height":"100%","_height":w_height+"px"})}
function tophover(){$("#topNav .nav a").hover(function(){var activeClass=$(this).attr("id")+"_active",hoverClass=$(this).attr("id")+"_hover";if($(this).hasClass(activeClass)){return;}
$(this).addClass(hoverClass);if($(this).parent().prev().find("a").length!=0&&$(this).parent().next().find("a").length&&$(this).parent().next().find("a").attr("class").indexOf("_active")!=-1){$(this).parent().addClass("bottomHover").prev().addClass("rightHover");}else if($(this).parent().prev().find("a").length!=0&&$(this).parent().prev().find("a").attr("class").indexOf("_active")!=-1){$(this).parent().addClass("rightHover bottomHover");}else if($(this).parent().prev().find("a").length==0){$(this).parent().addClass("leftHover bottomHover rightHover");}else{$(this).parent().addClass("rightHover bottomHover").prev().addClass("rightHover");}},function(){var activeClass=$(this).attr("id")+"_active",hoverClass=$(this).attr("id")+"_hover";$(this).removeClass(hoverClass);$(this).parent().parent().children().removeClass("hover").removeClass("leftHover").removeClass("rightHover").removeClass("bottomHover");});}
function gotoTop(){if($(document).scrollTop()==0){$(".goto").hide();return;}
var scrollTop=$(document).scrollTop()+$(window).height()-129;var scrollLeft=parseInt(($(window).width()-960)/2)-59;if(scrollTop<0){scrollTop=0;}
if(scrollLeft<0){scrollLeft=0;}
$(".goto").css({"top":scrollTop+"px","right":scrollLeft+"px"}).show();}
function FeatureAnimate(elems,showTime,hideTime){this.elems=elems;this.showTime=showTime;this.hideTime=hideTime;this.number=0;this.status=3;this.hover=false;this.init=true;this.featureShow=function(){if(!this.init&&(!this.hover||this.status!=3)){return false}
if(this.init){this.number=$(".features li").length;this.init=false;}
this.status=0;$(this.elems[0]).animate({opacity:1},this.showTime,elemsShow(this,0));}
this.featureHide=function(){if(this.status!=1||this.hover){return false;}
this.status=2;$(this.elems).animate({opacity:0},this.hideTime,elemHide(this));}
function elemsShow(that,index){return function(){if(index==(that.number-1)){setTimeout(stopHide(that),5000);}
$(that.elems[index+1]).animate({opacity:1},that.showTime,elemsShow(that,index+1));}}
function stopHide(that){return function(){if(that.init){that.init=false;}
that.status=1;that.featureHide();return;}}
function elemHide(that){return function(){that.status=3;}}}
function CloudAnimate(stepTime,img){this.stepTime=stepTime;this.count=0;this.elems=null;this.number=0;this.startPos=-960;this.width=0;this.img=img;this.movement=null;this.init=function(){var left=parseInt(($(window).width()-1920)/2);$(".cloud").css({"width":"1920px","left":left+"px"});this.width=1920;this.number=2;var str="";for(var i=0;i<this.number;i++){str+='<div style="background:url('+this.img+') center top no-repeat;left:'+(this.startPos+this.width*i)+'px;"></div>';}
$(".cloud").html(str);this.elems=$(".cloud div");};this.start=function(){cloudMove(this)();};this.stop=function(){clearTimeout(this.moverment);};function cloudMove(that){return function(){var tElem=$(that.elems).eq(that.count%$(that.elems).length),tleft=parseInt($(tElem).css("left"));if(tleft<="-"+that.width){$(tElem).css({"left":that.width*($(that.elems).length-1)+"px"});that.count++;}
$(that.elems).each(function(i,e){$(e).css({"left":(parseInt($(e).css("left"))-1)+"px"});});that.movement=setTimeout(cloudMove(that),that.stepTime);}}}
$(document).ready(function(){tophover();var feature=new FeatureAnimate($(".features li"),1000,1000);feature.featureShow();(function(){$(".banner .main_title").hover(function(){feature.hover=true;feature.featureShow();},function(){feature.hover=false;feature.featureHide();})})();if(!window.ActiveXObject||window.XMLHttpRequest){if($("#weishi").length>=1){var cloud=new CloudAnimate(100,"http://img1sw.baidu.com/www/anquan/v1.2.5/asset/img/weishi/cloud.png");}else{var cloud=new CloudAnimate(100,"http://img1sw.baidu.com/www/anquan/v1.2.5/asset/img/shadu/cloud.png");}
cloud.init();cloud.start();$(window).bind("resize",function(){cloud.init();});}
hintOtherDownload();function hintOtherDownload(){$(".offline_download a").each(function(i,e){$(e).hover(function(){$(this).next("span").show();},function(){$(this).next("span").hide();});});}
changeTab();function changeTab(){$(".sub_nav li").each(function(i,e){$(e).hover(function(){if($(this).hasClass("active")){return;}
$(this).find(".imgPart").addClass("hover");},function(){if($(this).hasClass("active")){return;}
$(this).find(".imgPart").removeClass("hover");});});}});function setDotPosition(that){$(".sideBar .active").each(function(i,e){var posElem=$(e).parent("li");if(!$(posElem).hasClass(".snd_nav")){posElem=$(this).parents(".snd_nav");}
var pos=$(posElem).position();$(".active_dot").css({"top":(pos.top+11)+"px"});});}
function setContentHeight(){$(".main_content").outerHeight("auto");var wContent=$(".whole_content"),mContent_height=$(".main_content").outerHeight(),sideBar_height=$(".sideBar").outerHeight(),height=mContent_height;if(mContent_height<sideBar_height&&$("#main_content img").length<1){$(".main_content").outerHeight(sideBar_height);}}
var add_on=true;var up_totle=0;function remove_img(obj){$(obj).parent().remove();up_totle--;canAdd(1);}
function canAdd(t){if(t==0)add_on=!add_on;if(up_totle>=5){$('#upFileImg').hide();}
if(up_totle<5){$('#upFileImg').show();}
if(up_totle<0)up_totle=0;}
function change(){if($("#upFile").val()=='')return;canAdd(0);$('#upFileImg').hide();$("#imgFiles").append("<div id='onLoading' style='font-size:20px;line-height:67px;background-image:url('../img/shadu/img_bg.png')'>&nbsp;&nbsp;上传中...</div>");$("#sample").ajaxSubmit({dataType:'json',url:"/api/sample/json_upfile_sample/self",success:function(ret,sta){$('#onLoading').remove();$('#upFileImg').show();if(ret.status==1){up_totle++;canAdd(0);$("#imgFiles").append('<div><img onerror="reloadImg(this,\''+ret.msg.src+'\');" src="'+ret.msg.src+'" /><input name="img_urls[]" style="display:none;" value="'+ret.msg.src+'"><span onclick="remove_img(this)"></span></div>');$('.upload_warnig').html('');}else{up_totle--;canAdd(0);if(ret.msg.indexOf('2M')>0){$('.upload_warnig').html('图片超过2M');}else if(ret.msg.indexOf()){$('.upload_warnig').html('格式不正确');}else{$('.upload_warnig').html('上传失败');}}},error:function(html){$('#onLoading').remove();$('#upFileImg').show();up_totle--;canAdd(0);$('.upload_warnig').html('上传失败');}});return false;}
function reloadImg(o,src)
{o.src=src+"?t="+new Date().getTime();}
function get_lenth(s)
{var l=0;var a=s.split("");for(var i=0;i<a.length;i++){if(a[i].charCodeAt(0)<299){l++;}else{l+=2;}}
return l;}
function resetCode(t)
{$(t).children('img').attr('src',"/sample/checkcode?"+parseInt(10*Math.random()));return false;}
function showFile(){var value=$("#sample_file").val(),pos=-1;if((pos=value.lastIndexOf("\\"))!=-1){value=value.slice(pos+1);}
$(".file_cover").text(value);}
function pageAnimate(){$(".hoverLine").hide();$(".page .hoverLine").each(function(i,elem){var left=$(elem).prev().position().left+"px";$(elem).css("left",left);});$(".page a").bind("mouseenter",function(e){var targ=e.target;if(targ.tagName=="A"&&targ.className.indexOf("active")==-1){$(this).next(".hoverLine").fadeIn(300);$(targ).addClass("hover");}});$(".page a").bind("mouseleave",function(e){var targ=e.target;if(targ.tagName=="A"){$(this).next(".hoverLine").fadeOut(300);$(targ).removeClass("hover");}});}