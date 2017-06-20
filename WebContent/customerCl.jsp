<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/re_style.css">
	<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
	<script src="js/recheckdata.js" type="text/javascript"></script>
    <script src="js/Area.js" type="text/javascript"></script>
    <script src="js/AreaData_min.js" type="text/javascript"></script>

  </head>
  
  <body>
   <jsp:include page="top.jsp"></jsp:include>
   <s:set value="#session.user" name="cu"/>
	
	<center>
	<div >
	<form name="myform" action="customer_updateObject" method="post" onsubmit="return checkdata();">
  <table>
    <tr>
    <td><br><input type="hidden" name="customer.id" value="<s:property value='#cu.id'/>">
   <br></td></tr>
   <tr>
   <td > 会员级别</td>
  <td>  <input style="margin-top: 20px;" type="text" readonly="readonly" name="customer.memberlevel" value="<s:property value='#cu.memberlevel.levelName'/>"></td>
   </tr>
   <tr><td >会员名称</td>
  <td>  <input style="margin-top: 20px;" type="text" name="customer.name"  value="<s:property value='#cu.name'/>"></td>
   </tr>
   <tr><td >登录名</td>
  <td>  <input style="margin-top: 20px;" type="text" name="customer.loginName"  readonly="readonly"  value="<s:property value='#cu.loginName'/>"></td>
   </tr>
   <tr><td >密码</td>
  <td>  <input style="margin-top: 20px;" type="text" id="loginPwd" name="customer.loginPwd" value="<s:property value='#cu.loginPwd'/>"></td>
   </tr>
  <tr><td >手机号</td>
  <td>  <input style="margin-top: 20px;" type="text" id="phone" name="customer.phone" value="<s:property value='#cu.phone'/>"></td>
   </tr>

   <tr>
   <td>默认地址</td>
   <td>
   <input style="margin-top: 20px;" type="text"  readonly="readonly"  name="address" value="<s:property value='#cu.address'/>">
   </td>
   
   </tr>
   <tr><td >更改默认地址</td>
  
  <td> <input style="margin-top: 20px;" type="hidden"  name="customer.address" value="">
   <select id="seachprov" name="seachprov" onChange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');"></select>&nbsp;&nbsp;
   <select id="seachcity" name="homecity" onChange="changeCity(this.value,'seachdistrict','seachdistrict');"></select>&nbsp;&nbsp;
   <span id="seachdistrict_div"><select id="seachdistrict" name="seachdistrict"></select></span>
 </td>
   </tr>
   <tr><td >电子邮箱</td>
  <td>  <input style="margin-top: 20px;" type="text" id="eMail" name="customer.eMail" value="<s:property value='#cu.EMail'/>"/></td>
   </tr>
   <tr><td>
   <input style="margin-top: 20px;"  class="button" type="reset" value="恢复初始" onclick="if(!confirm('你确认要初始吗？')) return false;"/></td>
   <td><input style="margin-top: 20px;" class="button" type="submit" value="提交"/></td>
   </table>
   
   </form>
	
	</div>
	</center>	
	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
