<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>操作成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/adminbase.css">
	

  </head>
  
  <body>
    <jsp:include page="admintop.jsp"></jsp:include>
    <jsp:include page="adminleft.jsp"></jsp:include>
    <table width="85%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">操作成功</div></td>
      </tr>
    </table>
    <center style="padding-top: 3	0px;">
     <font size="5">    恭喜，操作成功！</font>
     <a href="admin/adminuse.jsp" target="_self">返回管理主页</a>
    </center>
  </body>
</html>
