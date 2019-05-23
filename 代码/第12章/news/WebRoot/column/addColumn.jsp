<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/column.js"></script>
</head>
<body>
<div style="width:600px; margin:0 auto; border:0; height:120px;">
<fieldset>
<legend>添加栏目模块</legend>
<br />
<form action="addColumnAction" method="post">
<table border="0" align="center">
  <caption>
    添加栏目
  </caption>
  <tr>
    <td>栏目名称：</td>
    <td><label>
      <input type="text" name="column_name" />
    </label></td>
  </tr>
  <tr>
    <td>栏目介绍：</td>
    <td><label>
      <input type="text" name="column_desc" />
    </label></td>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;
   <label>
      <input type="reset" name="Submit" value="重填" />
    </label>
   </td>
    <td>&nbsp;&nbsp;<label>
      <input type="submit" name="Submit" value=" 添加 " onclick="return checkfrm();" />
    </label></td>
    </tr>
</table>
</form>
</fieldset>
</div>
</body>
</html>