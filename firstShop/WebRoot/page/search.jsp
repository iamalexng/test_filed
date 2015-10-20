<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
    <jsp:include page="${basePath}public/fshop_include.jsp" flush="false" />
	<script src="<%=basePath%>/js/index.js"></script>
	<script src="<%=basePath%>/js/search.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base_defualt.css" media="all" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  $(document).ready(function(){
  init();
  });
  
 
  function queryShopStyle(){
  	var url="<%=basePath%>TestController/queryUser.action";
		$.ajax({
				url : url,
				data: {userId:3},
				type : 'POST',
				dataType : "json",
				success : function(data) {
				alert("success");
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
						<i></i>
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
				  		<div class="toolbar-body toolbar-searchpage">
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
							<a style="cursor:pointer;">牛仔裤
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
								href="http://search.mi.com/search_%E5%B0%8F%E7%B1%B3%E6%89%8B%E7%8E%AF">内裤<span
									class="result">约有5种</span>
							</a>
							</li>
							<li><a
								href="http://search.mi.com/search_WiFi">情趣内衣<span
									class="result">约有999件</span>
							</a>
							</li>
							<li><a
								href="http://search.mi.com/search_%E8%87%AA%E6%8B%8D%E6%9D%86">背包<span
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
											<img src="./images/spring_tree1.png" alt="长裤" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >长裤</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/summer_tree1.png" alt="短裤" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >短裤</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/autumn_tree1.png" alt="内裤" width="110" height="110">
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
											<img src="./images/spring_tree1.png" alt="箱类" width="110" height="110">
											</a>
										</div>
										<p class="price">
										<a href="http://www.baidu.com/" >箱类</a>
										</p>
										</li>
										<li class="items">
										<div class="figure-thumb">
											<a href="http://www.baidu.com/" >
											<img src="./images/summer_tree1.png" alt="包类" width="110" height="110">
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
<!-- 这里结束公共的头部部分 -->
<!-- 搜索标题  -->
	<div class="search-title item-sheif-backgroup1">
		<div class="search-result-body">
		<div class="result-title">
		</div>
		</div>
	</div>
<!-- 根据搜索结果出现的条件框 -->
	<div class="search-screen">
		<!-- 条件筛选区 -->
		<div class="screen-body">
		<div class="filtrate-data">
				<ul>
					<!--列表1-->
					<li>
						<b class="fa_title">
							品牌:
						</b>
						<div class="fa_select">
							<!--需要选中效果则在A标签加入class="on"-->
							<a href="javascript:void(0);" class="on">全部</a>
							<a href="javascript:void(0);">苹果(apple)</a>
							<a href="javascript:void(0);">小米</a>
							<a href="javascript:void(0);">华为</a>
							<a href="javascript:void(0);">SAMSUMG</a>
							<a href="javascript:void(0);">魅族</a>
							<a href="javascript:void(0);">诺基亚</a>
							<a href="javascript:void(0);">小辣椒</a>
							<a href="javascript:void(0);">联想</a>
							<div class="fa-selet-hidden">
							<a href="javascript:void(0);">其他杂牌1</a>
							<a href="javascript:void(0);">其他杂牌2</a>
							<a href="javascript:void(0);">其他杂牌3</a>
							<a href="javascript:void(0);">其他杂牌4</a>
							<a href="javascript:void(0);">其他杂牌5</a>
							<a href="javascript:void(0);">其他杂牌6</a>
							</div>
						</div>
						<b class="more">
						<a>
						更多∨
						</a>
						</b>
					</li>
					</ul>
					<ul>
					<!--列表2-->
					<li>
						<b class="fa_title">
							网络:
						</b>
						<div class="fa_select">
							<!--需要选中效果则在A标签加入class="on"-->
							<a href="javascript:void(0);" class="on">全部</a>
							<a href="javascript:void(0);">移动4G</a>
							<a href="javascript:void(0);">联通4G</a>
							<a href="javascript:void(0);">电信4G</a>
							<a href="javascript:void(0);">移动3G</a>
							<a href="javascript:void(0);">联通3G</a>
							<a href="javascript:void(0);">电信3G</a>
							<a href="javascript:void(0);">双卡</a>
							<a href="javascript:void(0);">移动2G</a>
							
							<div class="fa-selet-hidden">
							<a href="javascript:void(0);">联通2G</a>
							<a href="javascript:void(0);">其他网络</a>
							</div>
						</div>
						<b class="more">
						<a>
						更多∨
						</a>
						</b>
					</li>
					</ul>
					<ul>
					<!--列表2-->
					<li>
						<b class="fa_title">
							尺寸:
						</b>
						<div class="fa_select">
							<!--需要选中效果则在A标签加入class="on"-->
							<a href="javascript:void(0);" class="on">全部</a>
							<a href="javascript:void(0);">3.0-3.9英寸</a>
							<a href="javascript:void(0);">4.0-4.5英寸</a>
							<a href="javascript:void(0);">4.6-4.9英寸</a>
							<a href="javascript:void(0);">5.0-5.5英寸</a>
							<a href="javascript:void(0);">6.6-6.0英寸</a>
							<a href="javascript:void(0);">6.0英寸以上</a>
						</div>
					</li>
					</ul>
		</div>	
	</div>
	<!-- 快速排序区 -->
		<div class="quick-sort-body item-sheif-backgroup1">
			<div class="quick-sort-box">
				<!--需要选中效果则在A标签加入class="on"-->
				<a href="javascript:void(0);" class="on">综合排序↓</a>
				<a href="javascript:void(0);">销量</a>
				<a href="javascript:void(0);">尺寸</a>
				<a href="javascript:void(0);">喜爱</a>
				<a href="javascript:void(0);">价格</a>
				<a href="javascript:void(0);">内存</a>
				<p>
					<span>价格</span>
					<input type="text" name="" value="" />
					<span>-</span>
					<input type="text" name="" value="" />
					<a href="javascript:void(0);">确定</a>
				</p>
			</div>
		</div>
		
</div>
 <!-- L1 -->
   <div class="body-item-sheif" style="margin-top: -120px;">
  	<div class="item-sheif-body">
  		<ul class="item-sheif-ul">
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img">
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
											<p class="p4">5折促销</p>
										</div>
									</a>
								</li>
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/shoujike.jpg" />
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
										<i class="i_img">
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
										<i class="i_img">
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
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img">
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
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/shoujike.jpg" />
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
										<i class="i_img">
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
										<i class="i_img">
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
								<li class="sheif-li sheif-li-4col">
									<a href="javascript:void(0);">
										<i class="i_img">
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
										<i class="i_img">
											<img src="<%=basePath%>images/homePage/item/shoujike.jpg" />
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
										<i class="i_img">
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
										<i class="i_img">
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
  <!--  -->
  	<!--页码-->
   	<div class="body-item-sheif" >
  	<div class="item-sheif-body">
  		<div class="page_a">
				<!--需要选中效果则在A标签加入class="on"-->
				<a href="javascript:void(0);" class="last">〈</a>
				<a href="javascript:void(0);">1</a>
				<a href="javascript:void(0);" class="on">2</a>
				<a href="javascript:void(0);">3</a>
				<a href="javascript:void(0);">4</a>
				<a href="javascript:void(0);">5</a>
				<a href="javascript:void(0);">...</a>
				<a href="javascript:void(0);" class="next">〉</a>
			</div>
			</div>
			</div>
			
			
</div>
  </body>
</html>
