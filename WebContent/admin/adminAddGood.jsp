<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib  prefix="sx" uri="/struts-dojo-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/adminAddGood.css">
	<link rel="stylesheet" type="text/css" href="css/adminbase.css">
    <script src="js/date1.js"></script>
    <script src="js/date2.js"></script>
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
        <td height="31"><div class="titlebt">添加商品</div></td>
      </tr>
    </table>
   
   <center>
   
   <form target="_self"  action="admingood_save" method="post"  enctype="multipart/form-data">
  <table>
   <tr><td class="nametd">商品分类</td>
  <td>  <select name="category" class="textBox">
  <s:iterator value="#request.categoryList" var="cates">
  <option value="<s:property value='#cates.id'/>"><s:property value='#cates.cateName'/></option>
     
  </s:iterator>
  </select> </td><!-- <select name="category" class="textBox"><option></option></select> -->
  
   </tr><tr><td class="nametd">商品名称 </td>
  <td>
  
   <input type="text" name="good.merName"></td>
   </tr><tr><td class="nametd">库存 </td>
  <td>
  
   <input type="text" name="good.inventory"></td>
   </tr><tr><td class="nametd">单价</td>
  <td>  <input type="text" name="good.price"></td>
   </tr><tr><td class="nametd">会员价</td>
  <td>  <input type="text" name="good.sPrice"></td>
   </tr><tr> <td class="nametd">图片</td>
   <td valign="top" style="width:149px;">请选择图片:(不大于5M)
   <s:file name="upload" style="background-color: rgb(238,242,251);"/>
   </td>
 </tr>
 <tr><td class="nametd">生产厂家</td>
  <td>  <input type="text" name="good.manufacturer"></td>
   </tr>
   <tr><td class="nametd">生产日期</td>
   <td>
   <sx:datetimepicker language="UTF-8" name="good.leaveFactoryDate" id="cssj" displayFormat="yyyy-MM-dd" />
	</td>
   </tr>
   <tr><td class="nametd">简介</td>
   <td><textarea name="good.informations" cols="40" rows="10" class="textBox"></textarea></td>
   </tr><tr><td>
   <input type="reset" value="重置"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   
   </form>
   
   </center>
  </body>
</html>
