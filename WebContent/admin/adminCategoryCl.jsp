<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@	taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品分类管理</title>
    
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
        <td height="31"><div class="titlebt">商品分类管理</div></td>
      </tr>
    </table>	
  <center>
           
    <s:if test="#request.categories==null">
   <a href="admin/adminAddCategory.jsp">  新增商品分类     </a>   快来添加吧</center>
    </s:if>
    <s:else>
     <center >
     <div class="div_middle"  style="min-height: 180px;">
     商品分类的信息<br>
<table border=1 >
   <tr>
      <td class="tdname">分类名称</td>
      <td colspan="2" style="text-align: center;">操作</td>
   </tr>
    
     <s:iterator value="#request.categories" var="cate">
   <tr>
      <td class="tdname"><s:property value="#cate.cateName"/></td>      
      <td><a href="admincate_del.action?id=<s:property value='#cate.id'/>" onclick="if(!confirm('你确认要删除吗？')) return false;">删除商品分类</a></td>
      <td><a href="admin/adminUpdateCategory.jsp?id=<s:property value='#cate.id'/>">更改信息</a></td>
   </tr>
   
     </s:iterator>
    
     </table>
     </div>
</center>
<div style="padding-left:360px; font-size: 20px;"><%=session.getAttribute("categorylistbar") %></div>
   </s:else>
  </body>
</html>
