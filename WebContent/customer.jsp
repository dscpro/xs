<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>享受个人</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/customer.css">
		

  </head>
  
  <body>
   <jsp:include page="top.jsp"></jsp:include>
    
    <s:set name="customer" value="#session.user" />
    
   <div id="container">
        <div class="w">
            <div id="content">
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
								<a href="goodlike_findPageByCu.action" target="_self">我的收藏</a>
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
                <div id="main">
                    <!--home-media 首页响应式布局 start-->
                    <div class="lyt-c-0">
	                   	
			            	</div>
</div>
                        <!-- 用户信息 -->
                        <!--  /widget/userinfo/userinfo.tpl -->
                        <div id="user-info" class="user-info">
                            <div class="info-lcol" >
	<div class="u-pic">
		<img alt="用户头像" src="images/no-img_mid_.jpg">
		<div class="mask"></div>
	</div>
	<div class="info-m">
		<div class="u-name">
			<s:property value="#customer.loginName"/>
		</div>
	
		
			<div class="info-line">
				<span class="top-icon"></span>
				<span class="bottom-icon"></span>
				<span class="left-icon"></span>
			</div>
	</div>
</div>
			</div>
</div>
 </div>
</div>
    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
