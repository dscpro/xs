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
    
    <title>更改商品分类</title>
    
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
  </head>
  
  <body>
   <jsp:include page="admintop.jsp"></jsp:include>
 <jsp:include page="adminleft.jsp"></jsp:include>
 <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">分类更改</div></td>
      </tr>
    </table>
     
     <center>更改商品分类
   
   <form action="admincate_updateObject.action" method="post" target="_self">
  <table>
    <tr><td><input type="hidden" name="category.id" value="<%out.print(request.getParameter("id")); %>"></td></tr>
   <tr><td class="nametd"> 商品分类名称</td>
  <td>  <input type="text" name="category.cateName"></td>
   </tr><tr><td>
   <input type="reset" value="重置"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   
   </form>
   
   </center>  

</html>
