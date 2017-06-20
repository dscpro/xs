<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<meta http-equiv="refresh" content="3;url=admin/admin.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
.top>a {
	margin-left: 80px;
	line-height: 100px;
	text-decoration: none;
}

.top>a:VISITED,.top>a:LINK {
	color: black;
}

.top>a:HOVER {
	color: #C81623;
}
</style>
  </head>
  
  <body>
   <div class="top">
    <img src="images/admin.png" style="width:100px;height: 100px;float: left;"/>
    <a href="admin/admin.jsp">返回登录界面</a>
   <center>
    <p style="font-size: 18px;padding-top:50px;min-height: 500px;"><%="账户或密码有误,三秒后自动跳转到登录页面" %></p>
   </center>
  </body>
</html>
