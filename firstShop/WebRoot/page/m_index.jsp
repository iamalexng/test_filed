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
    <jsp:include page="${basePath}public/fshop_m_include.jsp" flush="false" />
  </head>
  
  <body>
  	<div style="height: 4001px;">
  		<!-- 头部 -->
  		<header  class="header">
  			<a href="javascript:void(0);" class="header-l-search"></a>
  			<h1>移动端商城首页</h1>
  		</header>
  	
  	
  	
  	 <!--底部导航-->
    <section class="footNav">
        <ul>
            <li class="on">
                <a href="##">首页</a>
            </li>
            <li>
                <a href="##">搜索</a>
            </li>
            <li>
                <a href="#">补充按钮1</a>
            </li>
            <li>
                <a href="#">补充按钮2</a>
            </li>
        </ul>
    </section>
    
  	</div>
  </body>
</html>
