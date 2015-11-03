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
     <jsp:include page="/page/public/fshop_include_system.jsp" flush="false" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/mybootstrap.css" media="all" />
	
	<script type="text/javascript">
	 $(document).ready(function(){
	 
	 
	 $(".table tbody tr").dblclick(function(){
	   alert($(this).find("th").html());
	   alert(
	   $("#iframe_page", window.parent.document).attr("src")
	   );
	 });
	 
	  });
	</script>
	
  </head>
  <body>
  
  <nav class="navbar navbar-default">
 <form class="navbar-form navbar-left" role="search" >
  <div class="form-group"  >
    <input type="text" class="form-control" placeholder="全局搜索">
  </div>
  <!-- Standard button -->
<button type="button" class="btn btn-default">（默认样式）Default</button>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-primary">（首选项）Primary</button>

<!-- Indicates a successful or positive action -->
<button type="button" class="btn btn-success">（成功）Success</button>

<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info">（一般信息）Info</button>

<!-- Indicates caution should be taken with this action -->
<button type="button" class="btn btn-warning">（警告）Warning</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-danger">（危险）Danger</button>

<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
<button type="button" class="btn btn-link">（链接）Link</button>
</form>
</nav>
 

<table class="table table-hover table-condensed table-striped">
<!--
<caption>数据列表样例</caption>
-->
<thead>
<tr>
<th>序号</th>
<th>第一列</th>
<th>第二列</th>
<th>第三列</th>
<th>第四列</th>
<th>第五列</th>
<th>第六列</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">1</th>
<td>Mark</td>
<td>Otto</td>
<td>@mdo</td>
<td>@mdo</td>
<td>@mdo</td>
</tr>
<tr>
<th scope="row">2</th>
<td>Jacob</td>
<td>Thornton</td>
<td>@fat</td>
<td>@fat</td>
<td>@fat</td>
<td>@fat</td>
</tr>

<tr>
<th scope="row">3</th>
<td>Larry</td>
<td>the Bird</td>
<td>@twitter</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">4</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">5</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">6</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">7</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">8</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">9</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<th scope="row">10</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="active"><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

  </body>
</html>
