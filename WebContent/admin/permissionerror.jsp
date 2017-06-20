<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>权限错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="images/admin.png" type="image/png" />
	<link rel="stylesheet" type="text/css" href="css/adminbase.css">
	

  </head>
  
  <body>
    <jsp:include page="admintop.jsp"></jsp:include>
    <jsp:include page="adminleft.jsp"></jsp:include>
    <center style="padding-top: 30px;">
    <img src="images/sorry.gif" width="128" height="128" style="float: left;"/>
   <font color="red" size="5"> 对不起，您权限不够！
    请与系统管理员联系！
    谢谢合作！</font>
    
    </center>
  </body>
</html>
