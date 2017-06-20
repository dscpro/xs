<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>享受登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->	
<link rel="stylesheet" type="text/css" href="css/login_css.css">
	<script src="js/checkLogin.js" type="text/javascript"></script>
	
  </head>
  
  <body>
   <div class="wrap">
	<div class="header">
    <jsp:include page="top.jsp"></jsp:include>
    <div style="height:500px;">
	
	<div id="menu">
		<ul>
			<li>
				<a href="#"><img src="images/p13.jpg" alt="" /></a>
				<div>
					<h1>爱享受</h1>
					<p></p>
				</div>
			</li>
			<li>
				<a href="#"><img src="images/p11.jpg" alt="" /></a>
				<div>
					<h1>今日特卖</h1>
					<p></p>
				</div>
			</li>
			<li>
				<a href="#"><img src="images/p8.jpg" alt="" /></a>
				<div>
					<h1>当下流行</h1>
					<p></p>
				</div>
			</li>
			
		</ul>
	</div>
    <div style="border:1px solid #cccccc;width: 290px;high=500px;border-top:2px solid #E85356;
	right:155px;top:260px;position:absolute;">
	<div style="padding:5px;">
	<p style="padding-top:5px;padding-left:5px;"><b>登录<b/></p>
    <form method="post" action="customer/customer_login.action" OnSubmit="return check();" name="myform">
			<input style="margin-top: 20px;" class="input" type="text" id="username" name="customer.loginName" onpaste="return false" oncontextmenu = "return false" placeholder="用户名" autocomplete="off" value="${us}"/>
			</br>
			<input style="margin-top: 20px;"  class="input" type="password" id="userpassword" name="customer.loginPwd" placeholder="密码" onpaste="return false" oncontextmenu = "return false"/>
			</br></br>
			<p style="text-align:left;">自动登录<input type="checkbox" name="auto" value="1" style="float:left;"></p>
			<a href="" id="pw" style="margin-left: 160px;">忘记登录密码?</a>
            </br>
			<input type="submit" id="button" class="button" value="登录">
			</br></br>
			<a href="re.jsp" style="margin-left: 190px;">免费注册</a>
	</form>	
	</div>
	</div>
	</div>
	
	</div>
	</div>
		 <jsp:include page="footer.jsp"></jsp:include>
  </body>
 
</html>
