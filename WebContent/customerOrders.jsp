<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>享受个人订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/customer.css">
	
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
									<a  href="goodlike_findPageByCu.action" target="_self">个人信息</a>	
										</dd>		
								
						</dl>
					</div>
					<div id="menu-ads">
					    <!--广告全部放这里-->
					</div>
					<!--/ /widget/menu/menu.tpl -->
                </div>
    
  <s:if test="#request.orderslist!=null&&#request.orderslist.size>0">
                
                <div id="content" class="c-3-5">
				
	<div class="mod-main mod-comm lefta-box" id="order02">
	<div class="mc">
        			<table class="tb-void">
        				<colgroup>
	<col width="290"/>
	<col width="90"/>
	<col width="110"/>
	<col width="100"/>
	<col width="100"/>
	<col width="130" />
</colgroup>
<thead>
	<tr>
		<th style="width:200px;">订单序号</th>
		<th style="width:200px;">收货人</th>
		<th style="width:200px;">地址</th>
		<th style="width:200px;">订单金额</th>	
		<th style="width:200px;">下单日期</th>	
		<th style="width:200px;">订单状态</th>		
		<th style="width:200px;">订单详细</th>	
		<th colspan="3">操作</th>
	</tr>
	
	<s:iterator value="#request.orderslist" var="orders">
	<tr>
		<th class="ordertd"><s:property value="#orders.id"/></th>
		<th class="ordertd"><s:property value="#orders.buyer"/></th>
		<th class="ordertd"><s:property value="#orders.address"/></th>
		<th class="ordertd"><s:property value="#orders.money"/></th>	
		<th class="ordertd"><s:property value="#orders.orderDate"/></th>	
		<th class="ordertd"><s:property value="#orders.ordersstatus.name"/></th>		
		<th class="ordertd"><a target="_blank" href="MyOrderCon?orderno=<s:property value='#orders.cart.id'/>">订单详细</a></th>	
		
		
		<s:if test="#orders.ordersstatus.id==1">
		<th class="ordertd"><a href="orders_del.action?id=<s:property value="#orders.id"/>" onclick="if(!confirm('您确认要取消订单吗？')) return false;">取消订单</a></th>
	    <th class="ordertd"><a href="orders_updateObject.action?id=<s:property value="#orders.id"/>" onclick="if(!confirm('您确定付款？')) return false;">付款</a></th>
	    </s:if>
	    <s:elseif test="#orders.ordersstatus.id==2">
	    
	    <th  class="ordertd" >等待发货</th>
	     <th  class="ordertd" ><br><br></th>
	    </s:elseif>
	    <s:if test="#orders.ordersstatus.id==3">
	   
	     <th class="ordertd" >已发货</th>
	      <th  class="ordertd" >&nbsp;</th>
	   </s:if>
	</tr>
	
	
	
	</s:iterator>
</thead>				                    
        	</table>
        		</div>
</div>


             	</div>
</div>
 </div>
 </div>
 </s:if>
<s:else>
     <center style="min-height: 150px;margin-top: 100px;">
     
     <font size="5">您当前未有订单存在，快去<a href="index.jsp">享受</a>购物吧！！</font>
     </center>
 </s:else>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
