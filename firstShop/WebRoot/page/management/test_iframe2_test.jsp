<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>嵌入子表格页面2,纯easyUI</title>
    
    
   <jsp:include page="/page/public/fshop_include_system.jsp" flush="false" />
	<script type="text/javascript" src="<%=basePath%>js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/easyui/datagrid-detailview.js"></script>
	
	 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/themes/default/easyui.css">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/themes/icon.css">

<style type="text/css">
#inside_div_2 .datagrid-header{position:absolute;visibility:hidden;}
#item_grid .datagrid-header{position:absolute;visibility:hidden;}
</style>
	
<script>

	function createTreeGrid(){
	$('#dg2').treegrid({
    url:'<%=basePath%>page/management/treegrid_data1.json',
    idField:'id',
    treeField:'name',
    columns:[[
		{title:'Task Name',field:'name',width:180},
		{field:'persons',title:'Persons',width:60,align:'right'},
		{field:'begin',title:'Begin Date',width:80},
		{field:'end',title:'End Date',width:80}
    ]]
});
	} 
		$(function(){
		createTreeGrid();
			$('#dg').datagrid({
			//width:'100%',
			rownumbers:true,
			singleSelect:false,
			pageSize:10,
	        url:'<%=basePath%>page/management/datagrid_data1.json',
	        fitColumns:true,//注意,当fitCulumns=true时，将会自动适应全屏的宽度，但columns中的:field不能重复，否则会出现bug
	        columns:[[
	        {field:'ck',width:10,checkbox:'true'}, 
            {field:'productid',title:'第一列',width:20},
            {field:'productname',title:'第二列',width:20,align:'center'},
            {field:'unitcost',title:'第三列',width:20,align:'right'},
            {field:'test1',title:'第四列',width:20,align:'right'},
            {field:'test2',title:'第五列',width:20,align:'right'}
        	]]
        	,
        	toolbar: [{
						iconCls: 'icon-edit',
						handler: function(){alert('edit');}
					},'-',{
						iconCls: 'icon-help',
						handler: function(){alert('help');}
					}]
			,
			toolbar:false,
			pagination: true,
			pagePosition:'bottom',//'top'、'bottom'、'both'
			onDblClickRow:function(rowIndex, rowData){
			//alert(rowIndex+","+rowData.productname);
			},view:detailview,
			detailFormatter:function(indexInterest,rowInterest){
				 return '<div style="padding:2px;padding-left: 5px;" id="inside_div_2"><table id="ddv-"></table></div>'; 
				},
				onExpandRow:function(indexInterest,rowInterest){
					$('#ddv-').datagrid({  
                    url:'<%=basePath%>page/management/datagrid_data1.json',
                    fitColumns:true,  
                    singleSelect:false,  
                    height:'auto',  
                    columns:[[  
                    		   {field:'ck',width:10,checkbox:'true'}, 
						       {field:'productid',title:'二级子表格一列',width:20},
						       {field:'productname',title:'二级子表格二列',width:20,align:'center'},
						       {field:'unitcost',title:'二级子表格三列',width:20,align:'right'},
						       {field:'test1',title:'二级子表格四列',width:20,align:'right'},
						       {field:'test2',title:'二级子表格五列',width:20,align:'right'}
				]],view:detailview,
				detailFormatter:function(indexInterest,rowInterest){
				 return '<div style="padding:2px;padding-left: 5px;" id="inside_div_3"><table id="ddv-2"></table></div>'; 
				},onExpandRow:function(indexInterest,rowInterest){
					$('#ddv-2').datagrid({  
                    url:'<%=basePath%>page/management/datagrid_data1.json',
                    fitColumns:true,  
                    singleSelect:false,  
                    height:'auto',  
                    columns:[[  
                    		   {field:'ck',width:10,checkbox:'true'}, 
						       {field:'productid',title:'3级子表格一列',width:20},
						       {field:'productname',title:'3级子表格二列',width:20,align:'center'},
						       {field:'unitcost',title:'3级子表格三列',width:20,align:'right'},
						       {field:'test1',title:'3级子表格四列',width:20,align:'right'},
						       {field:'test2',title:'3级子表格五列',width:20,align:'right'}
				]]
				});
				}
				
				});
				
				}
    });
    
     $('#dg').datagrid('getPager').pagination({
        beforePageText: '第',//页数文本框前显示的汉字 
        afterPageText: '页    共 {pages} 页',
        displayMsg: '共{total}条数据',
    }); 
    
		});
	</script>
  </head>
  
  <body>
    
    <h2>Complex DataGrid</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>Click the button to do actions with datagrid.</div>
	</div>
	
	
	<table id="dg" style="width:auto"></table>

	<table id="dg2" style="width:auto"></table>
    
  </body>
</html>