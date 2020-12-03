<%@page import="ceo.model.vo.Ceo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%
	Ceo c = (Ceo) request.getAttribute("ceo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/CEO/update" method="post" style="width: 350px; margin: 180 auto; color: black; text-align:center;">
		<h1 style="margin-bottom:80px;">마이페이지</h1>
		
		<table class="table" >

			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="ceoId" class="form-control" value="<%=c.getCeoId()%>" readonly style="width:250px; height:20px; ">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="ceoPw" class="form-control" value="<%=c.getCeoPw()%>" style="width:250px; height:20px;">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="ceoName" class="form-control" value="<%=c.getCeoName()%>" readonly style="width:250px; height:20px;">
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input type="text" name="ceoTel" class="form-control" value="<%=c.getCeoTel()%>" style="width:250px; height:20px;">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="ceoAddr" class="form-control" value="<%=c.getCeoAddr()%>" style="width:250px; height:20px;">
				</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>
					<input type="text" name="ceoEnroll" class="form-control" value="<%=c.getCeoEnroll()%>" readonly style="width:250px; height:20px;">
				</td>
			</tr>

			<tr>
				<th colspan="2" style="text-align: center">
					<button class="btn btn-default" type="submit">수정하기</button>
				
					<button class="btn btn-default" type="button"
						onclick="location.href='/CEO/deleteCeo?ceoId=<%=c.getCeoId()%>'">회원 탈퇴</button>
					
					<button class="btn btn-default" type="button" onclick="location.href='/CEO'">메인으로가기</button>
					

				</th>
			</tr>
		</table>
	</form>
	<div class="blank"></div>
</body>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
<style>
table {
	text-align: center;
}
.blank{
	height:30px;
}
.center{
	width:70%:
	margin : 0 auto;
}
</style>

</html>