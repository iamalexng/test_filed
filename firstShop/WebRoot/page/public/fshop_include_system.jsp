<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<!-- 公共js在此之后添加 -->
<!-- 这里修改jquery版本及路径 -->
<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="<%=basePath%>js/util.js"></script>
<script src="<%=basePath%>js/bootstrap/bootstrap.js"></script>

<!-- bootstrap各种plug-in插件单独引入，不在此引入 -->

<!--
//-->
</script>
<!-- 公共css在此之后添加 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap-theme.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/mybootstrap.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/management/management_defualt.css" media="all" />
