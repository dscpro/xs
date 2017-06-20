<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<style type="text/css">


.footer{
	background:;
	padding:2em 0;
	text-align:center;
}
.footer img{
	display:inline-block;
}
ul.footer_nav{
	padding:0;
	margin:1em 0;
	list-style:none;
}
ul.footer_nav li{
	display:inline-block;
}
ul.footer_nav li a{
	color:#886C58;
	font-size:0.8125em;
	margin:0 10px;
	font-weight:500;
}
ul.footer_nav li a:hover{
	text-decoration:none;
	color: #ee4a02;
}
</style>

<div class="footer">
	<div class="container">
		<ul class="footer_nav">
		  <li><a href="index.jsp">Home</a></li>
		  <li><a href="#">Shop</a></li>
		  <li><a href="#">Media</a></li>
		  <li><a href="#">Features</a></li>
		  <li><a href="Dsc.jsp">Contact Us</a></li>
		</ul>
		<p class="copy">Copyright&copy; 2015 Template by DSC </p>
	</div>
</div>
