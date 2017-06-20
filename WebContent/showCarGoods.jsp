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
    
    <title>查看购物车商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/showCarGood.css">
	
    <script type="text/javascript" >
						
	function changeNum(id){
		var changeQuantity = document.getElementById("changeQuantity").value;
		 if(changeQuantity)
          {
          if(!isNaN(changeQuantity )){
                   //alert('是数字');
   	            window.location.href="cart_updateNum.action?goodid="+id+"&&value=change&&changeQuantity="+changeQuantity;
	        }else{
	        alert('请输入数字');
	        }
		  }	
		  }		
	</script>
  </head>
  
  <body>
  <jsp:include page="top.jsp"/>
   
   <div class="cart-warp">

	<div class="w">	
		
<s:if test="#session.cart!=null">	
	
		 <div id="jd-cart">
	<div class="cart-main">
		<div class="cart-thead">
			<div class="column t-checkbox">
				<div class="cart-checkbox">
					
				</div>
				
			</div>
			<div class="column t-goods">商品</div>
			<div class="column t-props"></div>
			<div class="column t-price">单价(元)</div>
			<div class="column t-quantity">数量</div>
			<div class="column t-sum">小计(元)</div>
			<div class="column t-action">操作</div>
			
		</div>
		<s:iterator value="#session.cart" var="cart">
		<!-- 清单 -->		
		<div id="cart-list">
				<input id="allSkuIds" value="1039396,1622073" type="hidden">
	<input id="outSkus" value="" type="hidden">
	<input id="isLogin" value="1" type="hidden">
	<input id="isNoSearchStockState" value="0" type="hidden">
	<input id="hiddenLocationId" type="hidden">
	<input id="hiddenLocation" type="hidden">
	<input id="checkway" name="checkway" value="dsc" type="hidden">
	<input id="ids" value="1039396,1622073" type="hidden">
	<!-- 修改数量之前的值 -->
	<input id="changeBeforeValue" value="" type="hidden">
	<input id="changeBeforeId" value="" type="hidden">
	<input value="1" id="checkedCartState" type="hidden">
	<input value="" id="venderIds" type="hidden">
							<div class="cart-item-list" id="cart-item-list-01">
				<div class="cart-tbody" id="vender_8888">

	<div class="item-list">
	
		<div class="item-single  item-item item-selected  " id="product_1622073">
		<div class="item-form">
			<div class="cell p-checkbox">
				<div class="cart-checkbox">
					<!--单品-->
						
					<span class="line-circle"></span>
				</div>
			</div>
			<div class="cell p-goods">
				<div class="goods-item">
					<div class="p-img">
						<a href="" target="_blank"><img  src="<s:property value='#cart.goods.picture'/>" style="width: 82px ;height: 82px;"></a>
					</div>
					<div class="item-msg">
						<div class="p-name">
							<a href="good_loadOneGood.action?id=<s:property value='#cart.goods.id'/>" target="_blank"><s:property value='#cart.goods.merName'/></a>
						</div>
						<div class="p-extend">
							<span class="promise" _giftcard="giftcard_1622073">
							</span>
														<span class="promise" _yanbao="yanbao_1622073_">
								<!--<i class="jd-service-icon"></i>
								<a href="#none" class="ftx-03 jd-service" clstag="clickcart|keycount|xincart|cart_fuWu" data-tips="购买京东服务">购买京东服务</a>-->
							</span>
													</div>
					</div>
				</div>
			</div>
			<div class="cell p-props">
			</div>
			<div class="cell p-price">
				<strong><s:property value='#cart.goods.price'/></strong>
																					                	            										                            				</div>
			<div class="cell p-quantity">
				<!--单品-->
					<div class="quantity-form">
					
						<a href="cart_updateNum.action?goodid=<s:property value='#cart.goods.id'/>&&value=del"     class="decrement disabled" id="decrement_8888_1622073_1_1">-</a>
						<!-- 输入数量 -->
						
						<input onblur="JavaScript:changeNum('<s:property value='#cart.goods.id'/>');" autocomplete="off"  name="goodnum"  class="itxt" value="<s:property value='#cart.num'/>" id="changeQuantity" type="text"/>
						<a href="cart_updateNum.action?goodid=<s:property value='#cart.goods.id'/>&&value=add"   class="decrement disabled"	style="margin-left:41px;" id="increment_8888_1622073_1_1_0">+</a>
						
							</div>
								<div class="ac ftx-03 quantity-txt" _stock="stock_1622073">有货</div>
			</div>
			<div class="cell p-sum">
									<strong><s:property value='#cart.goods.price*#cart.num'/></strong>
							</div>
			<div class="cell p-ops">
				<!--单品-->
					<a id="remove_8888_1622073_1" class="cart-remove" href="cart_delFromCar.action?goodid=<s:property value='#cart.goods.id'/>">删除</a>
											</div>
		</div>
		<div class="item-extra">
								</div>
		<div class="item-line"></div>
	</div>				</div>
</div>
			</div>
					</div>
	<!-- 清单 -->				

		</s:iterator>
		
			</div>
</div>		

		<div id="cart-floatbar">
	<div style="width: 990px; height: 52px;" class="ui-ceilinglamp-1"><div style="width: 990px; height: 50px;" class="cart-toolbar fixed-bottom">
		<div class="toolbar-wrap">
			<div class="selected-item-list hide">
			</div>
			<div class="options-box">
				<div class="select-all">
					<div class="cart-checkbox">
						
					</div>
					
				</div>
				<div class="operation">
					
									</div>
				<div class="clr"></div>
				<div class="toolbar-right">
					<div class="normal">
						<div class="comm-right">
							<div class="btn-area">
								<a href="addCartAndOrder.jsp"   class="submit-btn ">
								去结算<b></b></a>
								<!-- <a href="javascript:void(0);" class="submit-btn submit-btn-disabled">
								去结算<b></b></a> -->
							</div>
							<div class="price-sum">
								<div>
									<span class="txt">总价（不含运费）：</span>
									<span class="price sumPrice"><em>
									<s:set name="total" value="0"></s:set>
									 <s:iterator value="#session.cart" var="cartnum">
									 <s:set name="total" value="#total+((#cartnum.goods.price)*(#cartnum.num))" ></s:set>
									 </s:iterator> 
									<s:property value="#total"/>
									 
									</em></span>
									<br>
									<span class="txt">已节省：</span>
									<span class="price totalRePrice">-￥0.00</span>
								</div>
							</div>
							<div class="amount-sum">
								已选择<em> 	
								    <s:property value="#session.cart.size"/>
									 
									 </em>件商品
							</div>
							<div class="clr"></div>
						</div>
					</div>
						
				</div>
				
			</div>
		</div>
	</div>
	</div>
</div>

	</div>
</div>
 </s:if>	
<s:else>  		
<center style="margin-top: 50px;min-height: 300px;"><font size="3" >您还未选择商品，快去<a href="index.jsp" style="color:red;">享受</a>吧！</font></center>		
</s:else>		
		



  </body>
  <jsp:include page="footer.jsp"/>
</html>
