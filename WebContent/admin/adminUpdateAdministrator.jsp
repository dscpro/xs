<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更改信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/adminbase.css">
		<link rel="stylesheet" type="text/css" href="css/adminleft.css">
	
	<script src="js/prototype.lite.js" type="text/javascript"></script>
	<script src="js/moo.fx.js" type="text/javascript"></script>
	<script src="js/moo.fx.pack.js" type="text/javascript"></script>

  </head>
  
  <body>
    <jsp:include page="admintop.jsp"></jsp:include>
 <jsp:include page="adminleft.jsp"></jsp:include>
 <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">信息修改</div></td>
      </tr>
    </table>
     <center>更改管理员
  <form target="_self" action="admin_updateObject.action" method="post">
  <table>
    <tr>
    <td><input type="hidden" name="administrator.id" value="<s:property value='#request.admin.id'/>"></td></tr>
   <tr>
   <td class="nametd"> 级别</td>
  <td>  <input type="text" name="adminTypeName" value="<s:property value='#request.admin.adminType.name'/>"></td><!-- <select name="category" class="textBox"><option></option></select> -->
   </tr>
   <tr><td class="nametd">管理员名称</td>
  <td>  <input type="text" name="administrator.name" value="<s:property value='#request.admin.name'/>"></td>
   </tr>
   <tr><td class="nametd">登录名</td>
  <td>  <input type="text" name="administrator.loginName" value="<s:property value='#request.admin.loginName'/>"></td>
   </tr>
   <tr><td class="nametd">密码</td>
  <td>  <input type="text" name="administrator.loginPwd" value="<s:property value='#request.admin.loginPwd'/>"></td>
   </tr>
  
   <tr><td>
   <input type="reset" value="重置" onclick="if(!confirm('你确认要初始吗？')) return false;"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   
   </form>
   
   </center>  
       
     
  </body>
</html>
