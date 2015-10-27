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
    <jsp:include page="${basePath}public/fshop_m_include.jsp" flush="false" />
    <script src="<%=basePath%>/js/TouchMap.js"></script>
    
  </head>
  
  <body>
  	<div style="height: 4001px;">
  		<!-- 头部 -->
  		<header  class="header">
  			<a href="javascript:void(0);" class="header-l-search"></a>
  			<h1>移动端商城首页</h1>
  		</header>
  	        <!--轮播图-->
        <div id="carousel" class="carousel">
            <div class="hd">
                <ul></ul>
            </div>
            <div class="bd">
                <ul>
                    <li>
                        <a href="##">
                            <img src="<%=basePath%>images/homePage/banner/banner2.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="##">
                           <img src="<%=basePath%>images/homePage/banner/banner3.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="##">
                            <img src="<%=basePath%>images/homePage/banner/banner4.jpg" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="##">
                            <img src="<%=basePath%>images/homePage/banner/banner5.jpg" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
  	<!-- tools -->
  	<div class="tools-list">
  	 <ul>
            <li style="border-right: 1px solid #c6c6c6;">
                <a href="##">商品列表</a>
            </li>
            <li style="border-right: 1px solid #c6c6c6;">
                <a href="##">补充功能1</a>
            </li>
            <li style="border-right: 1px solid #c6c6c6;">
                <a href="#">补充功能2</a>
            </li>
            <li>
                <a href="#">补充功能3</a>
            </li>
        </ul>
  	</div>
  	<!-- list -->
    <div class="item-div">
    <p class="p1">商品1区</p>
    	<ul class="item-list">
    		<li style="border-right: 1px solid #e5e5e5;">
    			<a>
    			<img alt="" src="<%=basePath%>images/mobile/mi_note.jpg">
    			</a>
    		</li>
    		<li>
    			<a>
    			<img alt="" src="<%=basePath%>images/mobile/mi_note.jpg">
    			</a>
    		</li>
    	</ul>
    	
    	<ul class="item-list">
    		<li style="border-right: 1px solid #e5e5e5; ">
    			<a>
    			<img alt="" src="<%=basePath%>images/mobile/mi_note.jpg">
    			</a>
    		</li>
    		<li style=" ">
    			<a>
    			<img alt="" src="<%=basePath%>images/mobile/mi_note.jpg">
    			</a>
    		</li>
    	</ul>
    </div>
  	
  	
  	
  	
  	</div>
  	
  	     <!--轮播的JS-->
    <script type="text/javascript">
        //轮播
        TouchSlide({
            slideCell: "#carousel",
            titCell: ".hd ul", //开启自动分页
            mainCell: ".bd ul",
            effect: "leftLoop",
            autoPlay: true,//自动播放
            autoPage: true //自动分页
        }); 
    </script>
  </body>
</html>
