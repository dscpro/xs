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
    
    <title>查看订单</title>
    
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
   <jsp:include page="admintop.jsp"></jsp:include>
    <jsp:include page="adminleft.jsp"></jsp:include>
    <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">查看订单</div></td>
      </tr>
    </table>	 
    <s:if test="#request.orderslist==null">
     <center>目前没有订单哦</center>
     </s:if>
     <s:else>
     <center >
     <div class="div_middle" style="min-height: 200px;">
     全部订单<br>
<table border=1 >
   <tr>
      <td class="tdname">订单序号</td>
      <td>下单会员</td>
      <td>收货人</td>
      <td>地址</td>
      <td>总金额</td>
      <td>订单状态</td>
      <td>下单日期</td>
      <td colspan="2" style="text-align: center;">操作</td>
   </tr>
    
     <s:iterator value="#request.orderslist" var="orders">

   <tr>
   
    
      <td class="tdname"><s:property value="#orders.id" /> </td>
      <td><s:property value="#orders.customer.name" /> </td>
      <td><s:property value="#orders.buyer" /> </td>
      <td><s:property value="#orders.address" /> </td>
      <td><s:property value="#orders.money" /> </td>
      <td><s:property value="#orders.ordersstatus.name" /></td>
      <td><s:property value="#orders.orderDate" /> </td>
     
     <s:if test="#orders.ordersstatus.id==1">
      <td>等待买家付款中</td>
     </s:if>
       <s:if test="#orders.ordersstatus.id==2">
      <td><a target="_self" href="adminorders_updateAdminObject.action?id=<s:property value='#orders.id' />" onclick="if(!confirm('你确认已经发货？')) return false;">确认发货</a></td>
      </s:if>
      <s:if test="#orders.ordersstatus.id==3">
      <td>已发货</td>
      </s:if>
   </tr>
   
     </s:iterator>
    
     </table>
     </div>
</center>
<div style="padding-left:700px; font-size: 20px;"><%=request.getAttribute("bar") %></div>
    </s:else>

  </body>
</html>
