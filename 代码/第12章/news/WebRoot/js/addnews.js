function checknews() {
	var title = document.getElementById("title");
	var column = document.getElementById("column");
	var author = document.getElementById("author");
	var editor = document.getElementsByName("EditorDefault")[0];	
	if (title.value == "") {
		alert("请填写新闻标题");
		title.focus();
		return false;
	} else if (column.value == 0) {
		alert("请选择栏目");
		column.focus();
		return false;
	} else if (author.value == "") {
		alert("请填写作者");
		author.focus();
		return false;
	} 
	return true;

}