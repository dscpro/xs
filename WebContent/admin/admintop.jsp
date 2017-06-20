<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<meta http-equiv=Content-Type content=text/html;charset=utf-8>

<link rel="shortcut icon" href="images/admin.png" type="image/png" />
<base target="main">
<link href="css/skin.css" rel="stylesheet" type="text/css">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><a target="_blank" href="admin/adminuse.jsp"><img src="images/logohoutai.png" width="262" height="64"></a></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt"><b><s:property value="#session.admin.name"/> </b> 您好,感谢登陆使用！<a href="admin/adminuse.jsp" target="_self">返回管理主页</a></td>
        
        <td width="22%"><a href="admin_exitLogin.action" target="_self" onClick=""><img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>

