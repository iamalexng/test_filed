<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My JSP 'bootstrap_test.jsp' starting page</title>
    
    <jsp:include page="/page/public/fshop_include_system.jsp" flush="false" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/mybootstrap.css" media="all" />
	
	<script type="text/javascript">
	$(document).ready(function(){
	
	$(".collapse .navbar-nav li").click(function(){
	//attr("data-row");
	$(this).parent().find("li").removeClass("active");
	$(this).addClass("active");
	var showDataRow=$(this).find("a").attr("data-row");
	if(showDataRow=="all"){
	$(".tool-bar .tools #system").show();
	$(".tool-bar .tools #customer").show();
	}else if(showDataRow=="system"){
	$(".tool-bar .tools #system").show();
	$(".tool-bar .tools #customer").hide();
	}else if(showDataRow=="customer"){
	$(".tool-bar .tools #system").hide();
	$(".tool-bar .tools #customer").show();
	}
	});
	
	$(".tool-bar .tools ul").click(function(){
	$(this).parent().parent().find("ul").removeClass("ul-active");
	$(this).addClass("ul-active");
	var url=$(this).find("li").attr("page");
	if(url.indexOf("http://")==-1){
	url="http://"+url;	
	}
	$("#iframe_page").attr("src",url); 
	});
	
	$("#systemModal .modal-dialog .modal-content .modal-body .row a").click(function(){
		var systemStyle=$(this).attr("system-style");
		//removeClass所有风格
		$("#navbar-top").removeClass("navbar-default");
		$("#navbar-top").removeClass("navbar-inverse");
		$("#navbar-top").removeClass("navbar-green");
		$("#navbar-top").removeClass("navbar-blue");
		$("#navbar-top").removeClass("navbar-purple");
		$("#navbar-top").removeClass("navbar-red");
		//加入样式
		$("#navbar-top").addClass("navbar-"+systemStyle);
		
	});
	
	});
	</script>
 
  </head>
  
  <body style="padding-top: 50px;">
  
  <div  style="height:atuo;">
<nav class="navbar navbar-blue navbar-fixed-top" id="navbar-top"><!-- navbar-inverse navbar-default  -->
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">商城后台管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a data-row="all">所有</a></li>
        <li><a data-row="system">系统</a></li>
        <li><a data-row="customer">会员</a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">货物Dropdown<span class="caret"></span></a>
          
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link1</a></li>
          </ul>
          
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li ><a>注销</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        <li id="style_settings" data-target="#systemModal" data-toggle="modal"><a>风格设置</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

 
  
  
<!-- Toolbar -->
	<div class="tool-bar">
	
		<div class="tools">
			<div id="system">
			<ul class="ul-active">
				<li page="<%=basePath%>/page/management/test_iframe1.jsp">
				<a>系统功能项1</a>
				</li>
			</ul>
			<ul>
				<li page="<%=basePath%>/page/management/test_iframe2.jsp">
				<a>系统功能项2</a>
				</li>
			</ul>
			<ul>
				<li page="<%=basePath%>/page/management/test_iframe3.jsp">
				<a>系统功能项3</a>
				</li>
			</ul>
			<ul>
				<li page="<%=basePath%>/page/management/test_autoform1.jsp">
				<a>系统功能项4</a>
				</li>
			</ul>
				<ul>
				<li page="www.163.com">
				<a>系统功能项5</a>
				</li>
			</ul>
			<ul>
				<li page="www.baidu.com">
				<a>系统功能项6</a>
				</li>
			</ul>
						<ul>
				<li page="www.taobao.com">
				<a>系统功能项7</a>
				</li>
			</ul>
			</div>
			<div id="customer">
			<ul>
				<li page="www.jd.com">
				<a>会员功能项8</a>
				</li>
			</ul>
						<ul>
				<li page="<%=basePath%>/page/management/test_iframe3_1.jsp">
				<a>会员功能项9</a>
				</li>
			</ul>
						<ul>
				<li page="<%=basePath%>/page/management/test_iframe10.jsp">
				<a>会员功能项10</a>
				</li>
			</ul>
						<ul>
				<li>
				<a>会员功能项11</a>
				</li>
			</ul>
						<ul>
				<li>
				<a>会员功能项12</a>
				</li>
			</ul>
						<ul>
				<li>
				<a>会员功能项13</a>
				</li>
			</ul>
						<ul>
				<li>
				<a>会员功能项14</a>
				</li>
			</ul>
			</div>
		</div>
	</div>
<!-- Toolbar结束  -->
<div>

<iframe id='iframe_page' name="iframe_page" src="<%=basePath%>page/management/test_iframe1.jsp" width="100%" height="650px" frameborder="0" scrolling="no" style="padding: 6px;padding-left:223px;padding-top:6px;padding-right:6px;"></iframe> 

<!-- 

 -->
</div>

<!-- 
<p>
   <abbr title="Alex name is 圣" class="initialism">Alex</abbr><strong>定义</strong>了该页面，并加了说明进行测试

</p>

  <div class="row" style="boder:1px solid #bfbfbf;">
  <div class="col-md-1 col-xs-1" style="boder:1px solid #ff0000;">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
  <div class="col-md-1 col-xs-1">.col-md-1</div>
</div>
<div class="row">
  <div class="col-md-8">.col-md-8</div>
  <div class="col-md-4">.col-md-4</div>
</div>
<div class="row">
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4">.col-md-4</div>
</div>
<div class="row">
  <div class="col-md-6">.col-md-6</div>
  <div class="col-md-6">.col-md-6</div>
</div>

  
<div class="hidden-phone">
强制圆角正方形
<img src="<%=basePath%>images/earth.jpg" alt="" class="img-rounded" width="140px" height="140px">
<br/>
</div>
<div class="visible-phone">
强制原型
<img src="<%=basePath%>images/earth.jpg" alt="" class="img-circle" style="border:1px solid #0000;" width="140px" height="140px">
<br/>
</div>
<div class="hidden-desktop">
形状不改变,增加圆角边框
<img src="<%=basePath%>images/earth.jpg" alt="" class="img-thumbnail" width="140px" height="140px">
</div>
   -->
  </div>
  
      <!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="systemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">风格设置</h4>
      </div>
      
      
      <div class="modal-body">
      	<div class="row">
		  <div class="col-md-12">系统颜色</div>
		</div>
		<div class="row">
		  <div class="col-md-2"><a system-style="default"><img src="<%=basePath%>images/system/system_style_defualt.png" alt="..." class="img-thumbnail"></a></div>
		  <div class="col-md-2"><a system-style="inverse"><img src="<%=basePath%>images/system/system_style_inverse.png" alt="..." class="img-thumbnail"></a></div>
		  <div class="col-md-2"><a system-style="green"><img src="<%=basePath%>images/system/system_style_green.png" alt="..." class="img-thumbnail"></a></div>
		  <div class="col-md-2"><a system-style="blue"><img src="<%=basePath%>images/system/system_style_blue.png" alt="..." class="img-thumbnail"></a></div>
		  <div class="col-md-2"><a system-style="purple"><img src="<%=basePath%>images/system/system_style_purple.png" alt="..." class="img-thumbnail"></a></div>
		  <div class="col-md-2"><a system-style="red"><img src="<%=basePath%>images/system/system_style_red.png" alt="..." class="img-thumbnail"></a></div>
		</div>
		
		<div class="row">
		  <div class="col-md-2">默认</div>
		  <div class="col-md-2">酷黑</div>
		  <div class="col-md-2">自然绿</div>
		  <div class="col-md-2">清新蓝</div>
		  <div class="col-md-2">神秘紫</div>
		  <div class="col-md-2">喜庆红</div>
		</div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>




</div>

  </body>
</html>
