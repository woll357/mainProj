<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>비행기 목록</h1>
<form action="airap_codeReg">
	<table border="" >	
		<tr>
			<td colspan="7">비행기 코드</td>
			<td><input type="text" name="ap_code" /></td>
			<td align="center"><input type="submit" value="선택  " /></td>
		</tr>
		<tr>
		<td>가는날</td>
		<td>출발지</td>
		<td>도착지</td>
		<td>상품코드</td>
		<td>가격</td>
		<td>도착날</td>
		<td>좌석개수</td>	
		<td>좌석등급</td>
		</tr>
		<tr>
		<td>${dto.ddate }</td>
		<td>${dto.darea }</td>
		<td>${dto.carea }</td>
		<td>${dto.ccode }</td>
		<td>${dto.money }</td>
		<td><%-- ${dto.a_time } --%></td>
		<td>${dto.seatcnt }</td>
		<td>${dto.flightclass }</td>
		</tr>
	</table>
</form>
</body>
</html>