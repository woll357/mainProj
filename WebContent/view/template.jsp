<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="" width = 1500px height = 600px;>
	<tr>
		<td><jsp:include page="inc/top.jsp" /></td> 
	</tr>
	<tr>
		<td><jsp:include page="inc/logo.jsp" /></td>
	</tr>
	<tr>
		<td><jsp:include page="inc/subMenu.jsp" /></td>
	</tr>
	<tr>
		<td><jsp:include page="${mainUrl }" /></td>
	</tr>
		<tr>
		<td><jsp:include page="inc/bottom.jsp" /></td>
	</tr>
</table>
</body>
</html>