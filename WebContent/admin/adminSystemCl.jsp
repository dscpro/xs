<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员管理</title>
    
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
        <td height="31"><div class="titlebt">管理员管理</div></td>
      </tr>
    </table>
    <s:if test="#request.administratorlist==null">
    <center>
     <a href="admin/adminAddAdministrators.jsp">  新增管理员     </a> 快来添加吧</center>
    </s:if>
     <s:else>
     <center >
     <div class="div_middle" style="min-height: 150px;">
     管理员的信息<br>
<table border=1 >
   <tr>
      <td class="tdname">级别</td>
      <td>管理员名称</td>
      <td>登录名</td>
      <td>密码</td>
      <td colspan="2" style="text-align: center;">操作</td>
   </tr>
    
    <s:iterator value="#request.administratorlist" var="admin">
   <tr>
      <td class="tdname"><s:property  value="#admin.adminType.name"/></td>
      <td><s:property  value="#admin.name"/></td>
      <td><s:property  value="#admin.loginName"/></td>
      <td><s:property  value="#admin.loginPwd"/></td>
      <td><a target="_self" href="admin_del.action?id=<s:property  value='#admin.id'/>" onclick="if(!confirm('你确认要删除吗？')) return false;">删除管理员</a></td>
      <td><a target="_self" href="admin_findoneadmin.action?id=<s:property  value='#admin.id'/>" >更改信息</a></td>

   </tr>
   </s:iterator>
     </table>
     </div>
</center>
<div style="padding-left:360px; font-size: 20px;"><%=request.getAttribute("adminSystembar") %></div>
     </s:else>
     
  </body>
</html>
