<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>嵌入页面3,easyUI+bootstrap</title>
    
    
    <jsp:include page="/page/public/fshop_include_system.jsp" flush="false" />
	<script type="text/javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/clover.js"></script>
	 
	 <!--  -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/dsg-easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/management/bs_and_easyui.css">
	<!-- 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/themes/icon.css">
	-->
	<!-- 下面这是修正按钮阴影的样式，不适用则减少渐变 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap-theme.css" media="all" />
	
	<!-- radio -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/bootstrap-switch.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/highlight.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/main.css">
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/highlight.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/bootstrap-switch.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/main.js"></script>
	
<script>
		$(document).ready(function(){
	//	alert("test");
		var fields = [
		{title : "核定载负总重", id : "total_weight" ,rules : {required:true},type:"hidden"},
		{title : "核定净重", id : "item_weight",rules : {required:true},type:"input"}
		];
		
		var c =  new Clover("lingceng", 22,"","");  
		//c.autoForm("d2",fields); 
		
		$("#c_test1").hide();
		
		$("#c_test1").show();
		});
		
</script>

  </head>
  
  <body style="min-width: 780px;">
    
    <div id="d1">1
    
       <label for="exampleInputEmail2" class="col-sm-2 control-label">这是一个checkbox判断：</label>
	   <div class="col-sm-2">
	              <input id="switch-state" type="checkbox" checked data-size="small" data-on-text="Yes" data-off-text="false "><!--mini small large-->
		</div>
	
    </div>
    
    <div id="d2">2</div>
    <div id="d3">3</div>
    <div id="d4">4</div>
    <div id="d5">
    
   <div class="container-fluid">
  	
  	<div class="row">
  	<div class="col-md-4 col-sm-6 col-xs-6">
  	

  		邮箱三四五：
  	
  		<label>
      email@example.com
      </label>
       
       
    </div>
  	
  	
  	<div class="col-md-4 col-sm-6 col-xs-6">
  	<label class="">
  		邮箱三四五：
  		</label>
  		<div class="clover-bs-input-div">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111">
  	</div>
  	</div>
  	
  	<div class="col-md-4 col-sm-6 col-xs-6">
  3
  	</div>
  	
  	<div class="col-md-4 col-sm-6 col-xs-6">4</div>
  	<div class="col-md-4 col-sm-6 col-xs-6">5</div>
	<div class="col-md-4 col-sm-6 col-xs-6">6</div>
	<div class="col-md-4 col-sm-6 col-xs-6">7</div>
	<div class="col-md-4 col-sm-6 col-xs-6">8</div>

  	</div>

	</div>
	
	</div>

  </body>
</html>
