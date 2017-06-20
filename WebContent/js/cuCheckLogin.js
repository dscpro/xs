
//	function reloadImage()       
 //   {        
 //   document.getElementById("img1").src = "img1.jsp?t="+new Date().getTime();;
   // alert(document.getElementById("img1").src);
   
   // }  
  //  
    function checkNameNull(){
      name = document.myform.loginName.value;
     // alert(name);
       if(name.length!=0){
	   doRequest();
	     return ;
	   }	      
	   else{
	   alert("登录账号不能为空！");
	   }
    }
    function checkYnameNull(){
        name = document.myform.yname.value;
       // alert(name);
         if(name.length!=0){
  	   
  	     return ;
  	   }	      
  	   else{
  	   alert("用户名不能为空！");
  	   }
      }
   
    function checkRandomCodeNull(){
        name = document.myform.chknumber.value;
       // var id = '<%=Session["UserName"] %>';
       //alert(id);
         if(name.length!=0){  	   
  	     return ;
  	   }	      
  	   else{
  	   alert("验证码不能为空！");
  	   }
      }
	 function checkPwNull(){
	   str=document.myform.psd.value;
	   //alert(pw1);
       if(str.length!=0){
    	 if(str.length>=6){
    	 //alert(/[^0-9a-z]/g.test(pw1));
    	   //alert(/^[a-zA-Z0-9\u4e00-\u9fa5]/+$.test(pw1));
    	//   var reg= /^(([a-z]+[0-9]+)|([0-9]+[a-z]+))[a-z0-9]*$/i ;
           //  var reg=/[^0-9a-z]/g;
           // alert(!isNaN(pw1));
    	   if(str.length<8||!/[0-9]+/.test(str)||!/[a-zA-Z]+/.test(str)||!/[^0-9a-zA-Z]/.test(str)){
    	       alert("为保证您的安全，密码建议含有数字、字母及符号等");
    		   return false;
    	   }else{    		    
    		  
    		   return true;
    		//   document.getElementById("yzpw").innerText("密码为数字和小写字母组成");
    		   //var responseDiv =  document.getElementById("yzpw"); 
    		  // alert(responseDiv);
    		   //if(responseDiv.hasChildNodes()) {
    			//	responseDiv.removeChild(responseDiv.childNodes[0]);
    			//}
    		  // responseDiv.appendChild("密码为数字和小写字母组成");
    	   }
    	 }else{
    		 
    		 alert("当前密码过于简单！建议应大于6位！");
    		 return false;
    	 }
    	 }	      
	   else{
	   alert("密码不能为空！");
	   return false;
	   }
	 }
    function checkdata(){
        //alert(rand);
        pw1=document.myform.psd.value;
        pw2=document.myform.conpsd.value ;
        //y= document.myform.yzm.value;
        var flag =checkPwNull();
      //  alert(flag);
        if(flag){
        if(pw1==pw2){
        	serverResponse = document.getElementById("serverResponse").innerHTML;
       // alert(serverResponse);
        	if(serverResponse==恭喜可以注册){
        		return true;
        	}
        	else{
        		alert("此登录账号不可用！");
        		return false;
        	}
       // if(rand==y.toLowerCase() ){
        
       // }else{
       // alert("验证码不对！");
        //location.reload();
        //return false;
       // }
        }else{
        alert("两次密码不同！");
      //  location.reload();
        return false;
        }
    }else{
    	
    	alert("为保证您的安全，密码建议含有数字、字母及符号等");
      //  location.reload();
        return false;
    }
}