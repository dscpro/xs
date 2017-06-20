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
    
    <title>商品管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/adminGoodCl.css">
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
        <td height="31"><div class="titlebt">商品管理</div></td>
      </tr>
    </table>
    <s:if test="#request.goods==null">
     <center><a  href="admin/adminAddGood.jsp">  新增商品     </a> 快来添加吧</center>
    </s:if>
     <s:else>
     <center >
     <div class="div_middle">
     商品的信息<br>
<table border=1 >
   <tr>
      <td class="tdname">物品名称</td>
      <td>分类</td>
      <td>库存</td>
      <td>单价</td>
      <td>会员价</td>
      <td>厂家</td>
      <td>图片</td>
      <td>离厂日期</td>
      <td colspan="2" style="text-align: center;">操作</td>
   </tr>
    
     <s:iterator value="#request.goods" var="good">
   <tr>
      <td class="tdname"><s:property value="#good.merName"/></td>
      <td><s:property value="#good.category.cateName"/></td>
      <td><s:property value="#good.inventory"/></td>
      <td><s:property value="#good.price"/></td>
      <td><s:property value="#good.sPrice"/></td>
      <td><s:property value="#good.manufacturer"/></td>
      <td><img id="img" src="<s:property value="#good.picture"/>" width="36px" height="36px" /></td>
      <td><s:property value="#good.leaveFactoryDate"/>
      <td><a target="_self" href="admingood_del.action?id=<s:property value='#good.id'/>" onclick="if(!confirm('你确认要删除吗？')) return false;">删除商品</a></td>
      <td><a target="_self" href="admingood_adminloadOneGood.action?id=<s:property value='#good.id'/>" >更改信息</a></td>

   </tr>
   
     </s:iterator>
    
     </table>
     </div>
</center>
<div style="padding-left:700px; font-size: 20px;"><%=session.getAttribute("bar") %></div>
    </s:else>
  </body>
</html>
