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
	<script src="<%=basePath%>/js/homepage.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base_defualt.css" media="all" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  $(document).ready(function(){
  getUserAgent();
  });
  
 
  function getUserAgent(){
  	var url;
  	url="<%=basePath%>MenuController/indexHomePage.action"; //返回字符串的测试
		$.ajax({
				url : url,
				data: {userId:3},
				type : 'POST',
				//dataType : "json",
				//contentType: "application/json;charset=utf-8",
				success : function(data) {
				if(data=="pc"){
				location.href ="<%=basePath%>page/index.jsp";
				}else{
				location.href ="<%=basePath%>page/m_index.jsp";
				}
				
				}
				});
  }
  </script>
  
  <body>
  </body>
</html>
