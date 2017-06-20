function search(){
	    blur = document.getElementById("key").value;
	    href = encodeURI("ShowGood?blur="+encodeURI(blur)+"&&page=1");
	    //alert(blur);
		if(blur.length>0){
		//	alert(blur);
			location.href=href;
		}else{
		alert("请输入您要查询的商品！");
		}
  }