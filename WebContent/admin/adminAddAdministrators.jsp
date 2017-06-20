<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增管理员</title>
    
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
        <td height="31"><div class="titlebt">添加管理员</div></td>
      </tr>
    </table>
    <center>
   
   <form target="_self" action="admin_save.action" method="post">
  <table>
  <tr><td class="nametd">管理员级别 </td>
  <td> <select name="adminType">
  <option value="1">1</option>
  <option value="2">2</option>
  </select>
  </td><td><font size="2" color="red">1为系统管理员、2为普通管理员</font></td>
   </tr>
   <tr><td class="nametd">登录名</td>
  <td>  <input type="text" name="administrator.loginName"></td>
   </tr>
   <tr><td class="nametd">密码</td>
  <td>  <input type="password" name="administrator.loginPwd"></td>
   </tr>
   <tr><td class="nametd">昵称</td>
  <td>  <input type="text" name="administrator.name"></td>
   </tr>
 <tr><td>
   <input type="reset" value="重置"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   
   </form>
   
   </center>
  </body>
</html>
