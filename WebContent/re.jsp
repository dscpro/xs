<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>享受注册</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">		
	<link rel="stylesheet" type="text/css" href="css/re_style.css">
	
	<script type="text/javascript" src="js/cuCheckLogin.js"></script>
		<script type="text/javascript">  
		<!--  
		  function reloadcode(obj,base){  
		  var rand=new Date().getTime(); //这里用当前时间作为参数加到url中，是为了使URL发生变化，这样验证码才会动态加载，  
		            //只是一个干扰作用，无确实意义，但却又非常巧妙，呵呵  
		  obj.src=base+"randomCode.action?abc="+rand; //其实服务器端是没有abc的字段的。  
		  }  
		//-->  
       </script>  
       
	</head>
	<body>
	<jsp:include page="top.jsp"></jsp:include>	
	<div class="re_body" style="height: 500px;">
	<div style="padding-left:200px;padding-top:20px;">
	<img src="img/logo.png" id="logoimg"/>
	</div>	
		<div style="top:100px;left:545px; width: 300px; height: 400px;position:absolute;">
		 <form name= "myform" method="post" action="customer_save.action" OnSubmit="return checkdata();">
			
			<p>登录账号：<input id="loginName" name="customer.loginName" type="text" onpaste="return false" oncontextmenu = "return false"  autocomplete="off" onblur="checkNameNull();"/>
			</br>
			<span id="serverResponse" style="color:red;"></span>
			</p>
					        </br>
		          用户名：<input id="yname" name="customer.name" type="tezt" onpaste="return false" oncontextmenu = "return false" onblur="checkYnameNull();"/><p>
			<span id="yzpw" style="color:red;"></span>
					 </br>
			密码：<input id="psd" name="customer.loginPwd" type="password" onpaste="return false" oncontextmenu = "return false" onblur="checkPwNull();"/><p>
			<span id="yzpw" style="color:red;"></span>
					 </br>
			确认密码：<input id="conpsd" name="conpsd" type="password" onpaste="return false" oncontextmenu = "return false" onblur="checkPwNull();"/><p>
			
			<!--<input style="width:100px" type="text" name="yzm" placeholder="验证码" autocomplete="off"/>
			<img id="img1" name="img1" src="img1.jsp"  alt=""/>  
            <a onclick="JavaScript:reloadImage();" href="javascript:void(0);">看不清楚</a>  </br>
            
			-->
			<!-- </br>
			<p>
			 验证码：<input style="width: 150px;height: 42px;" type="text" name="chknumber" id="chknumber" maxlength="4" class="chknumber_input"  onblur="checkRandomCodeNull();">  
            <img title="看不清楚请点击这里" style="width: 70px;height: 35px" src="<%=basePath%>randomCode.action" id="safecode" onclick="reloadcode(this,'<%=basePath%>')" />
			
			<input id="randomCode" value="<s:property value='#session.randomCode'/>" type="hidden" />
		
			-->
			<input id="submit" name="submit" class="button" value="提交" type="submit" />
			</form>		
		
		</div>	
		
	 </div>
<jsp:include page="footer.jsp"></jsp:include>
	 <!--<script>function checkdata(){
     
    
        //alert(rand);
        pw1=document.myform.psd.value;
        pw2=document.myform.conpsd.value ;
        y= document.myform.yzm.value;
        if(pw1==pw2){
        if(rand==y.toLowerCase() ){
        return true;
        }else{
        alert("验证码不对！");
        location.reload();
        return false;
        }
        }else{
        alert("两次密码不同！");
        location.reload();
        return false;
        }
    }</script>
	 --></body>
</html>
