<%@ page language="java" import="java.util.*,com.dsc.domain.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员管理</title>
    
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
        <td height="31"><div class="titlebt">会员管理</div></td>
      </tr>
    </table>
 
    <s:if test="#request.customerlist==null">
     <center>
     尚无会员</center>
    </s:if>
    <s:else>
     
     <center >
     <div class="div_middle" style="min-height: 150px;">
     会员的信息<br>
<table border=1 >
   <tr>
      <td class="tdname">会员等级</td>
      <td>登录名</td>
      <td>登录密码</td>
      <td>会员名称</td>
      <td>手机</td>
      <td>地址</td>
      <td>注册时间</td>
      <td>上次登录时间</td>
      <td>登录次数</td>
      <td>Email</td>
      <td colspan="2" style="text-align: center;">操作</td>
   </tr>
    
     <s:iterator value="#request.customerlist" var="customer">
   <tr>
       <td><s:property value="#customer.memberlevel.levelName"/>
       </td>
      <td class="tdname"><s:property value="#customer.loginName"/>
      </td>
      <td><s:property value="#customer.loginPwd"/></td>
      <td><s:property value="#customer.name"/></td>
      <td><s:property value="#customer.phone"/></td>
      <td><s:property value="#customer.address"/></td>
      <td><s:property value="#customer.regDate"/></td>
      <td><s:property value="#customer.lastDate"/></td>
      <td><s:property value="#customer.liginTimes"/></td>
      <td><s:property value="#customer.email"/></td>
      <td><a target="_self" href="admincustomer_del.action?id=<s:property value='#customer.id'/>" onclick="if(!confirm('你确认要删除吗？')) return false;">删除会员</a></td>
      <td><a href="">发送邮件</a></td>
      
   </tr>
   
    </s:iterator>
     </table>
     </div>
</center>
<div style="padding-left:360px; font-size: 20px;"><%=session.getAttribute("adminCustomerbar") %></div>
    </s:else>
     
  </body>
</html>
