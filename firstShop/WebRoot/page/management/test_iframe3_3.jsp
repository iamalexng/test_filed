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
		zkonline.Threshold=5;
		zkonline.OneToOneThreshold=5;
		});
		
	function aa(){
	 var fr = document.getElementById("biokey");  
	 //biokey.BeginEnroll();
	 var b=fr.InitEngine();
 	
 	alert(b); //obj.InitEngine()这个方法为初始设备，成功会返回“0”
 fr.GetVerTemplate(); 
 alert("is begin?");
 fr.BeginEnroll(); //开始采集
 fr.CancelEnroll();//关闭采集
 alert("222?");
}

	function defualCloseWin(){
	zkonline.DefaultWindowClose=100;
	alert(
	zkonline.DefaultWindowClose
	);
	}

	function bb(){
	 alert("录入前，登记的模板=="+zkonline.RegisterTemplate);
	if (zkonline.Register()){
		   alert("录入后，登记的模板=="+zkonline.RegisterTemplate);
		   var value1=zkonline.RegisterTemplate;
		  // EncodeTemplate1
		//  value1=zkonline.EncodeTemplate1(value1);
		   $("#list2").val(value1);
		   
		    //  alert("第二次=="+zkonline.RegisterTemplate);
		 }else{
		   alert("Register Failed");  
		   }
	}
	
	
	function cc(){
//	alert(zkonline.RegisterTemplate);
zkonline.CheckFinger="0000100000";
 var test1="mspZVrbak7g+wQjGuTlBFMFJaYEQTUpuAQxRS0lBE8lLSoERxaRPQQttqiQBB8cfTwEHcqEhwQVQIWmBCg+pgkEHH6BSwQkEnUzBBu6lX0ENDq1zwQshGkUBC+SbbIEHgqRCQQ7jj1hBCgQbf0EHE7JSwSlYOi+BDckJPAEH2wlpwQcJOVUBFkpELYEPbTYiQQm6rmxBDCSdLoEI06FgwQh/FynBBNUQO4EI4rZiARUxESmBBdi2WUFCOJJBAQVrmS1BBFq7IcFKtLMZwQdBkDRBBF4RIYEEWAU/wQldj3pBBYjDRkEXWkRpwQlFykxBDU23VQE9U7olQSO/pksBC+g9IsFQ17kWQQm0P27BCD49QQEWVExkDRa4NC8IARNKS0tOUFRZYW93CRMXGhodICIjARNJSElLTVFVXWwBDhkdHyAiIyUmARNLTU9RVFhdZnF3Bw4TFhcaGx8gARNFRERGS05SV2JzFSIlJiYnJygpAhNQUlNWWWBpcncECQ8SFRcZGhwBE0NBQkRLTlJUWVI0Li0tLS0sLC0CE1NVV1lcYWlxdwMHCw8SFRYYGgETPz4/R1JRU1JTS0E5NjU0MzIyMQITVVdYW15janF2AwYKDQ8SFBYYARM4NzBeX1dVUlJKREA9Ojk4NzY1AhNXV1tcYGRqcHYDBgoNDhATFhgAEzgyJgRxaV1YUVBLSERBPz47Ojg4AhJYWVxdYGRpb3UCBgkMDxEUFQATNioXAnJsX1lTUUxLR0VCQUA+OzoCEllbXV5hZGltcwEFCAsPEhUWARMYBXZxa19bVE9MTEtJRUNCQT8+AhJcXF5fYGNma3F2AwcKDxIVFgETBgF2cWxiXVdPTU1OTEtIR0NDQgISXFxeX2BjZmtwdAEFCQ8RFBUCEwJ2cWtkYFtPTk1QTktKSUdGRQMRXF5fYWNmam9zdwQIDg8TAxJ2cGtmYl1QTk1QTktLTEpJGPBcGbSpUBQhfSnNnWQeqTO1RUs8m57zLGMG8a0ye1ByeNr9cSPTnf42batwMjkrR0pZwKfwLGDQEsA4g0wt1nFK6rv18RrwVEy8omRNRif5Yhdaq6z2JwH6dPtYYKR0SfS4ZcOzrP4oQtmBMEjmCHZHJ7PQjbxB8fsec0p2r9vAtQGXEqEKYb74UzP73A0AuOG0iBFvUAuF6C91BFB67enmjQWkywtVy5kqE0rY7snaePiDa9bQAkFmVrpMFnS3SWNexSix+WZeBO7Z/AygrwwmMdcpOaifOQ/iAEPwmiHv8ZKqoGctEbn/zL+1uK6u2OJrJ0+C8VpzDjbuk09dI0UmP2sJ3LoSLtl2lvTrwbI/FvWW0fiqvWasDGW3btmtIc2w2w494H44DvVZwiHHtt+IHUw6Zs5kMxCOye+qMc5GqFB0BHyIxnc=";
	zkonline.RegisterTemplate= test1;
	if (zkonline.Verify()){
		   alert("Verify success!");
		}else{
		   alert("Verify Failed!");
		}   
	}
	
	function dd(){
	if (typeof zkonline.RegisterTemplate != "undefined") {
		if (zkonline.GetVerTemplate()) {
			alert(zkonline.VerifyTemplate);
					//document.getElementById("HiddenField1").value = zkonline.VerifyTemplate;
				} else {
				alert("not getVertemplate");
					return;
				}
				
	}
	}
    
    function ee(){
    alert("设置指纹已登记的手指标志");
    var finger="11111000000000";
    alert(
    zkonline.CheckFinger
    );
    alert("设定完成");
    }
    
    function ff(){
    zkonline.OneToOneThreshold("30");
    }
    
    function gg(){
    alert("gg function");
    //MatchFinger
    //MatchFingerAsVariant
    var test2="mspZFqaukSNbQUdhpVyBTVWkaMEYMrNvAQxLt28BEE/FXEEXsRJUwQpqGSkBBsfFNYEO4UVWQRxblGQBCwyceQEKIBNIAQ7joVfBI1mpMwEOyqgpQRq9lFLBCuiccYEMIrJMQRFYszEBEm6rS8EOVCwngUzXKRhBDbgXiEEIHyUmwQq6KkOBDcrEHoEFdZElAQVRRZGBBU6iHYEHQMJjARrJHRXBBMCnXMEcTY9ugQsPDFGBBesJSoEL4QlygQeArUyBD8WjX8FrMJBnwQl+CIXBBhKMMsEG04gxgQZaSvSIF7jUagkCEzs6QlBVT09LTUdBOzg3NjU1NQETODUrdWxiUlFLTUlFQT47Ojk5OAITQEBCR05PUFJTSDgzMDAwLzAwARMyLRd2cWhTUUxST0xFQj8/Pj07AhNDQ0RHTE9SVmFuIScoKSkpKywBEyofBnRwalxXVFdUUUpGQ0JBPz4CE0hHSEpOUVVdbQITHCAiIyQlJwETEAUCc29pXVlUUVBQT0tGRUNBQAITS0tMT1JWW2RxAw0XGhscICEkARN3d3d0bmpiXlVJTExPTUtKSEVDAhNNTVBTVllfaXMCCRAVGBkcHSIBE3d3dnNua2ViVUZKSU9OT05MSEYCEk9QUlVXXGJqcwEHDBEUFhkbARN3d3Vzbm5sbGFOUk5SUVJRT0tJAhJTVFZXWV5ka3MBBQgNERQXGQITdnRycHBvbmdbWFZVVFNTUk9MAhJUVldYXF9ka3J3BAcLDxEUFgISdnRzcXJwb2xnYV9cWFVVVFICElVWWVtdYGVscncEBwoNDxEUAhJ3dnVzcnBvbmtnZGBcWVhXVgMRVllbXmBka3J3BAcKDA4PAxB2d3ZycG5vbGtpZ2FfXBjwWxm0qVAUIWEpx4B/kGRYJNdwPGTcVroJaaEHy/s0dzgApo9zkQlTgSdvoO5Sged6wKAY+FJGsgBtNv5WqBbPmGx2Eoli46cpbgzeTA1Z195GqIAzevSc4G1/iqn784vzEhaGrjZ0B2il202tV9GeFoPXROeB+TIIuoYJ9mGgsJz+ZWTfNt/N/qlUbdkKYBzoygGEyeuA5d9yERDBdYkXtTgHaIdwU7Alebf4NCs1yi+bNsW6rwlQ3lh2zTKep4rMIESbP1xfhScR1zzhYBiGg4Y5hbAT/tdj8v2l7FwlYPkmwDFz5u+/E2qNvs6/acZQcptFyKlfkRfR1CLZdqjAnwxxG8BzUDcYL72Lyoh1JHwnQPEWwsXzRQcO0Z2TFNVRBN4qsbHbVbYU7QjznYaUVAkqBoyBMUAmElCvxYwYCovFCoX6cncY";
  	zkonline.VerifyTemplate=test2;
	zkonline.RegisterTemplate= test2;
	alert("zkonline.111=="+zkonline.VerifyTemplate);
	alert("zkonline.222=="+zkonline.RegisterTemplate);
	
   alert(
    zkonline.MatchFinger(zkonline.RegisterTemplate,zkonline.VerifyTemplate)
    
    );
    }
    function hh(){
    zkonline.CheckFinger="1000000000";
     var test3="mspZ1q3RlzZUgSw1t1pBGC84UUEtOxw7AQngnkLBA+29HAEivr4XQUm1QD0BDFFARIEISSVGgQpqLBpBBse0SUEpWLwlwQvIpjgBDt8mVgEMCxMdQQXXFDdBA2o4GMEIuR8jgQbSIEQBBnAiV4EHfJodAQTUokkBCAKKL8EG2ZBOQQkBEi+BCeBDL4EWzKQWQQRPmyJBBllAGUFd1hIpQQVehjNBCF69NYELyUgnwRBtoWGBCw0ua0EKHydBgQzmQD/BE8KvYkENIMpqQQhEy2zBCLqcYQEGgEsHAS+kNQ/BCT9KCkE3BbcEAQlBSfxBFDyvBIEEv64CgQRLwQTBDTA+9gENSLZRwUx0S5QNFAETTE1QU1ZcZHABCBAVGBkcHyEjJQETS0tMT1JXX24BDBcaHB0hIiQmKAITUFNVWV9ocncGDREVFhkcHyAiARNFRkdKTFFWY3USHSIjJCUmJygpAhNUVlhcYmpydwQIDRIVFxkbHB8BE0JDRUlLT1JZWSsqKyorKysrKysCE1dYW15janJ3BAcLDxIVFxkaGwETPUFES0xPUFFJPjY0MjIxMS8uLQITWVtdX2RrcncDBgkNEBMVFxkaAhNDSlNRUk5NSEI9Ojg3NjY0MjACE1tcXmFlanB2BAYJDA8SFRcZGgITcWhkXFhOTUlGQj89Ozo5NzUzAhJbXV9iZWtwdQMGCQwQExUWGAITdHBsYVtQT0xKREFAPz49Ojg3AhJdXl9hZGludAIFCA0RExUWGAMTb21kYFlXVFBKRkNCQD87OjkCEl1fX2FjaG1ydwMIDRESExQWAxNtbGRfW1RPTkxJRkVEQkA/PQMRX2BhY2dscnUBBgsPEBETBBJsZmJdVE5PTktHRkVEQkIEEGBhZGdscXUBBQoNDw8FEWZgV0xIS01LR0dHR0YY8FwZtKlQFCFrNsKJkslJj42QuUZXS6Pd9pqBtj5sOZKcIAvZJIh7n2gQM2SeCPY146aqzPmDcq7hqQVGMkM5ziaSgmRHhzNJBxA0GmSGrsnfvY6G7CTiwJwvDHRa+l2HyEJ9Nzk0HIZpO5Exiw1z/oeKRVOUcbi4XWfB39ngLNo2rulSFug5w5QSQ3sWNfroZNDEQIXsl7HA+lHJ0XFw8K4+aF7H4Is9snX7vNswDtIprCYmiKJEx5mUHygs6Kg/NGQlOx5o/h2/SeXHSczDkaxK+c9H2dgQe4WdQgHIScrnZ/iXz9eqH/QjTbf7qPB4oCWyS9kEGlWdT2OapPyJJJzzc0IHbs7+rFIUP2RNzTzagq0BriephoGdE5E7G4GqY9fU9Icq5p5/0OkVy+NFQJarANhePpwNIWpvblRNtTp+6ije264jdw==";
    
    zkonline.RegisterTemplate=test3;
     alert("左尾=="+
    zkonline.GetRegFingerTemplate(1)
    )
    ;
    
    alert("左母=="+
    zkonline.GetRegFingerTemplate(5)
    )
    ;
    
    
    }
	</script>
  </head>
  
  <body>
   <div>
  	test page
   </div>
<!-- 
<OBJECT classid="clsid:控件识别号" id="自定义id"  codebase="plugins(路径)/控件文件名#version=3,4,0,0"></OBJECT>  
width="320" height="320"
-->
<object id="biokey" classid="clsid:CA69969C-2F27-41D3-954D-A48B941C3BA7"  name="biokey" CODEBASE="C:\\Windows\\System32\\biokey.ocx">
</object>
   

   <input name="boo" type="button" onclick="aa()" value="测试1" />
   

 
<object classid="clsid:A318A9AC-E75F-424C-9364-6B40A848FC6B" width="20" height="20" id="zkonline"></object>
<comment>
 <EMBED type="application/x-eskerplus" classid="clsid:A318A9AC-E75F-424C-9364-6B40A848FC6B"codebase="ZKOnline.ocx" width=20 height=20>
 </EMBED>
</comment>
<input type="button" onclick="defualCloseWin()" value="默认关闭窗口时间设置" />

<input type="button" onclick="bb()" value="reg指纹bb方法" />
<input type="button" onclick="cc()" value="local verfy cc方法" />
<input type="button" onclick="dd()" value="get指纹 dd方法" />
<input type="button" onclick="ee()" value="测试按钮555eee" />
<input type="button" onclick="ff()" value="测试按钮666fff" />
<input type="button" onclick="gg()" value="测试按钮777ggg MatchFinger" />
<input type="button" onclick="hh()" value="测试按钮888hhh" />

<textarea id="list2" style="width:250px; height:400px;" readonly></textarea>   

  </body>
</html>