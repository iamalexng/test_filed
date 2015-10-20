<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
    <jsp:include page="../public/fshop_include.jsp" flush="false" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript">
  $(document).ready(function(){
 // alert("init test" );
  });
  </script>
  
  <body>
  <div class="site-topbar">
  
  </div>
  
    This is our test JSP  Page. <br>
    
    
    ${secUser.userId} <br>
    ${secUser.name} <br>
    ${secUser.nickName} <br>
    ${secUser.mobile} <br>
  </body>
</html>
