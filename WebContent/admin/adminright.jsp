<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>

<table width="85%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">欢迎界面</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">感谢您使用 享受网上商城 管理系统程序</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="images/ts.gif" width="16" height="16"> 提示：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您现在使用的是享受网上商城管理系统。如果您有任何疑问请点左下解的</span><span class="left_ts">在线客服</span><span class="left_txt">进行咨询！<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">最新动态</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><!--JavaScript部分-->
              <SCRIPT language=javascript>
function secBoard(n)
{
	//alert(n);
	x = document.getElementsByName("cells");
	y = document.getElementsByName("tBodies");
	//alert(x);
for(i=0;x.lenght!=0;i++){
x[i].className="sec1";
x[n].className="sec2";
y[i].style.display="none";
y[n].style.display="block";
}
}
          </SCRIPT>
              <!--HTML部分-->
              <TABLE  width=72% border=0 cellPadding=0 cellSpacing=0 id=secTable>
                <TBODY >
                  <TR align=middle height=20>
                   
                    <TD  name="cells"align="center" class="sec2" onclick="javascript:secBoard(0);">统计信息</TD>
                    <TD name="cells" align="center" class="sec1" onclick="javascript:secBoard(1);">系统参数</TD>
                    <TD name="cells" align="center" class="sec1" onclick="javascript:secBoard(2);">版权说明</TD>
                  </TR>
                </TBODY>
              </TABLE>
          <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
                <!--关于TBODY标记-->
					
                <!--关于cells集合-->
                <TBODY style="DISPLAY: block;min-height:248px;"  name="tBodies">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="200" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="28" ></TD>
                            <TD colspan="2"  class="left_txt">现有会员：名&nbsp;&nbsp; </TD>
                          </TR>
                          <TR>
                            <TD bgcolor="">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor=""><span class="left_txt">本站现有商品分类信息： </span><span class="left_txt">条</span></TD>
                            
                          </TR>
                          <TR>
                            <TD bgcolor="">&nbsp;</TD>
                            <TD height="25" bgcolor=""><span class="left_txt">本站现有商品： </span><span class="left_txt">件</span></TD>
                           
                          </TR>
                         
                          
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--关于tBodies集合-->
                <TBODY style="DISPLAY: none;min-height:248px;"  name="tBodies">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="25" ></TD>
                            <TD height="25" colspan="2"  class="left_txt"><span class="TableRow2">服务器IP:</span>系统版本：2.1</TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="">&nbsp;</TD>
                            <TD width="45%" height="25" bgcolor=""><span class="left_txt">服务器类型：Apache</span></TD>
                            <TD width="66%" height="25" bgcolor=""><span class="left_txt">脚本解释引擎：JavaScript</span></TD>
                          </TR>
                          
                          <TR>
                            <TD height="25" bgcolor="">&nbsp;</TD>
                            
                            <TD height="25" bgcolor=""><span class="left_txt">数据库使用：</span><span class="left_ts"><b style="color:blue">  
                            Oracle</b></span></TD>
                          </TR>
                         
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR> 
                </TBODY>
                <!--关于display属性-->
                <TBODY style="DISPLAY: none;min-height:248px;"  name="tBodies">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%"	></TD>
                            <TD width="91%"  class="left_ts">程序说明：</TD>
                            <TD width="5%"  class="left_txt">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="">&nbsp;</TD>
                            <TD bgcolor="" class="left_txt"><span class="left_ts">1、</span>本程序由dsc全新改造(QQ:1318177424) </TD>
                            <TD  class="left_txt">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="">&nbsp;</TD>
                            <TD bgcolor="" class="left_txt"><span class="left_ts">4、</span>程序使用，技术支持请联系1318177424@qq.com。</TD>
                            <TD bgcolor="" class="left_txt">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
            </TABLE></td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="images/news-title-bg.gif"><img src="images/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="images/news-title-bg.gif" class="left_bt2">享受网上商城</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>
              <textarea name="textarea" cols="48" rows="8" class="left_txt">
			  一、登录享受网
			  二、成功注册会员
			  三、立刻享受购物乐趣
			  四、完善的售后服务
			  五、安全可靠支付模式
			  一、登录享受网
			  二、成功注册会员
			  三、立刻享受购物乐趣
			  四、完善的售后服务
			  五、安全可靠支付模式
			  一、登录享受网
			  二、成功注册会员
			  三、立刻享受购物乐趣
			  四、完善的售后服务
			  五、安全可靠支付模式
			  </textarea>
              </label></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="40" colspan="4"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="51%" class="left_txt"><img src="images/icon-mail2.gif" width="16" height="11"> 客户服务邮箱：1318177424@qq.com<br>
              <img src="images/icon-phone.gif" width="17" height="14"> 官方网站：http://www.xs.com</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>

