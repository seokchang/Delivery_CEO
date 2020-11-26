<%@page import="ceo.model.vo.Ceo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Ceo c = (Ceo)request.getAttribute("ceo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test</h1>
	


	<form action="/update" method="post"
		style="width: 800px; margin: 0 auto; color: black;">
		<h1>마이페이지</h1>
		<table class="table">
			
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ceoId" class="form-control"
					value="<%=c.getCeoId() %>" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="ceoPw" class="form-control"
					value="<%=c.getCeoPw() %>"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="ceoName" class="form-control"
					value="<%=c.getCeoName() %>" readonly></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="ceoTel" class="form-control"
					value="<%=c.getCeoTel() %>" ></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="ceoAddr" class="form-control"
					value="<%=c.getCeoAddr() %>" ></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><input type="text" name="ceoEnroll" class="form-control"
					value="<%=c.getCeoEnroll() %>" readonly></td>
			</tr>
		
			<tr>
				<th colspan="2" style="text-align : center">
				<button class = "btn btn-outline-danger btn-lg" type="submit">수정하기</button>
				<button class = "btn btn-outline-danger btn-lg" type="button" onclick="location.href='/deleteCeo?ceoId=<%=c.getCeoId()%>'">회원 탈퇴</button>
				<button class = "btn btn-outline-danger btn-lg" type="button" onclick="location.href='/'">메인으로가기</button>
		
				</th>
			</tr>
		</table>
	</form>
</body>
</html>