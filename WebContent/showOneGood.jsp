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
    
    <title>商品信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/showOneGood.css">
	<link rel="stylesheet" type="text/css" href="css/showgoodone.css">
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>	
    <script src="js/Area.js" type="text/javascript"></script>
    <script src="js/AreaData_min.js" type="text/javascript"></script>
    <script type="text/javascript">
     $(function (){
	    initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '0', '0', '0');
     });
    </script>

  </head>
  
  <body> 
  <jsp:include page="top.jsp"></jsp:include>
    
    <div style="min-height: 500px;">
    <div id="p-box">
        <div class="w">
        <div id="seo-banner" class="m m2 hide"></div>
    </div>
        <div class="w">
        <div id="search-result" class="m m2 hide" ></div>
    </div>

    <div class="w">
        <div id="product-intro" class="m-item-grid clearfix">
                        <div id="preview" >
                <div id="spec-n1" class="jqzoom">
                    <img style="width: 350px;height: 450px;" src ="<s:property value='#request.goodload.picture'/>"/>
                 </div>
                  <div id="short-share">
                    <div class="fl" style="margin-right: 25px;"><span>商品编号：</span><span><s:property value='#request.goodload.id'/></span></div>
                   <div class="fl">
                  
                   <span>
                   <s:if test="#request.flag!=null">                   
                                                      收藏成功!                   
                   </s:if>
                   <s:else>
                    <a href="good_addOneGoodLike.action?id=<s:property value='#request.goodload.id'/>">收藏该商品</a>
                  
                   </s:else>
                  
                   </span></div>
                </div>
            </div>           
            
            <div class="m-item-inner" >
              <div id="itemInfo">
                                    <div id="name">
                      <h1><s:property value='#good.informations'/></h1>
                   
                      <div id="p-ad-phone" class="p-ad"></div>
                                                              </div>
                                                                             
                     <div id="summary">
                       
                        <div id="summary-price">
                            <div class="dt">享受价：</div>
                            <div class="dd">
                                <strong class="p-price" id="jd-price">￥<s:property value='#request.goodload.price'/></strong>
                            </div>
                        </div>
                                                <div id="J-summary-top" class="summary-top" >
                            <div style="display: block;" id="summary-promotion" class="hide">
            
                            </div>                        </div> 
                                                         <div id="summary-stock">
                                                         
                            <!--<div class="dt">配 送 至：
                           
                          
                            </div>
                            
                            <div class="dd clearfix">
                                <div id="store-selector">
                                     <table><tr style="height:15px;">
  <td> <input type="hidden"  name="address" value="">
   <select id="seachprov" name="seachprov" onChange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');"></select>&nbsp;&nbsp;
   <select id="seachcity" name="homecity" onChange="changeCity(this.value,'seachdistrict','seachdistrict');"></select>&nbsp;&nbsp;
<span id="seachdistrict_div"><select id="seachdistrict" name="seachdistrict"></select></span>
                        </td></tr></table>                           
                                </div> 
                                </div>
                            --><span class="clr"></span>
                        </div>
                        <div id="summary-service" ><div class="dt">服　　务：</div><div class="dd">由 享受 发货并提供售后服务。23:00前完成下单,预计<b>一天后</b>送达</div></div>
              
                        <s:set name="inventory" value='#request.goodload.inventory'/>
                        <s:if test="#inventory>0">
                       
                        <div class="dt" style="margin-left: 11px;">有货</div>
                        </s:if>
                        <s:else>
                        <div class="dt" style="padding-left:50px;">此货太火,已断货,商家会尽快进货。您也可以先收藏。</div>
                        </s:else>   
                        </div>
                        </div>
                        <div id="choose-btns" class="li">                           
                             <div class="btn" id="choose-btn-append" >
                                <a target="view_window" class="btn-append " id="InitCartUrl" href="cart_addToCar.action?goodid=<s:property value='#request.goodload.id'/>">加入购物车<b></b>
                                </a>
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
