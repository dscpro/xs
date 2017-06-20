<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<%@ taglib  prefix="sx" uri="/struts-dojo-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更改商品信息</title>
    
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
	<sx:head extraLocales="UTF-8" />
  </head>
  
  <body>
    <jsp:include page="admintop.jsp"></jsp:include>
   <jsp:include page="adminleft.jsp"></jsp:include>
 <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">商品信息更改</div></td>
      </tr>
    </table>
    
    
     <center>更改商品
   <form action="admingood_updateObject.action" method="post" enctype="multipart/form-data">
   <table>
    <tr><td><input type="hidden" name="id" value="<s:property value='#request.admingoodload.id'/>"></td>
    <td></td>
    </tr>
   <tr><td class="nametd"> 商品分类</td>
  <td>  <select name="category" class="textBox">
 <s:iterator value="#request.categoryList" var="cates">
  <option value="<s:property value='#cates.id'/>">
 
  <s:property value='#cates.cateName'/></option>
     
  </s:iterator>
  </select> </td><!-- <select name="category" class="textBox"><option></option></select> -->
   </tr><tr><td class="nametd">商品名称</td>
  <td>  <input type="text" name="good.merName" value="<s:property value='#request.admingoodload.merName'/>"></td>
   </tr><tr><td class="nametd">库存</td>
  <td>  <input type="text" name="good.inventory" value="<s:property value='#request.admingoodload.inventory'/>"></td>
   </tr><tr><td class="nametd">单价</td>
  <td>  <input type="text" name="good.price" value="<s:property value='#request.admingoodload.price'/>"></td>
   </tr><tr><td class="nametd">会员价</td>
  <td>  <input type="text" name="good.sPrice" value="<s:property value='#request.admingoodload.sPrice'/>"></td>
   </tr><tr> <td class="nametd">图片</td>
   <td valign="top">请选择文件:(不大于5M)
    
   </td>
 </tr><tr><td class="nametd">生产厂家</td>
  <td>  <input type="text" name="good.manufacturer" value="<s:property value='#request.admingoodload.manufacturer'/>"></td>
   </tr><tr><td class="nametd" >生产日期</td>
   <td>
   <sx:datetimepicker language="UTF-8" name="good.leaveFactoryDate" id="cssj" displayFormat="yyyy-MM-dd" value="<s:property value='#request.admingoodload.leaveFactoryDate'/>"/>
 </td>
   </tr><tr><td  class="nametd">简介</td>
   <td><textarea   name="good.informations" cols="40" rows="10" class="textBox"><s:property value='#request.admingoodload.informations'/></textarea></td>
   </tr><tr><td>
   <input type="reset" value="重置" onclick="if(!confirm('你确认要初始吗？')) return false;"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   <input type="hidden" name="good.picture" value="<s:property value='#request.admingoodload.picture'/>">
   </form>
   
   </center>  
       
     
  </body>
</html>
