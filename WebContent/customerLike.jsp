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
    
    <title>我的享受收藏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->	
<link rel="stylesheet" type="text/css" href="css/customer.css">
	<link rel="stylesheet" type="text/css" href="css/comm.css">
   <link rel="stylesheet" type="text/css" href="css/order.css">
  </head>
  
  <body>
    <jsp:include page="top.jsp"></jsp:include>
    
    <div id="container">
        <div class="w">
            <div id="content" style="min-height:300px ;">
          <div id="sub">
					<!--  /widget/menu/menu.tpl -->
					<div id="menu">
						<dl class="fore1">
							<dt id="_MYJD_order">订单中心</dt>
									<dd class="fore1_1" id="_MYJD_ordercenter">
								<a  href="orders_findPageByCu.action" target="_self">我的订单</a>
										</dd>	
						</dl>	
						<dl class="fore2">
							<dt id="_MYJD_like">收藏中心</dt>
									<dd class="fore2_1" id="_MYJD_likegood">
								<a href="customerLike.jsp" target="_self">我的收藏</a>
										</dd>	
						</dl>
						<dl class="fore6">	
							<dt id="_MYJD_sz">设置</dt>	
								<dd class="fore6_1" id="_MYJD_info">
									<a  href="customerCl.jsp" target="_self">个人信息</a>	
										</dd>		
								<!--<dd class="fore6_2" id="_MYJD_add">		
									<a href="" target="_self">收货地址</a>	
								</dd>
						--></dl>
					</div>
					<div id="menu-ads">
					    <!--广告全部放这里-->
					</div>
					<!--/ /widget/menu/menu.tpl -->
                </div>
   <div style="min-height: 200px;padding-top: 100px;">
   <center>
    
      <s:set name="customer" value="#session.user" />
    
      <s:set name="goodlike" value="#request.goodlikes"/>
      <s:if test="#goodlike!=null&&#goodlike.size>0">
      
    <table>
    <tr>
    <td><input type="hidden" name="id" value="<s:property value='customer.id'/>">
   </td>
   </tr>
   <tr>
   <td> 商品名</td>
   <td> 商品单价</td>
   <td> 操作</td>
   </tr>
   <s:iterator var="goodlike" value="#request.goodlikes">
   <tr>
   <td > <a href="good_loadOneGood.action?id=<s:property value='#goodlike.good.id'/>" target="_blank"><s:property value='#goodlike.good.merName'/></a></td>
   <td ><s:property value='#goodlike.good.price'/></td>
   <td> <a href="goodlike_del.action?id=<s:property value='#goodlike.good.id'/>">取消收藏</a></td>
   </tr>
   </s:iterator>
 </s:if>
  </table>
    
    
    
   <s:else>
    
     <font size="5"> 您并未收藏任何商品，快去<a href="index.jsp">享受</a>吧!</font>
   </s:else>
    
  
    </center>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
