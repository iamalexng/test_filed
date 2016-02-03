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
	

	
<script>
		$(document).ready(function(){
	//	alert("test");
		var fields = [
		{title : "id", id : "id" ,type:"hidden",value:"测试的值"},
		{title : "姓名", id : "name",type : "input", value : "姓名",readonly : true},
		{title : "年龄", id : "age",type:"text",value:"请填入年龄"},
		{title : "性别", id : "sex",type:"checkbox",value:"男,女"},
		{title : "身高", id : "height",type:"text",disabled:true},
		{title : "体重", id : "weight",type:"label",value:"82kg"},
		{title : "电子邮箱", id : "email",type:"input",value:"123456789@qq.com"},
		{title : "是否毕业", id : "is_graduation",type:"label",value:"肯定是了"},
		{title : "毕业日期", id : "test_date",type:"datetime",format:"yyyy-mm-dd",minView:2},
		{title : "个人简介", id : "descritpion",type:"textarea"}
		];
		
		var c =  new Clover("lingceng", 22,"","");  
		c.autoForm("d2",fields); 
		$("#c_test1").hide();
		$("#c_test1").show();
		
		
    	//clover-bs-datetimepick-input
    	$("#d8").click(function(){
    	alert($(".clover-bs-datetimepick-input").val());
    	});
    	
		});
		
</script>

	<!-- radio -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/bootstrap-switch.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/highlight.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/radio/main.css">
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/highlight.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/bootstrap-switch.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/main.js"></script>
	
	<!-- datetimepicker -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/datetimepicker/bootstrap-datetimepicker.css">
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/radio/bootstrap-switch.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/datetimepicker/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
  </head>
  
  <body style="min-width: 780px;">
    
    <div id="d1">1</div>
    
    <div id="d2"></div>
    <div id="d3">3</div>
    <div id="d4">4</div>
    <div id="d5">5</div>
    <div id="d6">6</div>
    <div id="d7">7</div>
    <div id="d8">88888</div>
    
    <div id="d9">
    
   <div class="container-fluid">
  	<div class="row">
  	
  	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom" >
  		<label class="font-weight-normal autoform-title" style="width:120px;">
      		一一：
      </label>
  		<div class="clover-bs-input-div">
      email@example.com1
      </div>
       
       
    </div>
  	
  	
  	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
  	<label class="font-weight-normal autoform-title" style="width:120px;">
  		二二二二二二：
  	</label>
  	<div class="clover-bs-input-div has-success">
  	<input class="form-control input-sm" type="text" placeholder="这是文本框的文字">
  	</div>
  	</div>
  	
  	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
  	<label class="font-weight-normal autoform-title" style="width:120px;">
  		三三三三三三：
  	</label>
  		<div class="clover-bs-input-div has-error">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111" readonly>
  	</div>
  	</div>
  	
  	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
  	<label class="font-weight-normal autoform-title" style="width:120px;">
  		四四四四四四：
  	</label>
  		<div class="clover-bs-input-div">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111" readonly>
  	</div>
	</div>
  	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
  	<label class="font-weight-normal autoform-title" style="width:120px;">
  		五五五五五五：
  	</label>
  		<div class="clover-bs-input-div">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111" disabled>
  	</div>
  	</div>
	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
	 <label class="font-weight-normal autoform-title" style="width:120px;">
  		六六六六六六：
  	</label>
  		<div class="clover-bs-input-div">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111" >
  	</div>
	</div>
	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
	<label class="font-weight-normal autoform-title" style="width:120px;">
  		七七七七七七：
  	</label>
  		<div class="clover-bs-input-div">
  	<input class="form-control input-sm" type="text" placeholder=".input-sm111" >
  	</div>
	</div>
	
	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
	<label class="font-weight-normal autoform-title" style="width:120px;">这是checkbox：</label>
	   <div class="clover-bs-input-div">
	              <input id="switch-state" type="checkbox" checked data-size="small" data-on-text="Yes" data-off-text="No "><!--mini small large-->
		</div>
	</div>
	
	<div class="col-md-4 col-sm-6 col-xs-6 margin-top-bottom">
	<label class="font-weight-normal autoform-title" style="width:120px;">
  		八八八八：
  	</label>
  	 	<div class="clover-bs-input-div">
  	          <div class="input-group date form_date col-md-4 col-sm-6 col-xs-6 margin-top-bottom" id="t_cal">
                <input class="input-sm clover-bs-datetimepick-input" size="16" type="text" value="" >
				<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
               </div>
		</div>
	</div>
	
	<div class="col-md-12 col-sm-12 col-xs-12 margin-top-bottom">
	<label class="font-weight-normal autoform-title" style="width:120px;">
  		九九九九九九：
  	</label>
  		<div class="clover-bs-input-div">
  	    <textarea class="form-control clover-bs-input-textarea" rows="3"></textarea>
  	</div>
	</div>
	
  	</div>
	</div>
	
	
	
	</div>

  </body>
</html>
