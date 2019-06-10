function del() {
	return confirm("真的要删除该栏目吗？");
}

function edit(obj) {
	var tr = obj.parentNode.parentNode; // 获取行节点
	var input = document.createElement("input");
	var input2 = document.createElement("input");
	var nodes = tr.getElementsByTagName("td"); // 根据td标签获取该行所有的孩子节点
	nodes[3].getElementsByTagName("img")[1].src = "../images/gx2.gif";
	input.type = "text";
	input2.type = "text";
	input.style.background = "#FF9900";
	input2.style.background = "#FF9900";
	input.value = nodes[1].innerHTML;
	input2.value = nodes[2].innerHTML;
	nodes[1].innerHTML = "";
	nodes[2].innerHTML = "";
	nodes[1].appendChild(input);
	nodes[2].appendChild(input2);
	obj.onclick = ( function(o) {
		return function() {
			submit(o);
		}
	})(obj);
}

function submit(obj)
{	
			var tr = obj.parentNode.parentNode;
			var nodes = tr.getElementsByTagName("td");
			var input1 = nodes[1].getElementsByTagName("input")[0];
			var input2 = nodes[2].getElementsByTagName("input")[0];
			var id = nodes[0].innerHTML;
			var v1 = input1.value;
			var v2 = input2.value
			nodes[1].removeChild(input1);
			nodes[2].removeChild(input2);
			nodes[1].innerHTML = v1;
			nodes[2].innerHTML = v2;
			nodes[3].getElementsByTagName("img")[1].src = "../images/gx.gif";
			v1 = encodeURI(encodeURI(v1));
			v2 = encodeURI(encodeURI(v2));
			dataAction(v1, v2, id);
			
}

function dataAction(v1, v2, id) {
	var xmlhttp = null;
	if (window.XMLHttpRequest) {// code for Firefox, Opera, IE7, etc.
		xmlhttp = new XMLHttpRequest();
	} else if (window.ActiveXObject) {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	// alert(xmlhttp);
	if (xmlhttp != null) {
		xmlhttp.onreadystatechange = state_Change;
		// xmlhttp.open("GET","updateColAction?columntitle="+v1+"&column_desc="+v2+"&id="+id+"&random="+Math.random(),true);
		xmlhttp.open("GET", "updateColAction?columntitle=" + v1 + "&column_desc="
				+ v2 + "&id=" + id+"&random="+Math.random(), true);
		xmlhttp.send(null);
	} else {
		alert("Your browser does not support XMLHTTP.");
	}

	function state_Change() 
	{
		if (xmlhttp.readyState == 4) 
		{// 4 = "loaded"
			// alert("测试结果！");
			if (xmlhttp.status == 200) 
			{
				alert("更新成功！");
			} 
			else 
			{
				alert("更新失败！");
			}
		}
	}
}

function checkfrm() {
	var column_name = document.getElementsByName("column_name")[0];
	var column_desc = document.getElementsByName("column_desc")[0];
	if (column_name.value == "") {
		alert("请填写栏目名称");
		column_name.focus();
		return false;
	} else if (column_desc.value == "") {
		alert("请填写栏目介绍");
		column_desc.focus();
		return false;
	}
	return true;
}
