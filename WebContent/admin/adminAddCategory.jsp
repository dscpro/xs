<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品分类</title>
    
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
<script type="text/javascript">
 function checkNull(){
    if(document.m.cateName.value.length>0)
    return true;
    else
    {
    alert("不能为空");
    return false;
    }
 }
</script>

  </head>
  
  <body>
     <jsp:include page="admintop.jsp"></jsp:include>
    <jsp:include page="adminleft.jsp"></jsp:include>
 <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">添加商品分类</div></td>
      </tr>
    </table>
   <center>
   
   <form target="_self" action="admincate_save.action" method="post" onsubmit="return checkNull();" name="m">
  <table>
   <tr><td class="nametd"> 商品分类名称</td>
  <td>  <input type="text" name="category.cateName"></td><!-- <select name="category" class="textBox"><option></option></select> -->
   </tr><tr><td>
   <input type="reset" value="重置"/></td>
   <td><input type="submit" value="提交"/></td>
   </table>
   
   </form>
   
   </center>
  </body>
</html>
