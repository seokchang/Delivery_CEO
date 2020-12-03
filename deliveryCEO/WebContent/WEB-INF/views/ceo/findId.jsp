<%@page import="ceo.model.vo.Ceo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Ceo ceo = (Ceo) request.getAttribute("ceo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header JSP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%if(ceo != null) {%>
	<div class="inner">
	<div class="wrap">
		<div id="userName">
			[<%=ceo.getCeoName()%>]님의 아이디
		</div>
		<br>
		<div id="userId">
			[<%=ceo.getCeoId()%>]입니다.
		</div>
	</div>
	<%} else{%>
		<script>
			alert("정확한 정보를 입력해 주세요!");
			self.close();
		</script>
	<%} %>
	</div>
</body>
<style>
 .inner{
 	margin:0 auto;
 	width:21%;
 }
</style>
</html>