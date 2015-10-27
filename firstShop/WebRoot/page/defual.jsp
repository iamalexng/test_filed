<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="eu.bitwalker.useragentutils.Browser" %>
<%@page import="eu.bitwalker.useragentutils.OperatingSystem" %>
<%@page import="eu.bitwalker.useragentutils.UserAgent" %>
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
  </head>
  <body>
   <%
  	String ua = request.getHeader("User-Agent");
	UserAgent userAgent=UserAgent.parseUserAgentString(ua);
	Browser browser = userAgent.getBrowser();  
	OperatingSystem os = userAgent.getOperatingSystem();
	 if(os.toString().contains("WINDOWS")){
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	   <%
	    }else{
	    %>
	 <jsp:forward page="m_index.jsp"></jsp:forward>
	  <% } %>
   
  </body>
</html>
