<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcustomer.jsp' starting page</title>
    
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
    <s:form action="customer/customer_save.action" method="post" >
<s:token /> 
<table>
	<tr>
		<td>登录名</td>
		<td>
			<s:textfield name="customer.loginName"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>密码</td>
		<td>
			<s:password name="customer.loginPwd"></s:password>
		</td>
	</tr>
	<tr>
		<td>昵称</td>
		<td>
			<s:textfield name="customer.name"></s:textfield>
		</td>
	</tr>
	
	
	<tr>
		<td><s:submit value="注册"></s:submit></td>
   		
   	</tr>
	

</table>



</s:form>
  </body>
</html>
