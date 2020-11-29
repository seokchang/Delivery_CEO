<%@page import="ceo.model.vo.Ceo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Ceo ceo = (Ceo) session.getAttribute("Ceo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header JSP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.inner2 {
	width: 80%;
	margin: 0 auto;
}

.content1 {
	width: 550px;
	height: 300px;
	float: left;
	margin-top: 30px;
	margin-left: 50px;
}

.content2 {
	width: 300px;
	height: 300px;
	margin-left: 70px;
	margin-top: 30px;
	float: left;
}

.content {
	width: 100%;
	height: 1000px;
}

.blank {
	height: 440px;
}

.inner {
	width: 70%;
	margin: 0 auto;
	position: relative;
}

.header {
	width: 100%;
	height: 150px;
	position: relative;
	z-index: 10;
}

body {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
	float: right;
	margin-left: 15px;
	font-size: 13px;
	color: white;
	margin-top: 10px;
}

ul {
	margin: 0;
	padding: 0;
}

div.a {
	width: 100%;
	height: 10px;
	text-decoration: none;
	color: gray;
}

div.b {
	width: 100%;
	height: 50px;
}

div.c {
	width: 100%;
}

div.one {
	width: 100%;
	height: 600px;
	background-image: url(/img/a.jpg);
	background-repeat:no-repeat;
	background-size:cover;
}
div.two {
	width: 100%;
	height: 600px;
	background-image: url(/img/b.jpg);
	background-repeat:no-repeat;
	background-size:cover;
}

div.three {
	width: 100%;
	height: 600px;
	background-image: url(/img/c.jpg);
	background-repeat:no-repeat;
	background-size:cover;
}

div.container {
	width: 100%;
	position: absolute;
	margin: 0;
	padding: 0;
}

p {
	font-size: 40px;
	color: white;
}

div.headermom {
	width: 100%;
	height: 150px;
	position: relative;
}

div.headermom:hover {
	background-color: white;
	color: gray;
}
</style>
</head>
<body>
	<div class="container" style="margin-top: -10px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<div class="one"></div>
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<div class="two"></div>
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<div class="three"></div>
					<div class="carousel-caption"></div>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="headermom">
		<div class="inner">
			<div class="header" style="margin-top: -10px">
				<div class="a">
					<%
						if (ceo == null) {
					%>
					<ul>
						<li class="menu"><a href="/views/ceo/joinClick.jsp"
							style="color: black; text-decoration: none;">회원가입</a></li>
						<li class="menu"><a href="/views/ceo/login.jsp"
							style="color: black; text-decoration: none;">로그인</a></li>
						<li class="menu"><a href="#" style="color: black; text-decoration: none;">고객센터</a></li>
						<li class="menu"><a href="/selfService" style="color: black; text-decoration: none;">셀프서비스</a></li>
					</ul>
					<%
						} else {
					%>
					<ul>

						<li class="menu"><a href="/logout" style="color: black; text-decoration: none;">로그아웃</a></li>
						<li class="menu"><a href="/mypage?ceoId=<%=ceo.getCeoId()%>" style="color: black; text-decoration: none;">[<%=ceo.getCeoId()%>]님 반갑습니다.</a></li>
						<li class="menu"><a href="#" style="color: black; text-decoration: none;">고객센터</a></li>
						<li class="menu"><a href="/selfService" style="color: black; text-decoration: none;">셀프서비스</a></li>
					</ul>
					<%}%>
				</div>
				<div class="b">
					<p style="margin-top: 10px;">
						<a href="/" style="color: gray; text-decoration: none;"><img src="/img/logo3.png" alt="My Image"></a>
					</p>
				</div>
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>
</html>