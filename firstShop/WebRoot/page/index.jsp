<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>商城首页</title>
    <jsp:include page="${basePath}public/fshop_include.jsp" flush="false" />
	<script src="<%=basePath%>/js/index.js"></script>
	<script src="<%=basePath%>/js/homepage.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base_defualt.css" media="all" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  $(document).ready(function(){
  init();
  queryShopStyle();
  });
  
 
  function queryShopStyle(){
  	var url;
  	//url="<%=basePath%>TestController/queryUserAndReturnString.action"; //返回字符串的测试
  //	url="<%=basePath%>TestController/queryUserAndReturnBean.action";//直接返回一个对象
  	url="<%=basePath%>TestController/queryUserAndReturnMap.action";//返回map
  	
  	
		$.ajax({
				url : url,
				data: {userId:3},
				type : 'POST',
				dataType : "json",
				contentType: "application/json;charset=utf-8",
				success : function(data) {
				//alert(data);
				//alert("成功返回：用户昵称是--"+data.secUser.nickName);
				}
				});
  }
  
 	function topFont(id){
 	$("#"+id).html("顶楼");
 	}
 	
 	function testLeft(){
 	$("#left_Div_Open div ul li a").hover(function() {
 	//alert(this.id);
 		$(this).html(this.id);
 	});
 	}
  </script>
  
  <body>
  <div style="height: 4001px;" id="background_div">
   
    <!-- L1 topbar -->
  <div class="site-topbar" id="topbar">
	  <div class="container">
	  This is our JSP  HomePage,恭喜你，成功跑起了该项目
	  	<a style="color:#ff6700;cursor: pointer;">风格1</a>
	  	<span >|</span>
	  	<a style="color:#ff0000;cursor: pointer;">风格2</a>
		  <div class="topbar-info" >
		  	<a onclick="queryShopStyle();" href="javascript:void(0)">测试查询数据库</a>
		  	<a>登录</a>
		  	<span >|</span>
		  	<a>注册</a>
		  </div>
	  </div>
  </div>
  
  <!-- L1 头部搜索栏  等待建设中 -->
  <div class="site-header">
  		<div class="container">
			<div class="header-logo">
				<a class="logo ir">官网logo</a>
			</div>
			<!-- L2  头部列表Div -->
			<div class="header-nav">
				<!-- L3 列表 头部标题栏 -->
				<ul class="nav-list">
					<li class="nav-item" id="nav_all_item"> 
						<a class="link" href="javascript:void(0);">
						<span class="text">全部商品类型</span>
						<span class="arrow"></span>
						</a>
					</li>
					<li class="nav-item" id="nav_item0">
						<a class="link" href="<%=basePath%>page/index.jsp"  style="cursor: pointer;">
						<span class="text">首页</span>
						<span class="arrow"></span>
						</a>
						<div class="item-children">
						</div>
					</li>
					<li class="nav-item" id="nav_item1">
						<a class="link" href="javascript:void(0);">
						<span class="text" id="nav_items1">衣服</span>
						</a>
					</li>
					<li class="nav-item" id="nav_item2"> 
						<a class="link" href="javascript:void(0);">
						<span class="text">裤子·裙子</span>
						<span class="arrow"></span>
						</a>
					</li>
					<li class="nav-item" id="nav_item3">
						<a class="link" href="javascript:void(0);">
						<span class="text">鞋子</span>
						<span class="arrow"></span>
						</a>
					</li>
					<li class="nav-item" id="nav_item4">
						<a class="link" href="javascript:void(0);">
						<span class="text">箱包</span>
						<span class="arrow"></span>
						</a>
					</li>
					<li class="nav-item" id="nav_item5">
						<a class="link" href="javascript:void(0);">
						<span class="text">帮助中心</span>
						<span class="arrow"></span>
						</a>
					</li>
					<li class="nav-item" id="nav_item6">
						<a class="link" href="javascript:void(0);">
						<span class="text">联系我们</span>
						<span class="arrow"></span>
						</a>
						<div class="item-children">
						</div>
					</li>
					</ul>
					<!-- L3 列表 左侧工具栏 -->
					<ul>
					<li class="nav-item" style="list-style:none;">
					<div id="site-toolbar" class="site-toolbar">
				  		<div class="toolbar-body toolbar-homepage">
				  		<ul>
				  			<li class="item item-first">
				  				<a>服装、珠宝</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>钟表、奢侈品</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item" dataType="communication">
				  				<a>手机、数码、通讯</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item" dataType="bag">
				  				<a>箱包</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>运动户外</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>母婴</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>图书、音像</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>家居、家具、厨具</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>家用电器</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item">
				  				<a>电脑、办公</a>
				  				<i class="i-icon">></i>
				  			</li>
				  			<li class="item" dataType="car">
				  				<a>汽车、汽车用品</a>
				  				<i class="i-icon">></i>
				  			</li>
				  		</ul>
				  		</div>
				  	</div>
					</li>
					<li class="nav-item" style="list-style:none;">
						<div id="toolbar-tools" class="toolbar-tools">
							<div class="tools-body">
								<ul class="tools-col" id="tools-col1">
								<li class="col-unit item-first">
								<a>
								<img src="<%=basePath%>images/homePage/mi4.jpg" >
								<span>3G手机</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/mi4c.jpg" >
								<span>4G手机</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/duijiangji.jpg" >
								<span>对讲机</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/dukaqi.jpg" >
								<span>读卡器</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/erji.jpg" >
								<span>耳机</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/xiaoyi.jpg" >
								<span>外置摄像器材</span>
								</a>
								</li>
								<!-- 超出6个后增加ul -->
								</ul>
								<ul class="tools-col" id="tools-col2">
								<li class="col-unit item-first">
								<a>
								<img src="<%=basePath%>images/homePage/yidongchong.jpg" >
								<span>其他配件1-col2</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/yanjing.jpg" >
								<span>其他配件2-col2</span>
								</a>
								</li>
								</ul>
								<ul class="tools-col" id="tools-col3">
								<li class="col-unit item-first">
								<a>
								<img src="<%=basePath%>images/homePage/yidongchong.jpg" >
								<span>其他配件3-col3</span>
								</a>
								</li>
								<li class="col-unit">
								<a>
								<img src="<%=basePath%>images/homePage/yanjing.jpg" >
								<span>其他配件4-col3</span>
								</a>
								</li>
								</ul>
							</div>
						</div>
					</li>
					</ul>
					
			</div>
			
  	
				<div class="header-search">
				<form id="J_searchForm"
					class="search-form clearfix search-form-focus"
					action="<%=basePath%>page/search.jsp" method="get" autocomplete="off">
					<label for="search" class="hide"></label>
					 <input class="search-text" type="search" id="search" name="keyword" autocomplete="off">
					 <!-- 搜索框边上的按钮 -->
					<input type="submit" class="search-btn" value="">
					
					<div id="J_keywordList" class="keyword-list">
						<ul class="result-list">
							<li>
							<a href="<%=basePath%>page/search.jsp" target="_blank" >牛仔裤
							<span class="result">约有22件</span>
							</a>
							</li>
							<li>
							<a>
							衬衫
							<span class="result">约有2件</span>
							</a>
							</li>
							<li><a
								href="aaa" target="_top">内裤<span
									class="result">约有5种</span>
							</a>
							</li>
							<li><a
								href="<%=basePath%>/page/search.jsp">情趣内衣<span
									class="result">约有999件</span>
							</a>
							</li>
							<li><a
								href="<%=basePath%>/page/search.jsp">背包<span
									class="result">约有14种</span>
							</a>
							</li>
						</ul>
					</div>
				</form>
				</div>
			
  </div>
  <div class="header-nav-menu">
  	<ul>
  	<li id="header_item_list_1" class="menu-li">
  	<div class="item-children" id="item-children_menu">
							<div class="item-children-div" >
									<ul class="children-list">
										<li class="items-first">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/spring_tree.png" alt="春季时装" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >春季时装</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/summer_tree.png" alt="夏季时装" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >夏季时装</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/autumn_tree.png" alt="秋季时装" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >秋季时装</a>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/winter_tree.png" alt="冬季时装" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >冬季时装</a>
										</li>
									</ul>
								</div>
						</div>
						</li>
						<li id="header_item_list_2" class="menu-li">
						<div class="item-children">
						<div class="item-children-div">
									<ul class="children-list">
										<li class="items-first">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/spring_tree.png" alt="长裤" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >长裤</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/summer_tree.png" alt="短裤" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >短裤</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/autumn_tree.png" alt="内裤" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >内裤</a>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/winter_tree.png" alt="长裙" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >长裙</a>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/winter_tree.png" alt="长裙" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >短裙</a>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/winter_tree.png" alt="长裙" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >连衣裙</a>
										</li>
									</ul>
								</div>
						</div>
						</li>
						<li id="header_item_list_3" class="menu-li">
						<div class="item-children">
						<div class="item-children-div">
									<ul class="children-list">
										<li class="items-first">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/shoes_lady.png" alt="女鞋" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >女鞋</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/shoes_man.png" alt="男鞋" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >男鞋</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="<%=basePath%>images/shoes_children.png" alt="童鞋" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >童鞋</a>
										</p>
										</li>
									</ul>
								</div>
						</div>
						</li>
						<li id="header_item_list_4" class="menu-li">
						<div class="item-children">
						<div class="item-children-div">
									<ul class="children-list">
										<li class="items-first">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/spring_tree.png" alt="箱类" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >箱类</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/summer_tree.png" alt="包类" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >包类</a>
										</p>
										</li>
									</ul>
								</div>
						</div>
						</li>
						</ul>
  </div>
  
  <!-- L1 左侧菜单栏 等待建设中 -->
	<!-- 测试1区 左侧导航 -->
	<div id="test-tools-bar" style="display:none;">
		<ul class="tools-col" id="test-tools-col1">
			<li class="col-unit item-first">
				<a>
					<img src="<%=basePath%>images/homePage/bag/shoudai.jpg" >
					<span>手袋</span>
				</a>
			</li>
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/dengshanbao.jpg" >
					<span>登山包</span>
				</a>
			</li>
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/diannaobao.jpg" >
					<span>电脑包</span>
				</a>
			</li>
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/lvxingbao.jpg" >
					<span>旅行包</span>
				</a>
			</li>
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/qianbao.jpg" >
					<span>钱包</span>
				</a>
			</li>
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/mamidai.jpg" >
					<span>妈咪袋</span>
				</a>
			</li>
		</ul>
		<ul class="tools-col" id="test-tools-col2">
			<li class="col-unit">
				<a>
					<img src="<%=basePath%>images/homePage/bag/gouwudai.jpg" >
					<span>购物袋</span>
				</a>
			</li>
		</ul>
		<ul  class="tools-col" id="test-tools-col3">
			<li class="col-unit item-first">
				<a>
					<img src="<%=basePath%>images/homePage/404.jpg" >
					<span>暂无商品</span>
				</a>
			</li>
		</ul>
	</div>
	<!-- 结束测试1区 -->

</div>

 <!-- L1 列表 banner图片广告区  -->
 		<div class="hander-banner">
							<div class="hander-banner-body">
								<ul class="banner-list">
									<li>
									
									<a href="http://www.baidu.com" class="banner-img">
										<img src="<%=basePath%>images/homePage/banner/banner2.jpg" alt="">
									</a>
									<div class="banner-text">
										<p>这是一句广告语</p>					
									</div>
									</li>
									<li>
									<a href="#" class="banner-img">
										<img src="<%=basePath%>images/homePage/banner/banner2.jpg" alt="">
									</a>
									<div class="banner-text">
										<p>这是二句广告语</p>					
									</div>
									</li>
									<li>
									<a href="#" class="banner-img">
										<img src="<%=basePath%>images/homePage/banner/banner3.jpg" alt="">
									</a>
									<div class="banner-text">
										<p>这是卖衣服的广告语</p>					
									</div>
									</li>
									<li>
									<a href="#" class="banner-img">
										<img src="<%=basePath%>images/homePage/banner/banner4.jpg" alt="">
									</a>
									<div class="banner-text">
										<p>这是Q版广告语</p>					
									</div>
									</li>
									<li>
									<a href="#" class="banner-img">
										<img src="<%=basePath%>images/homePage/banner/banner5.jpg" alt="">
									</a>
									<div class="banner-text">
										<p>这是汽车广告语</p>					
									</div>
									</li>
								</ul>
								
								<a  id="prev-img" class="banner-handle"></a>
								<a  id="next-img" class="banner-handle"></a>
								<ul id="focus-bubble">
								<!-- jq加
								<li class="current"></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								 -->
								</ul>
							</div>
		</div>		
  <!-- L1 列表 banner图片广告区 结束 -->
  
 <!-- L1 -->
  <div class="body-item-sheif item-sheif-backgroup1">
  	<div class="item-sheif-body">
  	<p class="item-sheif-title">这是商品区-1楼 3列区</p>
  		<ul class="item-sheif-ul">
								<li class="sheif-li sheif-li-3col sheif-item-title-1">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/dianshi.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">小米电视</p>
											<p class="p2">55寸|超大|高清</p>
											<p class="p3">
												<span class="p3_price">
													<b>5149元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-3col sheif-item-title-2">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/pingban.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">小米平板</p>
											<p class="p2">超薄、装B</p>
											<p class="p3">
												<span class="p3_price">
													<b>888元</b>
												</span>
											</p>
											<p class="p4">小米平板,这是一个全新的平板电脑,这段是介绍的文字内容</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-3col sheif-item-title-3">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/xiangji.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">小米相机</p>
											<p class="p2">偷拍神器</p>
											<p class="p3">
												<span class="p3_price">
													<b>1499元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
  		</ul>
  	</div>
  </div>
  <!-- 商品1区结束 -->
  
   <div class="body-item-sheif">
  	<div class="item-sheif-body">
  	<p class="item-sheif-title animated fadeInLeft">这是商品区-2楼 4列区</p>
  		<ul class="item-sheif-ul">
								<li class="sheif-li sheif-li-4col sheif-item-title-4">
									<a href="javascript:void(0);">
										<i class="i_img" zoom="N">
											<img src="<%=basePath%>images/homePage/item/shubiao.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">苹果鼠标</p>
											<p class="p2">新颖|轻便|清新</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img" zoom="N">
											<img src="<%=basePath%>images/homePage/item/jiezhi.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">苹果手机壳</p>
											<p class="p2">透明、耐摔</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img" zoom="N">
											<img src="<%=basePath%>images/homePage/item/shoubiao.jpg" />
										</i>
										<div class="gu_p">
											<p class="p1">苹果手表</p>
											<p class="p2">能换两个肾喔</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img" zoom="N">
											<img src="<%=basePath%>images/homePage/item/yanjing.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">苹果眼镜</p>
											<p class="p2">暂无货</p>
											<p class="p3">
												
											</p>
										</div>
									</a>
								</li>
								 
  		</ul>
  	</div>
  </div>
  <!-- 3楼，楼中广告区 -->
   
   <div class="body-item-sheif item-sheif-backgroup1">
  	<div class="item-sheif-body">
  	<p class="item-sheif-title animated fadeInLeft">这是商品区-3楼 5列区</p>
  		<ul class="item-sheif-ul">
								<li class="sheif-li sheif-li-5col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/suishenting.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">苹果随身听</p>
											<p class="p2">3D环回立体</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-5col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/suishenting.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">苹果随身听</p>
											<p class="p2">3D环回立体</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-5col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/jiezhi.jpg" />
										</i>
										<div class="gu_p">
											<p class="p1">苹果戒指</p>
											<p class="p2">求婚戒指</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-5col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/jiezhi.jpg" />
										</i>
										<div class="gu_p">
											<p class="p1">苹果戒指</p>
											<p class="p2">求婚戒指</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-5col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/jiezhi.jpg" />
										</i>
										<div class="gu_p">
											<p class="p1">苹果戒指</p>
											<p class="p2">求婚戒指</p>
											<p class="p3">
												<span class="p3_price">
													<b>7888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
  		</ul>
  	</div>
  </div>
  
  
  <!-- L1 4楼区 -->
  <div class="body-item-sheif item-sheif-backgroup1">
  	<div class="item-sheif-body">
  	<p class="item-sheif-title">这是商品区-4楼 楼层广告区</p>
  		<ul class="item-sheif-ul">
								<li class="sheif-li sheif-li-3col sheif-item-title-1">
									<div class="ads">
										<ul class="ads-list">
											<li class="ads-list-li">
											<a href="http://www.baidu.com" class="ads-img" >
												<img src="<%=basePath%>images/homePage/item/xiangji.jpg" alt="">
											</a>
											</li>
											<li class="ads-list-li">
											<a href="http://www.baidu.com" class="ads-img" >
												<img src="<%=basePath%>images/homePage/item/pingban.jpg" alt="">
											</a>
											</li>
											<li class="ads-list-li">
											<a href="http://www.baidu.com" class="ads-img" >
												<img src="<%=basePath%>images/homePage/item/zipaigun.png" alt="">
											</a>
											</li>
											<li class="ads-list-li">
											<a href="http://www.baidu.com" class="ads-img" >
												<img src="<%=basePath%>images/homePage/item/chongdianqi.png" alt="">
											</a>
											</li>
											<li class="ads-list-li">
											<a href="http://www.baidu.com" class="ads-img" >
												<img src="<%=basePath%>images/homePage/item/usbxian.png" alt="">
											</a>
											</li>
										</ul>
										<a  id="ads-prev-img" class="ads-handle"></a>
										<a  id="ads-next-img" class="ads-handle"></a>
										<ul id="ads-focus-bubble">
										</ul>
									</div>
								</li>
								<li class="sheif-li sheif-li-3col sheif-item-title-2">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/pingban.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">小米平板</p>
											<p class="p2">超薄、装B</p>
											<p class="p3">
												<span class="p3_price">
													<b>888元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-3col sheif-item-title-3">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/xiangji.jpg" />
										</i>
										<div class="gu_p" >
											<p class="p1">小米相机</p>
											<p class="p2">偷拍神器</p>
											<p class="p3">
												<span class="p3_price">
													<b>1499元</b>
												</span>
											</p>
										</div>
									</a>
								</li>
  		</ul>
  	</div>
  </div>
  <!-- 商品4区结束 -->
  
  <!-- L1 左侧电梯Left  -->
  <div id="left_Div" style="width:80px">
	<div  id="left_Div_Open" style="display: block; position: fixed; left: 0px; bottom:80px;z-index:100;">
	 <div class="left">
	 	<ul>
	 	<li><a id="left_top" style="font-size: 12px" href="#" onmousemove="topFont(this.id);" >Top</a></li>
	 	<li><a id="left_1F" >1F</a></li>
	 	<li><a id="left_2F" >2F</a></li>
	 	<li><a id="left_3F" >3F</a></li>
	 	<li><a id="left_4F" >4F</a></li>
	 	<li><a id="left_5F" >5F</a></li>
	 	</ul>
	 </div>
  </div>
</div>

	
</div>
  </body>
</html>
