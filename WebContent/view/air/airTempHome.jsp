<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>등업신청</h1>
<form action="airTempHomeReg" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>id</td>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td>사업자등록번호</td>
			<td><input type="text" name="crn" /></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="img" /></td>
		</tr>
		<tr>
			<td>회사명</td>
			<td><input type="text" name="air_name" /></td>
		</tr>
		<tr>
			<td align="center">회원등급</td>
				<td>
				<select name="grade">                                   <!-- select 콤보박스 같은거 -->
				<option value="A">A</option>
				<option value="H">H</option>
				<option value="M" >M</option> 
				<option value="C">C</option>       <!-- selected 미리 선택되어있게 -->
				</select>
			</td>
			</tr>
				<tr>
				<td colspan="2" align="right">
				<input type="submit" value="작성" />
				<input type="reset" value="초기화" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>