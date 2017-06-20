<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<s:i18n name="dsc">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/admincheck.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/adminlogin.css">
	<link rel="shortcut icon" href="images/admin.png" type="image/png" />
  </head>
  
  <body>

 
    <div class="top">
    <a href="index.jsp"> <img src="images/admin.png" style="width:100px;height: 100px;float: left;margin-right: 280px;"/>
     </a>
    </div>
    <div class="middle" style="padding:150px 100px 0px 0px;">
    <a href="admin/admin.jsp">  <img src="images/logohoutai.png" style="margin-left:400px;margin-top: 50px"/>
      </a><div style="border:1px solid #cccccc;width: 290px;high=500px;border-top:2px solid #E85356;float: right;">
	<div style="padding:5px;">
	
	<p style="padding-top:5px;padding-left:5px;"><b>管理员登录<b/></p>
    <form method="post" action="admin_login.action" OnSubmit="return check();"  name="myform">
			<input class="input" type="text" id="username" name="administrator.loginName" onpaste="return false" oncontextmenu = "return false" placeholder="管理员账号" autocomplete="off" />
			</br>
			<input class="input" type="password" id="userpassword" name="administrator.loginPwd" placeholder="密码" onpaste="return false" oncontextmenu = "return false"/>
			</br></br>
			<input type="submit" id="button" class="button" value="登录">
			
	</form>	
	</div>
	</div>
    
    </div>

  </body>
</html>
</s:i18n>
