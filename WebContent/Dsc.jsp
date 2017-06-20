<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>享受网上商城</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
    <jsp:include page="top.jsp"></jsp:include>
    <center>
    <div class="min-height:500px;padding-top:150px;">
    </br></br></br></br></br>
    <p>系统版本号:享受网2.0</p>
    <p>系统总管理员:dsc</p>
    <p>联系方式:1318188424@qq.com</p>
    </div>
    </center>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
