function validateCode() {
	

	var xmlhttp = null;
	if (window.XMLHttpRequest) {// code for Firefox, Opera, IE7, etc.
		xmlhttp = new XMLHttpRequest();
	} else if (window.ActiveXObject) {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	var nickname = document.getElementById("user").value;
	nickname = encodeURI(encodeURI(nickname));
	var code = document.getElementById("comm").value;
	var content = document.getElementById("content").value;
	content = encodeURI(encodeURI(content));
	if (xmlhttp != null) {
		xmlhttp.onreadystatechange = state_Change;
		// xmlhttp.open("GET","updateCol.jsp?columntitle="+v1+"&column_desc="+v2+"&id="+id+"&random="+Math.random(),true);
		xmlhttp.open("GET",
				"validateCodeActions?vCode=" + code + "&nickname=" + nickname
						+ "&content=" + content + "&random=" + Math.random(),
				true);
		xmlhttp.send(null);
	} else {
		alert("Your browser does not support XMLHTTP.");
	}
	function state_Change() {
		if (xmlhttp.readyState == 4) {// 4 = "loaded"
			// alert("测试结果！");
			if (xmlhttp.status == 200) {
				alert(xmlhttp.responseText);
			}
		}
	}
}
