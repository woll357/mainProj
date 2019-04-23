<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<td colspan="8">비행기 코드</td>
			<td><input type="text" name="ap_code" /></td>
			<td align="center"><input type="submit" value="선택  " /></td>
		</tr>
	<tr>
		<td>상품코드</td>
		<td>비행기코드</td>
		<td>출발시간</td>
		<td>출발지</td>
		<td>도착지</td>
		<td>가격</td>
		<td>도착시간</td>
		<td>예약된좌석</td>
		<td>총좌석</td>	
		<td>좌석등급</td>
	</tr>
<c:forEach var="dt" items="${dto }" varStatus="no" >
	<tr>
	
	<td><a href="airdetail?ccode=${dt.ccode }">${dt.ccode }</a></td>	
		<td>${dt.ap_code }</td>
		<td>${dt.ddate }</td>
		<td>${dt.darea }</td>
		<td>${dt.carea }</td>
		<td>${dt.money }</td>
		<td>${dt.a_time }</td>
		<td>${dt.seatcnt }</td>
		<td>${dt.totseatcnt }</td>
		<td>${dt.flightclass }</td>
	</tr>
 </c:forEach>
	</table>
</form>
</body>
</html>