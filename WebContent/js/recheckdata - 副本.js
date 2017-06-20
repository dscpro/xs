$(function (){
	initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '0', '0', '0');
});

//得到地区码
function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;
	//alert("您选择的地区码：" + areaID + "      地区名：" + areaName);  
	return areaName;      
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID.length == 2){
		areaName = area_array[areaID];
	}else if(areaID.length == 4){
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}else if(areaID.length == 6){
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	return areaName;
}

	function checkdata(){
	 var value =showAreaID();
	 document.myform.address.value=value;
	 if(value.length!=0){
	 //地址已选择
	loginPwd = document.myform.loginPwd.value;
	//alert(loginPwd);
	if(loginPwd.length>6){
	   //登录密码ok
	    phone = document.myform.phone.value;
	   // alert(loginPwd);
	    if(phone.length==11){
	    //手机号正确
	    var reg = /^0?1[3|4|5|8|7][0-9]\d{8}$/;//匹配13，14，15，18开头的手机号码！
	    if (reg.test(phone)) {
	    //手机号格式正确
          // alert("号码正确~");
       var regex = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;;  
         eMail = document.myform.eMail.value;
     //alert(eMail);
    // alert(regex.test(eMail));
          if(regex.test(eMail)){
               //邮箱格式正确
               return true;
               
                   
          }else{
              alert("请输入正确的电子邮箱");
              return false;
          }
          
          
          }else{
             alert("号码有误~");
              return false;
         }
	    
	    }else{
	    alert("请输入正确的手机号！");
	    return false;
	    }
	
	}else{
	alert("密码过于简单！建议应大于6位");
	return false;
	}
	}else{
	alert("请选择地址！");
	return false;	
	}
	
	}
	