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
	<script type="text/javascript" src="<%=basePath%>js/easyui/datagrid-detailview.js"></script>
	
	<script type="text/javascript" src="<%=basePath%>js/clover.js"></script>
	 
	 <!--  -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/dsg-easyui.css">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap.css">
	<!---->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/management/bs_and_easyui.css">
	<!-- 
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui/themes/icon.css">
	-->
	<!-- 下面这是修正按钮阴影的样式，不适用则减少渐变 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap-theme.css" media="all" />
<style type="text/css">
noBg{background:url('themes/gray/images/tree_icons33.png');}
/**
#_easyui_tree_1 .tree-folder{background:url('themes/gray/images/tree_icons33.png');}
#_easyui_tree_1 .tree-folder-open{background: url('themes/gray/images/tree_icons33.png');}
*/
</style>
	
<script>


	
		$(function(){
		
		});
		
	var flag=true   
    function showall(){   
        alist = new Array();   
        newocx();   
        list1.value = "";   
        list2.value = "";   
        list1.value = ocxtype.outerHTML;   
        j = 0;   
        for (i in ocxtype) {   
          alist[j] = i;   
          j++;   
        }   
        for (i = 0; i < alist.length; i++)   
            for (j = (alist.length-1); j > 0; j--) {   
                if (alist[j] < alist[j-1]) {   
                    temps = alist[j];   
                    alist[j] = alist[j-1];   
                    alist[j-1] = temps;       
                }   
            }   
        for (i = 0; i < alist.length; i++)   
            list2.value +=  alist[i] + "\n";   
            alert("共有 "+alist.length+" 个属性方法");   
        }   
        function newocx() {   
            ocxfield.innerHTML = "<OBJECT ID='ocxtype' WIDTH='0px' HEIGHT='0px'" +   
                "CLASSID='CLSID:" + ocxid.value + "'></OBJECT>";   
        }   
	</script>
  </head>
  
  <body>
   <div>
  	test page2
   </div>
<div align="center">   
  <p>classid   
    <input type="text" id="ocxid" style="width:400" value="clsid:CA69969C-2F27-41D3-954D-A48B941C3BA7" onchange="jscript:flag=true">   
    <input type="button" id="look" value="查看" onclick="showall()">   
  </p>   
  <table width="75%" border="1">   
    <tr>   
      <td height="24">   
        <div align="center">html中的写法</div>   
      </td>   
      <td height="24">   
        <div align="center">OCX中的属性事件</div>   
      </td>   
    </tr>   
    <tr>   
      <td>   
        <textarea id="list1" style="width: 500px; height: 400px;" readonly></textarea>   
      </td>   
      <td>   
        <textarea id="list2" style="width:250px; height:400px;" readonly></textarea>   
      </td>   
    </tr>   
  </table>   
</div>   
<div id="ocxfield">   
</div>   
  </body>
</html>