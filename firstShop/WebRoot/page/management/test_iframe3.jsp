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
		var fields = [{
		 rownumbers:false,//是否要行编号
		 singleSelect:false,//是否行单选
		 pageSize:10,//暂时不需要输入，默认给了10，输入的话会修改默认值
		 GridLines:"Horizontal",//网格线，不需要，默认会给
		 url:'<%=basePath%>page/management/datagrid_data1.json',
		 fitColumns:true,//该值默认为true,修改会覆盖默认值的
		 striped:false,//斑马线，默认为false,可修改默认值
		 toolbar:false,//默认给false,不提供修改默认值
		 showHeader:true,
		 pagination: true,
		 positionLanguage:'zh-CN',//提供了四种语言的分页器,默认为en,可修改覆盖默认值'zh-CN','zh-TW','ja',
		 pagePosition:'bottom'//默认为底部bottom,可修改覆盖默认值'top'、'bottom'、'both'
		 
		 //columns:columns
		 }];
		
		var columns=[[
            {field:'productid',title:'第一1列',width:20},/*当前是把宽度分为10份，每列占用2份,也就是按照百分比,如果设置fixed:true,该列则不会自适应大小，而是固定宽度;适用场景:比如人名，通常固定在2~3个中文字的的，就固定宽度比较美观*/
            {field:'productname',title:'第二列',width:20,align:'center'},//居中
            {field:'unitcost',title:'第三列',width:20},
            {field:'test1',title:'第四列',width:20},
            {field:'test2',title:'第五列',width:20,align:'right'}//居右
        	]];
		
		var c =  new Clover("lingceng", 22,"id1","");  
	//	c.init(fields); 
		c.datagrid("dg",fields,columns);
		/*
			$('#dg').datagrid({
			rownumbers:true,
			singleSelect:false,
			pageSize:10,
			GridLines:"Horizontal",
	        url:'<%=basePath%>page/management/datagrid_data1.json',
	        fitColumns:true,//注意,当fitCulumns=true时，将会自动适应全屏的宽度，但columns中的:field不能重复，否则会出现bug
			toolbar:false,//请自定义toolbar
			pagination: true,
			pagePosition:'bottom',//'top'、'bottom'、'both'
			onDblClickRow:function(rowIndex, rowData){
			alert(rowIndex+","+rowData.productname);
			},
			columns:columns
        	
    });
    
     $('#dg').datagrid('getPager').pagination({
        beforePageText: '第',//页数文本框前显示的汉字 
        afterPageText: '页    共 {pages} 页',
        displayMsg: '共{total}条数据',
    }); 
    */
    
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

	
	<table id="dg" style="width:auto" >
	
	</table>

    
  </body>
</html>