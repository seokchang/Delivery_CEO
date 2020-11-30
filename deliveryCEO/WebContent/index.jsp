<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index JSP</title>
<!--  수정된 부분  -->
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/CEO/js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/CEO/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/css/header/style.css">
<link rel="stylesheet" href="/css/header/responsive.css"> -->
<script type="text/javascript" src="/CEO/js/bootstrap.js"></script>
<title>Header JSP</title>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="blank"></div>
	<hr>
	<br>
	<br>
	<div class="inner">
		<div class="content">
			<div class="inner2">
				<div class="content1">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td style="text-align: left;">[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
									<td>2020.11.23</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="/CEO/noticeList?reqPage=1">공지사항 더보기</a>
						</div>
					</div>
				</div>
				<div class="content2">
					<iframe width="425" height="300" src="https://www.youtube.com/embed/r5xvtN8DC9A"
						frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				</div>
				<div class="content1">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td style="text-align: left;">[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
									<td>2020.11.23</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="#">공지사항 더보기</a>
						</div>
					</div>
				</div>
				<div class="content2">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td style="text-align: left;">[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
									<td>2020.11.23</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="#">공지사항 더보기</a>
						</div>
					</div>
				</div>
				<div class="content1">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td style="text-align: left;">[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
									<td>2020.11.23</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="#">공지사항 더보기</a>
						</div>
					</div>
				</div>
				<div class="content2">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td style="text-align: left;">[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
									<td>2020.11.23</td>
								</tr>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="#">공지사항 더보기</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<style>
.inner2 {
	width: 80%;
	margin: 0 auto;
}

.content1 {
	width: 425px;
	height: 300px;
	float: left;
	margin-top: 30px;
	margin-left: 50px;
	border-top: 1px solid gray;
}

.content2 {
	width: 425px;
	height: 300px;
	margin-left: 70px;
	margin-top: 30px;
	float: left;
	border-top: 1px solid gray;
}

.content {
	width: 100%;
	height: 1000px;
	background-
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
	background-color: hotpink;
}

div.two {
	width: 100%;
	height: 600px;
	background-color: orange;
}

div.three {
	width: 100%;
	height: 600px;
	background-color: darkmagenta;
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

body {
	margin: 0;
}

.inner {
	width: 86%;
	margin: 0 auto;
}

ul {
	margin: 0;
}

div.footer {
	width: 100%;
	height: 200px;
}

div.footer1 {
	width: 100%;
	height: 50px;
}

div.footer2 {
	width: 100%;
	height: 60px;
}

div.footer3 {
	width: 100%;
	height: 70px;
	line-height: 50px;
}

li.menu2 {
	list-style-type: none;
	float: left;
	margin-right: 20px;
	font-size: 11px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

li.headermenu {
	list-style-type: none;
	float: left;
	margin-right: 20px;
	font-size: 11px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

li.menu {
	list-style-type: none;
	float: right;
	margin-right: 20px;
	font-size: 12px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

h5 {
	margin-top: 2px;
	margin-left: 40px;
	font-size: 12px;
	color: #8e929f;
	font-weight: bolder;
	margin-left: 14px;
}

h5.b {
	margin-top: -16px;
	margin-left: 14px;
}
</style>



</body>
</html>