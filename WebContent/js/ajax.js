var xhr;
	var outMsg = "";
	
	//-----------------获得XMLHttpRequest对象---------------------------
	function createXMLHttpRequest() {
		try {
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
	    }catch(e) {
			try {
				xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e) {
				try {
					xhr = new XMLHttpRequest();
				}catch(e) {
				}
			}
		}
	}
	
	//-------------------------------------------------------------
	function createQUeryString() {
		var userName = document.getElementById("name").value;
		var queryString = "name="+userName;
		return queryString;
	}
	
	function doRequest() {
		//alert("ajax");
		createXMLHttpRequest();//获得XMLHttpRequest对象
		var queryString = "AjaxRe?";
		queryString = queryString+createQUeryString();
		xhr.onreadystatechange = handleStateChange;//定义事件处理器，此处理器将在服务器端返回数据时自动被触发执行
		xhr.open("POST",queryString,true);//与服务器连接并发送
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
		xhr.send(null);
	}

	
	function handleStateChange() {
		if(xhr.readyState==4) {//4表示数据已经调用完成
			if(xhr.status==200) {//HTTP的状态码
				parseResults();
			}
		}
	}
	
	function parseResults() {
		var responseDiv = document.getElementById("serverResponse");//获得Div对象的元素
		if(responseDiv.hasChildNodes()) {
			responseDiv.removeChild(responseDiv.childNodes[0]);
		}
		var responseText  = document.createTextNode(xhr.responseText);
		responseDiv.appendChild(responseText);
	}