<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bootstrap_test.jsp' starting page</title>
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/util.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap-theme.css" media="all" />
	<script src="<%=basePath%>js/bootstrap/bootstrap.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="padding-top: 50px;">
  <div  style="height: 4001px;">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
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
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
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
  
  </div>
  
  </body>
</html>
