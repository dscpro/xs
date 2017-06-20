<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>享受订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><link rel="stylesheet" type="text/css" href="css/re_style.css">
	<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
	<script src="js/addCartcheckdata.js" type="text/javascript"></script>
    <script src="js/Area.js" type="text/javascript"></script>
    <script src="js/AreaData_min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/minified.css">
	<link rel="stylesheet" type="text/css" href="css/showCarGood.css">

  </head>
  
  <body>
    <jsp:include page="top.jsp"/>
   
    <s:set value="#session.user" name="customer" />
     <s:set value="#session.cart" name="cart" />
    <s:if test="#customer!=null&&#cart!=null">
    
   <center>
   <form name="myform" action="orders_save.action" method="post" onsubmit="return checkdata();">
   
   <table>
    <tr>
    <td><input type="hidden" name="id" value="<s:property value='#customer.id'/>">
   </td></tr>
   <tr>
   <td > 收货人</td>
  <td>  <input name="buyer" type="text" value="<s:property value='#customer.name'/>"></td><!-- <select name="category" class="textBox"><option></option></select> -->
   </tr>
   <tr><td style="vertical-align: middle;">商品信息</td>
  <td> 

  <s:iterator value="#cart" var="carts">
  
   <div class="cell p-goods">
				<div class="goods-item">
					<div class="p-img" >
							<div class="item-msg" style="float: left;">
						<div class="p-name">
						<a href="good_loadOneGood.action?id=<s:property value='#carts.goods.id'/>" target="_blank"><img  src="<s:property value='#carts.goods.picture'/>" style="width: 82px ;height: 82px;"></a>
				      	</br>
				      	<a href="good_loadOneGood.action?id=<s:property value='#carts.goods.id'/>" target="_blank"><s:property value='#carts.goods.merName'/></a>
						
						</div>
						<font color="red">数量：<s:property value='#carts.num'/></font>
					</div>
					</div>
					
				</div>
			</div>
			
			
			</s:iterator>
			</td>
   </tr>
 <tr><td style="height:50px;line-height: 50px;">总金额</td>
  <td> 
	<s:set name="total" value="0"></s:set>
		<s:iterator value="#session.cart" var="cartnum">
		 <s:set name="total" value="#total+((#cartnum.goods.price)*(#cartnum.num))" ></s:set>
		</s:iterator> 
	<s:property value="#total"/>
	<input type="hidden"  name="money" value="<s:property value='#total'/>">
	</td>
   </tr>
   <tr><td >收货地址</td>
  
  <td> <input type="hidden"  name="address" value="">
   <select id="seachprov" name="seachprov" onChange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');"></select>&nbsp;&nbsp;
   <select id="seachcity" name="homecity" onChange="changeCity(this.value,'seachdistrict','seachdistrict');"></select>&nbsp;&nbsp;
<span id="seachdistrict_div"><select id="seachdistrict" name="seachdistrict"></select></span>
<p>
<input type="text" name="addressjuti" style="margin-top:5px;" placeholder="请填写具体地址"/>
</td>
  
  
   </tr>
   
   <tr ><td ><input class="button" type="submit" value="提交"/></td>
   <td style="text-align: center;"><a href="showCarGoods.jsp">返回购物车</a> </td>
   </tr>
   </table>
   
   </form>
 </s:if>
  
   
   </center>
   <jsp:include page="footer.jsp"/>
   
  </body>
</html>
