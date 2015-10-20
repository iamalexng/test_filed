    //初始化加载的方法-homepage独立使用的init
	function init(){
		  changeStyle();
		  hideLeft();
		  setInterval("showLeft()", 200);
		  testLeft();
		  navMenuShow();
		 // showChildren();
		  showToolbar();
		  bannerPlay();
		  ads();
		  imgzoom();
		  itemDescription();
  }
	
  //banner方法
  function changeImg(_index){
	  var bannerList=$(".hander-banner .hander-banner-body .banner-list li");
	  var focusBubble=$(".hander-banner .hander-banner-body #focus-bubble");
		bannerList.eq(_index).fadeIn(250);
		bannerList.eq(_index).siblings().fadeOut(200);
		focusBubble.find("li").removeClass("current");
		focusBubble.find("li").eq(_index).addClass("current");
	}
  
  function bannerPlay(){
	  var bannerList=$(".hander-banner .hander-banner-body .banner-list li");
	  var bannerLength=bannerList.length;
	  var focusBubble=$(".hander-banner .hander-banner-body #focus-bubble");
	  var _index=0;
	  for(var i=0; i<bannerLength; i++){
		  $(".hander-banner .hander-banner-body .banner-list li").eq(i).css("zIndex",bannerLength-i);
		  if(i==0){//第一个加上当前点击的样式
			  focusBubble.append("<li class='current'></li>");
		  }else{
			  focusBubble.append("<li></li>");
		  }
	  }
	  //点击轮播
	  focusBubble.on("click","li",function(){
			$(this).addClass("current").siblings().removeClass("current");
			_index=$(this).index();
			changeImg(_index);
		});
	  
	  $(".hander-banner .hander-banner-body #next-img").click(function(){
		   _index--;
			if(_index<0){
				_index=bannerLength-1;
			}
			changeImg(_index);
	  });
	  
	  $(".hander-banner .hander-banner-body #prev-img").click(function(){
		  _index++;
			if(_index>bannerLength-1){
				_index=0;
			}
			changeImg(_index);
	  });
	  
  }
  
  //小广告
  function changeAds(_index){
	  var adsList=$(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads .ads-list li");
	  var focusBubble=$(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads #ads-focus-bubble");
	  adsList.eq(_index).fadeIn(250);
	  adsList.eq(_index).siblings().fadeOut(200);
		focusBubble.find("li").removeClass("current");
		focusBubble.find("li").eq(_index).addClass("current");
	}
  
  function ads(){
	  var adsList=$(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads .ads-list li");
	  var adsLength=adsList.length;
	  var focusBubble=$(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads #ads-focus-bubble");
	  var _index=0;
	  for(var i=0; i<adsLength; i++){
		  $(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads .ads-list .ads-list-li").eq(i).css("zIndex",adsLength-i);
		  if(i==0){//第一个加上当前点击的样式
			  focusBubble.append("<li class='current'></li>");
		  }else{
			  focusBubble.append("<li></li>");
		  }
	  }
	  //点击轮播
	  focusBubble.on("click","li",function(){
			$(this).addClass("current").siblings().removeClass("current");
			_index=$(this).index();
			changeAds(_index);
		});
	  
	  $(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads #ads-prev-img").click(function(){
		   _index--;
			if(_index<0){
				_index=adsLength-1;
			}
			changeAds(_index);
	  });
	  
	  $(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col .ads #ads-next-img").click(function(){
		  _index++;
			if(_index>adsLength-1){
				_index=0;
			}
			changeAds(_index);
	  });
  }
  
  function imgzoom(){
	  $(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-4col a").hover(function(){
		  var width =  $(this).find("img").width();
          var height =  $(this).find("img").height();
          //alert(height);
          var zoom=$(this).find("i").attr("zoom");
          if(zoom=="N"){//只zoom一次
		  $(this).find("img").stop().animate({
			  width: width+15,
              height: height + 15,
              marginLeft: -(5),
              marginTop: -(5)
          }, 300);
		  $(this).find("i").attr("zoom","Y");
          }
	  },function(){
		  var width =  $(this).find("img").width();
          var height =  $(this).find("img").height();
          var zoom=$(this).find("i").attr("zoom");
          if(zoom=="Y"){//只zoom一次
		  $(this).find("img").stop().animate({
			  width: width-15,
              height: height - 15,
              marginLeft: +(0),
              marginTop: +(0)
          }, 300);
		  $(this).find("i").attr("zoom","N");
          }
	  });
  }
  
  //显示介绍
  function itemDescription(){
	  $(".body-item-sheif .item-sheif-body .item-sheif-ul .sheif-li-3col a").hover(function(){
		  var p4=$(this).find(".p4").html();
		  if(p4!=null&&p4!="undefined"){
			 $(this).find(".p2").hide();
			 $(this).find(".p3").hide();
			 $(this).find(".p4").stop().animate({marginTop:"1px"},"fast");
			 $(this).find(".p4").animate({opacity:"1"},200);
		  }
	  },function(){
		  var p4=$(this).find(".p4").html();
		  if(p4!=null&&p4!="undefined"){
			  $(this).find(".p2").show();
			  $(this).find(".p3").show();
			  $(this).find(".p4").stop().animate({marginTop:"100px"},"fast");
		  }
	  });
  }
  
  
  
  
  