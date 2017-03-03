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
		$(function(){
	//	alert("test");
	
	var columns=[[
            {field:'productid',title:'第一列',width:20},
            {field:'productname',title:'第二2列',width:20,align:'center'},//居中
            {field:'unitcost',title:'第三列',width:20},
            {field:'test1',title:'第四列',width:20},
            {field:'test2',title:'第五列',width:20,align:'right'}//居右
        	]];
        	
		var fields = [{
		 rownumbers:true,//---是否要行编号,默认否---可覆盖
		 singleSelect:false,//是否有行编号,是否单选----可覆盖
		 pageSize:10,//每页数据条数，默认为10---可覆盖
		 url:'<%=basePath%>page/management/datagrid_data1.json',
		 toolbar:false,//默认给false,不提供修改默认值
		 pagination: true,//是否要分页器,默认不要---可覆盖
		 pagePosition:'bottom',//分页器所在的位置,默认底部---可覆盖，使用both,top,bottom
		 positionLanguage : 'zh-TW',//分页器语言,默认为en---可覆盖为 zh-CN,zh-TW,ja(日文仅供玩耍，直接google翻译)
		 columns:columns
		 }];
		
		var c =  new Clover("lingceng", 22,"id1","");  
		c.datagrid("dg",fields);
		
    
    
    	$('#dg').datagrid({
			onDblClickRow: function(index,row){
				alert(index+","+row.itemid+",");
				
			}
		});

     //$(".datagrid-header-inner .datagrid-htable").addClass("table table-hover");
		});
	</script>
  </head>
  
  <body>
    
	  <nav class="navbar navbar-default">
	  
 <div class="navbar-form navbar-left" role="search" >
  
     <div class="input-group">
     <div class="input-group-addon"></div>
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Go!</button>
      </span>
    </div><!-- /input-group -->
    
  <div class="form-group"  >
    <input type="text" class="form-control" placeholder="全局搜索">
  </div>
  <!-- Standard button -->
<button type="button" class="btn btn-default">（默认）Default</button>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-primary">（首选）Primary</button>

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
</div>
</nav>

	
	<table id="dg" style="width:auto" ></table>

    
  </body>
</html>