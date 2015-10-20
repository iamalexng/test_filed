//该为通用的index.js

//changeStyle改变首页风格
  function changeStyle(){
  	
  }
  
//电梯隐藏,在页面打开时默认隐藏
  function hideLeft(){
  $("#left_Div").hide();
  $("#left_Div_Open").hide();
  }
//电梯显示，获取当前body高度，>400显示，<400隐藏
  function showLeft(){
  var height=$("body").scrollTop();
  var h=document.documentElement.scrollTop;//解决ie不兼容scrollTop问题
  if(height>400||h>400){
  	if( $("#left_Div").hide()){
  	 $("#left_Div").show();
  	}
  	if( $("#left_Div_Open").hide()){
  	 $("#left_Div_Open").show();
  	}
   }
   if(height<400 && h<400){
  	if( $("#left_Div").show()){
  	 $("#left_Div").hide();
  	}
  	if( $("#left_Div_Open").show()){
  	 $("#left_Div_Open").hide();
  	}
   }
  }
  
  //显示menu--艹，这隐藏显示的逻辑好几层才行
  function navMenuShow(){
	  //nav_all_item 所有商品时，隐藏掉
	  $("#nav_all_item a").hover(function(){
		  $(".nav-list .nav-item .item-children").slideUp("fast");
		  $(".header-nav-menu").slideUp();
	  });
	  //首页时，所有的都隐藏掉
	  $("#nav_item0 a").hover(function(){
		  $(".nav-list .nav-item .item-children").slideUp("fast");
		  $(".header-nav-menu").slideUp();
	  });
	  $("#nav_item1 a").hover(function() {
		  $(".nav-list .nav-item .item-children").hide();
		  $(".header-nav-menu").slideDown();
		  $(".header-nav-menu .menu-li").hide();
		  $(".header-nav-menu #header_item_list_1").show();
		  
		},function(){
			$(".header-nav-menu").hover(function(){},function(){
				$(".header-nav-menu").slideUp();
			});
			$(".header-nav").hover(function(){},function(){
				$(".header-nav-menu").hover(function(){},function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-topbar").hover(function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-header").hover(function(){
					$(".header-nav-menu").slideUp();
				});
			});
		});
	  
	  $("#nav_item2 a").hover(function() {
		  $(".nav-list .nav-item .item-children").hide();
		  $(".header-nav-menu").slideDown();
		  $(".header-nav-menu .menu-li").hide();
		  $(".header-nav-menu #header_item_list_2").show();
		},function(){
			$(".header-nav-menu").hover(function(){},function(){
				$(".header-nav-menu").slideUp();
			});
			$(".header-nav").hover(function(){},function(){
				$(".header-nav-menu").hover(function(){},function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-topbar").hover(function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-header").hover(function(){
					$(".header-nav-menu").slideUp();
				});
			});
		});
	  
	  $("#nav_item3 a").hover(function() {
		  $(".nav-list .nav-item .item-children").hide();
		  $(".header-nav-menu").slideDown();
		  $(".header-nav-menu .menu-li").hide();
		  $(".header-nav-menu #header_item_list_3").show();
		},function(){
			$(".header-nav-menu").hover(function(){},function(){
				$(".header-nav-menu").slideUp();
			});
			$(".header-nav").hover(function(){},function(){
				$(".header-nav-menu").hover(function(){},function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-topbar").hover(function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-header").hover(function(){
					$(".header-nav-menu").slideUp();
				});
			});
		});
	  
	  $("#nav_item4 a").hover(function() {
		  $(".nav-list .nav-item .item-children").hide();
		  $(".header-nav-menu").slideDown();
		  $(".header-nav-menu .menu-li").hide();
		  $(".header-nav-menu #header_item_list_4").show();
		},function(){
			$(".header-nav-menu").hover(function(){},function(){
				$(".header-nav-menu").slideUp();
			});
			$(".header-nav").hover(function(){},function(){
				$(".header-nav-menu").hover(function(){},function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-topbar").hover(function(){
					$(".header-nav-menu").slideUp();
				});
				$(".site-header").hover(function(){
					$(".header-nav-menu").slideUp();
				});
			});
		});
	  $("#nav_item5").hover(function(){
		  $(".nav-list .nav-item .item-children").slideUp("fast");
		  $(".header-nav-menu").slideUp();
	  });
	  
	  $("#nav_item6").hover(function(){
		  $(".nav-list .nav-item .item-children").slideUp("fast");
		  $(".header-nav-menu").slideUp();
	  });
	  
  }
  //隐藏/显示 搜索提示
  function showChildren(){
	  $("#search").focus(function(){
		  $(".keyword-list").show();
		  });
	  $("#search").blur(function(){
			  $(".keyword-list").hide();
		  });
  }
  
  //显示工具栏
  function showToolbar(){
	  $("#nav_all_item a").hover(function(){
			$("#site-toolbar").show();
		});
	  //showTools
	  $("#site-toolbar .toolbar-body .item").hover(function(){
		  var dataType=$(this).attr("dataType");
		  if(dataType=="communication"){
			  $("#toolbar-tools").show();
			  $("#tools-col1").show();
			  $("#tools-col2").show();
			  $("#tools-col3").show();
			  $(".toolbar-tools .tools-body").width(780);
			  //隐藏点点列表
			  $(".hander-banner .hander-banner-body #focus-bubble li").hide();
		  }else if(dataType=="bag"){
			  $("#toolbar-tools").show();
			  $("#tools-col1").show();
			  $("#tools-col2").show();
			  $("#tools-col3").hide();
			  $(".toolbar-tools .tools-body").width(600);
			  $("#tools-col1").html("");
			  $("#tools-col2").html("");
			  $("#tools-col1").html( $("#test-tools-col1").html());
			  $("#tools-col2").html($("#test-tools-col2").html());
			  //隐藏点点列表
			  $(".hander-banner .hander-banner-body #focus-bubble li").hide();
			  
		  }else if(dataType=="car"){
			  $("#toolbar-tools").show();
			  $(".toolbar-tools .tools-body").width(780);
			  //隐藏点点列表
			  $(".hander-banner .hander-banner-body #focus-bubble li").hide();
		  }else{
			  $("#toolbar-tools").show();
			  $("#tools-col2").hide();
			  $("#tools-col3").hide();
			  $(".toolbar-tools .tools-body").width(300);
			  $("#tools-col1").html("");
			  $("#tools-col1").html( $("#test-tools-col3").html());
			  //显示点点列表
			  $(".hander-banner .hander-banner-body #focus-bubble li").show();
		  }
		},function(){
			$(".hander-banner").hover(function(){
				$("#toolbar-tools").hide();
				 //显示点点列表
				  $(".hander-banner .hander-banner-body #focus-bubble li").show();
			});
			$(".toolbar-tools .tools-body").hover(function(){
				
			},function(){
				//不在item,不在tools-body
				$("#toolbar-tools").hide();
				//隐藏点点列表
				 $(".hander-banner .hander-banner-body #focus-bubble li").hide();
			});
		});
	  
	  
  }
 
  
  
  
  