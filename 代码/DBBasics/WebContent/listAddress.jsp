<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,example.bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示数据</title>
</head>
<body>

	<%
		List<Address> listAddress = (List<Address>) request.getAttribute("listAddress");
	%>

	<table border="1" style="width:100%">
		<tr>
			<th>AddressID</th>
			<th>AddressLine1</th>
			<th>City</th>
			<th>StateProvinceID</th>
			<th>PostalCode</th>
		</tr>
		<%
			for (int i = 0; i < listAddress.size(); i++) {
				Address address = (Address) listAddress.get(i);
		%>
		<tr>
			<td><%=address.getAddressID()%></td>
			<td><%=address.getAddressLine1()%></td>
			<td><%=address.getCity()%></td>
			<td><%=address.getStateProvinceID()%></td>
			<td><%=address.getPostalCode()%></td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>