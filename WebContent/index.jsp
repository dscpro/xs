<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="noIE" lang="en-US"><!--<![endif]-->
<head>
	
	<title>享受网上商城</title>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Favorite Icons -->
	<link rel="icon" href="img/favicon/favicon.html" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/apple-touch-icon-144x144-precomposed.html">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/apple-touch-icon-72x72-precomposed.html">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/apple-touch-icon-precomposed.html">
	<!-- // Favorite Icons -->

	<!-- GENERAL CSS FILES -->
	<link rel="stylesheet" href="css/minified.css">
	<!-- // GENERAL CSS FILES -->
	
	<!--[if IE 8]>
		<script src="js/respond.min.js"></script>
		<script src="js/selectivizr-min.js"></script>
	<![endif]-->
	<!--
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	-->
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>');</script>
	<script src="js/modernizr.min.js"></script>	
	<script src="js/indexsearch.js"></script>	
	<!-- PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<link href="css/flexslider.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/lanrenzhijia.css" type="text/css">
	<!-- // PARTICULAR PAGES CSS FILES -->
	<link rel="stylesheet" href="css/responsive.css">
	<style>
		 .changepic{width:1024px ;height: 100%;}
	     .leftmenu{width:186px;height:500px; }
	 </style>
	 <script type="text/javascript" src="js/lanrenzhijia.js"></script>
	 <SCRIPT type="text/javascript">

function loaddata(){
location.href="good_find.action?pagenow=1";
}
</SCRIPT>
</head>
<body class="home" <s:if test="#session.goodlistload==null">onload="loaddata();"</s:if>>
			
	<!-- PAGE WRAPPER -->
<div id="page-wrapper">

	<!-- SITE HEADER -->
	<header id="site-header" role="banner">
		<!-- HEADER TOP -->
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-7" style="padding-left:50px;">
                       <jsp:include page="top.jsp"></jsp:include>
                       
					</div>
					
				</div>
			</div>
			
		</div>
		<!-- // HEADER TOP -->
		<!-- MAIN HEADER -->
		<div class="main-header-wrapper">
			<div class="container">
				<div class="main-header">
					<!-- CURRENCY / LANGUAGE / USER MENU -->
					<div class="actions">
						<div class="center-xs">
							
							
						</div>
						
						
					</div>
					<!-- // CURRENCY / LANGUAGE / USER MENU -->
					<!-- SITE LOGO -->
					<div class="logo-wrapper">
						<a href="index.jsp" class="logo" title="GFashion - Responsive e-commerce HTML Template">
							<img src="img/logo.png" alt="GFashion - Responsive e-commerce HTML Template" />
						</a>
						 <div id="search-2014" style="width: 500px;"> <!-- 查询 -->
    	<ul id="shelper" class="hide"></ul>
		<div class="form" style="width: 500px;">
			<input  type="text"  autocomplete="off" id="key" accesskey="s" class="text" />
			<button onclick="javascript:search();" class="button cw-icon"><i></i>搜索</button>
		</div>
    </div>
				 <!-- 查询 -->		  <!-- 购物车模块 -->
    <div id="settleup-2014" class="dorpdown" style="margin-left:88px;">
     <img src="images/shoppingcar.png" style="width: 30px;height:30px;"/><a  href="showCarGoods.jsp" target="_blank">我的享受购物车</a>
	<div class="dorpdown-layer">
<div class="spacer"></div>
<!-- 购物车模块显示模块 -->
<div id="settleup-content">
    
	<span class="loading">
	<s:if test="#session.cart != null ">
   <s:iterator value="#session.cart" var="indexcartlist" >
   <s:property value="#indexcartlist.merName"/>
   </s:iterator>
    </s:if>
    <s:else>
	      <img src="images/cartisnull.png" style="width: 50px;height:50px;"/>
          <span>亲，还没购物哦，快去享受吧！</span>
   </s:else>
         
	</span>
</div>
	</div>
</div>
</div>
		 <!-- 购物车模块 -->			
				</div>
				
				
					<!-- 上导航 -->
		 <div id="navitems-2014" style="padding-left:390px;">
		
		<ul id="navitems-group1">
			<li  id="nav-fashion" class="fore1" >
				<a target="_blank" href="ShowGood">服装城</a>
			</li>
			<li  id="nav-beauty" class="fore2" >
				<a target="_blank" href="ShowGood">美妆馆</a>
			</li>
			<li id="nav-chaoshi" class="fore3" >
				<a target="_blank" href="ShowGood">美食</a>
			</li>
			<li id="nav-jdww" class="fore4" >
				<a target="_blank" href="ShowGood">全球购</a>
			</li>
		</ul>
		<div class="spacer"></div>
		<ul id="navitems-group2">
			<li  id="nav-red" class="fore1" >
				<a target="_blank" href="ShowGood">闪购</a>
			</li>
			<li id="nav-tuan" class="fore2" >
				<a target="_blank" href="ShowGood">团购</a>
			</li>
			<li id="nav-auction" class="fore3" >
				<a target="_blank" href="ShowGood">夺宝岛</a>
			</li>
			<li  id="nav-jr" class="fore4" >
				<a target="_blank" href="ShowGood">金融</a>
			</li>
			<li id="nav-auction" class="fore1" >
				<a target="_blank" href="ShowGood">智能</a>
			</li>
		</ul>
    </div>
		
		
		<!-- 上导航 -->
		<!-- 左导航 -->
		<div class="leftmenu">
		
		
		<div class="nav-wrap">
  <div class="nav">
    <div class="goods">
      <div>
        <h2 style="background:#B1191A;"> <a href="javascript:void(0);" >商品分类</a> </h2>
      </div>
      <div class="all-goods">
     
      
   
        <s:iterator value="{'one','two','three','four','five','six','seven','eight','nine','ten','ten','ten'}">
            
        <div class=' <s:if test="#status.count==0"> item btnone </s:if><s:else> item</s:else>'>
          <div class="product">
            <h3> <a href="ShowGood?cate=" target="_blank"> <!-- 循环显示分类名 --></a> </h3>
            <s></s> </div>
          <div class='product-wrap pos<s:property/>'> 
            
            <div class="cf">
              <div class="fl wd252 pr20">
                <h2><a href="ShowGood?cate=" target="_blank"></a></h2>
                <p class="lh30">特卖</p>
                <ul class="cf">
                 
                 
                 
                 
                  <li> <a href="ShowOneGood?onegoodid=" target="_blank"></a> </li>
                  
                
                </ul>
              </div>
              <dl class="fl wd185 pl20 blee">
                <dt class="lh36">促销活动</dt>
                <dd id="xcdads"><a href="ShowOneGood?onegoodid=" target="_blank" ><img src=""></a></dd>
              </dl>
            </div>
          </div>
        </div>
      </s:iterator>
      </div>
    </div>
    
  </div>
</div>
			<!-- 左导航 -->
		
		<!-- HOMEPAGE SLIDER -->
		<div id="home-slider" class ="changepic" >
			<div class="flexslider">
	<ul class="slides">
		<!-- THE FIRST SLIDE -->
		<li>
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="images/bg1.jpg" alt="" class ="changepic"/>
			
			<!-- THE CAPTIONS OF THE FIRST SLIDE -->
			<div class="flex-caption h6 text-bold gfc uppercase animated"
			data-animation="fadeInLeftBig"
			data-x="800"
			data-y="110"
			data-speed="600"
			data-start="1200">新品上市</div>
			
			<div class="flex-caption herotext text-bold gfc animated"
			data-animation="fadeInRightBig"
			data-x="580"
			data-y="140"
			data-speed="900"
			data-start="2000">男士必备</div>
			
			<div class="flex-caption h6 text-bold gfc text-center animated"
			data-animation="fadeInDown"
			data-x="639"
			data-y="260"
			data-speed="1600"
			data-start="2900">
				无惧气质挑战<br/>
				<a href="#" class="btn btn-primary uppercase">马上购买</a>
			</div>
			
		</li>
		
		<!-- THE SECOND SLIDE -->
		<li style="background: #fa6f57;">
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="images/bg3.jpg" alt="" class ="changepic" />
			
			<div class="flex-caption super-giant gfc animated uppercase"
			data-animation="fadeInUp"
			data-x="center"
			data-y="60"
			data-speed="500"
			data-start="900">Sale</div>

			<div id="caption-left-round" class="flex-caption round gfc animated uppercase"
			data-animation="fadeInLeftBig"
			data-x="140"
			data-y="60"
			data-speed="600"
			data-start="1200"><div class="vmid"><span>手机<br/>特卖</span></div></div>

			
			<div class="flex-caption h3 gfc animated uppercase"
			data-animation="fadeInDown"
			data-x="center"
			data-y="250"
			data-speed="400"
			data-start="1800"><strong class="text-bold">500’s </strong>of New Products</div>

		</li>
		
		<!-- THE SECOND SLIDE -->
		<li>
			<!-- THE MAIN IMAGE IN THE SLIDE -->
			<img src="images/bg2.jpg" alt="" class ="changepic"/>
			
			<div class="flex-caption herotext text-bold gfc bg-dark animated uppercase"
			data-animation="fadeInUpBig"
			data-x="325"
			data-y="60"
			data-speed="900"
			data-start="100">Free Shipping</div>
			
			<div class="flex-caption h2 text-bold gfc bg-dark animated uppercase"
			data-animation="fadeInUpBig"
			data-x="380"
			data-y="175"
			data-speed="600"
			data-start="900">On Order over $2.000</div>
			
		</li>
		
	</ul>
</div>

<script>
	jQuery(function($) {
		var $slider = $('#home-slider > .flexslider');
		$slider.find('.flex-caption').each(function() {
			var $this = $(this);
			var configs = {
				left: $this.data('x'),
				top: $this.data('y'),
				speed: $this.data('speed') + 'ms',
				delay: $this.data('start') + 'ms'
			};
			if ( configs.left == 'center' && $this.width() !== 0 ) 
			{
				configs.left = ( $slider.width() - $this.width() ) / 2;
			}
			if ( configs.top == 'center' && $this.height() !== 0 ) 
			{
				configs.top = ( $slider.height() - $this.height() ) / 2;
			}
			
			$this.data('positions', configs);
			
			$this.css({
				'left': configs.left + 'px',
				'top': configs.top + 'px',
				'animation-duration': configs.speed,
				'animation-delay': configs.delay
			});
		});
		
		$(window).on('resize', function() {
			var wW = $(window).width(),
				zoom = ( wW >= 1170 ) ? 1 : wW / 1349;
			$('.flex-caption.gfc').css('zoom', zoom);
		});
		$(window).trigger('resize');
		
		
		
		$slider.imagesLoaded(function() {
			$slider.flexslider({
				animation: 'slide',
				easing: 'easeInQuad',
				slideshow: false,
				nextText: '<i class="iconfont-angle-right" ></i>',
				prevText: '<i class="iconfont-angle-left"></i>',
				start: function() {
					flex_fix_pos(1);
				},
				before: function(slider) {
					// initial caption animation for next show
					$slider.find('.slides li .animation-done').each(function() {
						$(this).removeClass('animation-done');
						var animation = $(this).attr('data-animation');
						$(this).removeClass(animation);
					});
					
					flex_fix_pos(slider.animatingTo + 1);
				},
				after: function() {
					// run caption animation
					$slider.find('.flex-active-slide .animated').each(function() {
						var animation = $(this).attr('data-animation');
						$(this).addClass('animation-done').addClass(animation);
					});
				}
			});
		});
		
		
		function flex_fix_pos(i) {
			$slider.find('.slides > li:eq(' + i + ') .gfc').each(function() {
				var $this = $(this),
					pos = $(this).data('positions');
					
				if ( pos.left == 'center' )
				{
					pos.left = ( $slider.width() - $this.width() ) / 2;
					$this.css('left', pos.left + 'px');
					$this.data('positions', pos);
				}
				if ( pos.top == 'center' )
				{
					pos.top = ( $slider.height() - $this.height() ) / 2;
					$this.css('left', pos.top + 'px');
					$this.data('positions', pos);
				}
			});
		}
	});
</script>		</div>
		
		
		
		
			</div>
		</div>
		
			
		</div>
		<!-- // MAIN HEADER -->
		
	</header>
	
	
		
		
		<!-- // HOMEPAGE SLIDER -->
		
		<!-- SITE MAIN CONTENT -->
		<main id="main-content" role="main">
			
			
			<!-- NEW ARRIVAL PRODUCTS -->
			<section class="section new-arrivals visible-items-5">
				<div class="container">
					<div class="row">
						<header class="section-header clearfix col-sm-offset-3 col-sm-6">
							<h3 class="section-title">享受精品</h3>
							<p class="section-teaser">绝对超值，绝对享受</p>
						</header>
						
						<div class="clearfix"></div>
						
						<!-- BEGIN CAROUSEL -->
						<div id="new-arrivals-products" class="add-cart" data-product=".product" data-thumbnail=".entry-media .thumb" data-title=".entry-title > a" data-url=".entry-title > a" data-price=".entry-price > .price">
						
							<div class="owl-controls clickable outside">
								<div class="owl-buttons">
									<div class="owl-prev"><i class="iconfont-angle-left"></i></div>
									<div class="owl-next"><i class="iconfont-angle-right"></i></div>
								</div>
							</div>
							
							<br><br><div class="owl-carousel owl-theme" data-visible-items="5" data-navigation="true" data-lazyload="true">
								
								
								<s:iterator value="#session.goodlistload" var="good"> 
								
							     <div class="product" data-product-id="16">
									<div class="entry-media">
									
										<img src="<s:property value='#good.picture'/>" alt="" class="lazyOwl thumb" style="width: 361px;height: 348px;"/>
										<div class="hover">
											
											<ul class="icons unstyled">
												<li>
													<a href="" class="circle" data-toggle="lightbox"><i class="iconfont-search"></i></a>
												</li>
												<li>
													<a href="cart_addToCar.action?goodid=<s:property value='#good.id'/>" target="view_window" class="circle add-to-cart"><i class="iconfont-shopping-cart"></i></a>
												</li>
											</ul>
											<div class="rate-bar">
												<input type="range" value="5" step="0.5" id="backing16" />
												<div class="rateit" data-rateit-backingfld="#backing16" data-rateit-starwidth="12" data-rateit-starheight="12" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5"></div>
											</div>
										</div>
									</div>
									<div class="entry-main">
										<h5 class="entry-title">
											<a href="good_loadOneGood.action?id=<s:property value='#good.id'/>" target="_blank"><s:property value='#good.merName'/></a>
										    
										</h5>
										<div class="entry-price">
											<strong class="price"></strong>
											<a href="cart_addToCar.action?goodid=<s:property value='#good.id'/>" target="view_window">加入购物车</a>
											
										</div>
									</div>
								</div>
								</s:iterator>
								
							</div>
							
						</div>
						<!-- // END CAROUSEL -->
						
					</div>
				</div>
			</section>
			<!-- // NEW ARRIVAL PRODUCTS -->
			
		</main>
		<!-- // SITE MAIN CONTENT -->
				
		<!-- SITE FOOTER -->
	<footer class="page-footer">
		
		<!-- WIDGET AREA -->
		<div class="widgets">
		
			<!-- FIRST ROW -->
			<div class="section" style="padding-left:300px;">
				<div class="container">
					<div class="row">
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">享受购物</h5>
								<div class="widget-content">
									<p>一、登录享受网 二、成功注册会员	三、立刻享受购物乐趣  四、完善的售后服务  五、安全可靠支付模式</p>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-text">
								<h5 class="widget-title">开放时间</h5>
								<div class="widget-content">
									<p>周一到周五:-------------------------9.00 到 18.00</p>
									<p>周六:--------------------------------10.00 到 21.00</p>
									<p>周日:----------------------------------10.00 到 19.00</p>
									<br/>
									<p>每月三号为享受会员日</p>
								</div>
							</section>
						</div>
						
						<div class="space40 visible-sm clearfix"></div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							<section class="widget widget-menu">
								<h5 class="widget-title">享受相关</h5>
								<div class="widget-content">
									<ul class="menu iconed-menu unstyled">
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>部门隶属</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>商品运送</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>商城支持</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>售后服务</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>安全支付</a></li>
										<li><a href="#"><i class="iconfont-circle-blank menu-icon"></i>相关条款</a></li>
									</ul>
								</div>
							</section>
						</div>
						
						<div class="col-xs-12 col-sm-6 col-md-3">
							
						</div>
						
					</div>
				</div>
			</div>
			<!-- // FIRST ROW -->
			
			
		</div>
		<jsp:include page="footer.jsp"></jsp:include>

<!-- Essential Javascripts -->
<script src="js/minified.js"></script>
<!-- // Essential Javascripts -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27646173-3', 'themina.net');
  ga('send', 'pageview');

</script>
	<!-- Particular Page Javascripts -->
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- // Particular Page Javascripts -->
	
	
			<script type="text/javascript"><!--
			var w = 90;
			var h = 100;
			var str = "";
			var obj = document.getElementById("divStayTopLeft");
			if (obj)str = obj.innerHTML;
			if( typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat'){
			document.writeln('<DIV  style="z-index:999;right:0;bottom:0;height:'+h+'px;width:'+w+'px;overflow:hidden;POSITION:fixed;_position:absolute; _margin-top:expression(document.documentElement.clientHeight-this.style.pixelHeight+document.documentElement.scrollTop);">');
			}
			else {
			document.writeln('<DIV  style="z-index:999;right:0;bottom:0;height:'+h+'px;width:'+w+'px;overflow:hidden;POSITION:fixed;*position:absolute; *top:expression(eval(document.body.scrollTop)+eval(document.body.clientHeight)-this.style.pixelHeight);">');
			}
			document.writeln('<div style="clear:both;margin:auto;height:60px;font-size:16px;overflow:hidden;font-weight:bold;text-align:left;"><a href="javascript:scroll(0,0)" hidefocus="true"><img src="images/return.gif" alt="回到顶部" style="border: 0px;z-index:999;" /></a></div> ');
			document.write('<div style="clear:both;margin:auto;overflow:hidden;text-align:left;">'+str+'</div>');
			document.writeln('</DIV>');
			-->
			</script>
</body>
</html>