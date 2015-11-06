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
	
	 
	 <!--  -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/dsg-easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/management/bs_andeasyui.css">
	<!-- 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/themes/icon.css">
	-->
	

	
<script>
		$(function(){
			$('#dg').datagrid({
			//width:'100%',
			rownumbers:false,
			singleSelect:true,
			pageSize:10,
	        url:'<%=basePath%>page/management/datagrid_data1.json',
	        fitColumns:true,//注意,当fitCulumns=true时，将会自动适应全屏的宽度，但columns中的:field不能重复，否则会出现bug
	        columns:[[
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
			alert(rowIndex+","+rowData.productname);
			}
    });
    
     $('#dg').datagrid('getPager').pagination({
        beforePageText: '第',//页数文本框前显示的汉字 
        afterPageText: '页    共 {pages} 页',
        displayMsg: '共{total}条数据',
    }); 
    
    
    // $(".datagrid-header-inner .datagrid-htable").addClass("table table-hover");
    
		});
	</script>
  </head>
  <body>
    
    <h2>EasyUI DataGrid + Bootstrap</h2>


	<div class="panel datagrid">
		<div class="datagrid-wrap panel-body panel-body-noheader" title=""
			style="width: 1438px;">
			<div class="datagrid-view" style="width: 1436px; height: 300px;">
				<div class="datagrid-view1" style="width: 0px;">
					<div class="datagrid-header" style="width: 0px; height: 25px;">
						<div class="datagrid-header-inner" style="display: block;">
							<table class="datagrid-htable" border="0" cellspacing="0"
								cellpadding="0" style="height: 25px;">
								<tbody></tbody>
							</table>
						</div>
					</div>
					<div class="datagrid-body"
						style="width: 0px; margin-top: 0px; height: 275px;">
						<div class="datagrid-body-inner"></div>
					</div>
					<div class="datagrid-footer" style="width: 0px;">
						<div class="datagrid-footer-inner" style="display: none;"></div>
					</div>
				</div>
				<div class="datagrid-view2" style="width: 1436px;">
					<div class="datagrid-header" style="width: 1436px; height: 25px;">
						<div class="datagrid-header-inner" style="display: block;">
							<table class="datagrid-htable" border="0" cellspacing="0"
								cellpadding="0" style="height: 25px;">
								<tbody>
									<tr class="datagrid-header-row">
										<td field="productid"><div
												class="datagrid-cell datagrid-cell-c1-productid" style="">
												<span>第一列</span><span class="datagrid-sort-icon">&nbsp;</span>
											</div>
										</td>
										<td field="productname"><div
												class="datagrid-cell datagrid-cell-c1-productname"
												style="text-align: center;">
												<span>第二列</span><span class="datagrid-sort-icon">&nbsp;</span>
											</div>
										</td>
										<td field="unitcost" class=""><div
												class="datagrid-cell datagrid-cell-c1-unitcost"
												style="text-align: right;">
												<span>第三列</span><span class="datagrid-sort-icon">&nbsp;</span>
											</div>
										</td>
										<td field="test1" class=""><div
												class="datagrid-cell datagrid-cell-c1-test1"
												style="text-align: right;">
												<span>第四列</span><span class="datagrid-sort-icon">&nbsp;</span>
											</div>
										</td>
										<td field="test2"><div
												class="datagrid-cell datagrid-cell-c1-test2"
												style="text-align: right;">
												<span>第五列</span><span class="datagrid-sort-icon">&nbsp;</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="datagrid-body"
						style="width: 1436px; margin-top: 0px; overflow-x: hidden; height: 275px;">
						<table class="datagrid-btable" cellspacing="0" cellpadding="0"
							border="0">
							<tbody>
								<tr id="datagrid-row-r1-2-0" datagrid-row-index="0"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">FI-SW-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Koi</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">10</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-1" datagrid-row-index="1"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">K9-DL-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Dalmation</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-2" datagrid-row-index="2"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">RP-SN-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Rattlesnake</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-3" datagrid-row-index="3"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">RP-SN-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Rattlesnake</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-4" datagrid-row-index="4"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">RP-LI-02</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Iguana</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-5" datagrid-row-index="5"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">FL-DSH-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Manx</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-6" datagrid-row-index="6"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">FL-DSH-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Manx</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-7" datagrid-row-index="7"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">FL-DLH-02</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Persian</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-8" datagrid-row-index="8"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">FL-DLH-02</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Persian</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">12</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-9" datagrid-row-index="9"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">AV-CB-01</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Amazon
											Parrot</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">92</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
								<tr id="datagrid-row-r1-2-10" datagrid-row-index="10"
									class="datagrid-row">
									<td field="productid"><div style="height:auto;"
											class="datagrid-cell datagrid-cell-c1-productid">AV-CB-033</div>
									</td>
									<td field="productname"><div
											style="text-align:center;height:auto;"
											class="datagrid-cell datagrid-cell-c1-productname">Amazon
											Parrot</div>
									</td>
									<td field="unitcost"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-unitcost">92</div>
									</td>
									<td field="test1"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test1"></div>
									</td>
									<td field="test2"><div
											style="text-align:right;height:auto;"
											class="datagrid-cell datagrid-cell-c1-test2"></div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="datagrid-footer" style="width: 1436px;">
						<div class="datagrid-footer-inner" style="display: none;"></div>
					</div>
				</div>
				<table id="dg" style="display: none;" class="datagrid-f">

				</table>
				<style type="text/css" easyui="true">
.datagrid-cell-c1-productid {
	width: 19px
}

.datagrid-cell-c1-productname {
	width: 19px
}

.datagrid-cell-c1-unitcost {
	width: 19px
}

.datagrid-cell-c1-test1 {
	width: 19px
}

.datagrid-cell-c1-test2 {
	width: 19px
}
</style>
			</div>
			
			
			<div class="datagrid-pager pagination">
				<table cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<td><select class="pagination-page-list" style="display:none;"><option>1s</option>
									<option>20</option>
									<option>30</option>
									<option>40</option>
									<option>50</option>
							</select>
							</td>
							<td><div class="pagination-btn-separator"></div>
							</td>
							</td>
							<td><span style="padding-left:6px;">第</span>
							</td>
							<td><input class="pagination-num" type="text" value="1"
								size="2">
							</td>
							<td><span style="padding-right:6px;">页 共 2 页</span>
							</td>
							<td><div class="pagination-btn-separator"></div>
							</td>
							<td><a href="javascript:void(0)"
								class="l-btn l-btn-small l-btn-plain l-btn-disabled l-btn-plain-disabled"
								group="" id=""><span class="l-btn-left l-btn-icon-left"><span
										class="l-btn-text l-btn-empty">&nbsp;</span><span
										class="l-btn-icon pagination-prev">&nbsp;</span>
								</span>
							</a>
							</td>
							<td><a href="javascript:void(0)"
								class="l-btn l-btn-small l-btn-plain" group="" id=""><span
									class="l-btn-left l-btn-icon-left"><span
										class="l-btn-text l-btn-empty">&nbsp;</span><span
										class="l-btn-icon pagination-next">&nbsp;</span>
								</span>
							</a>
							</td>
							<td><div class="pagination-btn-separator"></div>
							</td>
							<td><a href="javascript:void(0)"
								class="l-btn l-btn-small l-btn-plain" group="" id=""><span
									class="l-btn-left l-btn-icon-left"><span
										class="l-btn-text l-btn-empty">&nbsp;</span><span
										class="l-btn-icon pagination-load">&nbsp;</span>
								</span>
							</a>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="pagination-info">共11条数据</div>
				<div style="clear:both;"></div>
			</div>
		</div>
	</div>



</body>
</html>