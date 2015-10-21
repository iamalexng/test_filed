    //初始化加载的方法-homepage独立使用的init
	function init(){
		  changeStyle();
		  navMenuShow();
		  showChildren();
		  showToolbar();
		  initToolbar();
		  //setSearchTitle("首页,手机,手机型号1,颜色2");//工具js中有方法
		  searchScreen();
		  setInterval("showSuspentionTitile()", 200);
	}
	
	//初始化toolbar,先隐藏，在移动到指定地方出现反转动画
	function initToolbar(){
		$(".site-toolbar").css("display","none");
		$("#nav_all_item a").hover(function(){
			$("#nav_all_item a i").css("transform","rotateX(180deg)");//移出的时候将此修改为0或360deg
			$("#nav_all_item a i").css("top","7px");//移出的时候将此修改为0px;
		},function(){
			
		});
	}
	
	function searchScreen(){
		$(".search-screen .screen-body .filtrate-data ul li .more a").click(function(){
			
			$(this).parent().parent().find(".fa_select .fa-selet-hidden").slideToggle();
			
		});
	}
	
	function showSuspentionTitile(){
		  var height=$("body").scrollTop();
		  var h=document.documentElement.scrollTop;//解决ie不兼容scrollTop问题
		 // alert(height+","+h);
		  if(height>200||h>200){
			  $(".headTop").slideDown("fast");
		   }
		   if(height<200 && h<200){
			   $(".headTop").slideUp("fast");
		   }
		  }
	
	
	