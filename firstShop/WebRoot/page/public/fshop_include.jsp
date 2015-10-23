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
<!-- 公共css在此之后添加 -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" media="all" />
