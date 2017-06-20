<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sx:head extraLocales="UTF-8" />
</head>
<body>

<s:form action="customer/customer_login.action" method="post" >
<s:token /> 
<table>
	<tr>
		<td>用户名</td>
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
		<td><s:submit value="登录"></s:submit></td>
   		
   	</tr>
	

</table>



</s:form>

</body>
</html>