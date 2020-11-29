<%@page import="ceo.model.vo.Ceo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Ceo ceo= (Ceo)request.getAttribute("ceo");
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
	<div class="wrap">
		<div id="userName">[<%=ceo.getCeoName()%>]님의 아이디</div><br>
		<div id="userId">[<%=ceo.getCeoId()%>]입니다.</div>
		
	
	</div>

</body>
</html>