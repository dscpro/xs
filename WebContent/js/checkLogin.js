function check(){
	   uname = document.myform.username.value;
	   upw = document.myform.userpassword.value;
	   if(uname.length!=0){
	     if(upw.length!=0)
	     return true;
	     else{
	     alert("密码不能为空！");
	     location.reload();
	     return false;
	     }
	   }	      
	   else{
	   alert("用户名不能为空！");
	   location.reload();
	   return false;
	   }
	   
	  }