<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/adminleft.css">

 <table 
style="float: left;" width="10%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top">
    <div id="container">
      <h1 class="type"><span>网站常规管理</span></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="admin/baseCl.jsp" target="_self">基本设置</a></li>
         
        </ul>
      </div>
      <h1 class="type"><span>商品管理</span></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          
          <li><a href="admincate_find.action" target="_self">添加商品</a></li>
          <li><a href="admingood_findPage.action?pagenow=1" target="_self">商品管理</a></li>
          
		  
		  <li><a href="admin/adminAddCategory.jsp" target="_self">添加商品分类</a></li>
	      <li><a href="admincate_findPage.action?pagenow=1" target="_self">商品分类管理</a></li>
		

        </ul>
      </div>
     
      <h1 class="type"><span>会员管理</span></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          
          <li><a href="admincustomer_findPage.action?pagenow=1" target="_self">查看会员</a></li>
         
        </ul>
      </div>
      <h1 class="type"><span>订单管理</span></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          
          <li><a href="adminorders_findPageByAdmin.action?pagenow=1" target="_self">查看订单</a></li>
         
        </ul>
      </div>
   <h1 class="type"><span>系统管理</span></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          
          <li><a href="admin/adminAddAdministrators.jsp" target="_self">添加管理员</a></li>
          <li><a href="admin_findPage.action?pagenow=1" target="_self">管理员管理</a></li>
          
        </ul>
      </div>
   </div> 
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
