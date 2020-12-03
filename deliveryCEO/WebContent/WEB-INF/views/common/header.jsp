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
a{
	font-size:19px;
	font-family: Helvetica, Arial, sans-serif;
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
	font-size: 18px;
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
	background-image: url(/CEO/img/a.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

div.two {
	width: 100%;
	height: 600px;
	background-image: url(/CEO/img/b.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

div.three {
	width: 100%;
	height: 600px;
	background-image: url(/CEO/img/c.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

div.container {
	width: 1519px;
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
.menu{
	font-size:20px;
}
</style>
</head>

<body>
	<div class="container" style="margin-top: -10px; width: 1519px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 1519px;">
			<!-- Indicators -->

			<!-- Wrapper for slides -->
			<div class="carousel-inner" style="width: 1519px;">

				<div class="item active" style="width: 1519px;">
					<div class="one" style="width: 1519px;"></div>
					<div class="carousel-caption"></div>
				</div>

				<div class="item" style="width: 1519px;">
					<div class="two" style="width: 1519px;"></div>
					<div class="carousel-caption"></div>
				</div>

				<div class="item" style="width: 1519px;">
					<div class="three" style="width: 1519px;"></div>
					<div class="carousel-caption"></div>
				</div>

			</div>
			<!-- <div class="carousel-inner">

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

			</div> -->

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
						<li class="menu"><a href="/CEO/views/ceo/joinClick.jsp"
							style="color: black; text-decoration: none;"><img src="/CEO/img/join1.png"></a></li>
						<li class="menu"><a href="/CEO/views/ceo/login.jsp"
							style="color: black; text-decoration: none;"><img src="/CEO/img/login1.png"></a></li>
						<li class="menu"><a href="https://ceo.baemin.com/#/cscenter" style="color: black; text-decoration: none;"><img src="/CEO/img/call.png"></a></li>
						<li class="menu"><a href="/CEO/selfService" style="color: black; text-decoration: none;"><img src="/CEO/img/SELF.png"></a></li>
					</ul>
					<%
						} else {
					%>
					<ul>

						<li class="menu"><a href="/CEO/logout" style="color: black; text-decoration: none;"><img src="/CEO/img/logout.png"></a></li>
						<li class="menu"><a href="/CEO/mypage?ceoId=<%=ceo.getCeoId()%>"
							style="color: black; text-decoration: none;">[<%=ceo.getCeoId()%>]<img src="/CEO/img/hi.png">
						</a></li>
						<li class="menu"><a href="https://ceo.baemin.com/#/cscenter" style="color: black; text-decoration: none;"><img src="/CEO/img/call.png"></a></li>
						<li class="menu"><a href="/CEO/selfService?reqPage=1"
							style="color: black; text-decoration: none;"><img src="/CEO/img/SELF.png"></a></li>
					</ul>
					<%
						}
					%>
				</div>
				<div class="b">
					<p style="margin-top: 10px;">
						<a href="/CEO" style="color: gray; text-decoration: none;"><img src="/CEO/img/aaa.png" alt="My Image"></a>
					</p>
				</div>
				<div class="c"></div>
			</div>
		</div>
	</div>
</body>
</html>