<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Document</title>
</head>

<body>
	<div class="inner">
		<br>
		<div class="content">
			<div class="logoinner">
				<div class="logo">
					<p>
						<a href="/CEO" style="text-decoration: none;">모방의민족</a>
					</p>
				</div>

				<div class="join">
					<h2 style="text-align: center;">로그인</h2>
					<form action="/CEO/login" method='post'>
						<input type="text" name="ceoId" id="id" class="a" placeholder="아이디를 입력하세요" required> <input
							type="password" name="ceoPw" id="pw" class="a" placeholder="비밀번호를 입력하세요" required>
						<ul>
							<li><a href="/CEO/views/ceo/findId.jsp">아이디</a>/<a href="/CEO/views/ceo/findPw.jsp">비밀번호
									찾기</a></li>
							<li><a href="/CEO/views/ceo/joinClick.jsp">회원가입</a></li>
						</ul>

						<input type="submit" value="로그인" class="a" style="background-color: #1a7cff;">
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<style>
body {
	margin: 0;
	padding: 0;
}

.inner {
	width: 25%;
	margin: 0 auto;
}

div.content {
	width: 100%;
	height: 900px;
}

div.logo {
	width: 100%;
	height: 200px;
	line-height: 200px;
	font-size: 30px;
}

.a {
	width: 100%;
	height: 40px;
	margin-top: 15px;
}

b {
	font-size: 20px;
}

h3 {
	margin: 0;
	padding: 0;
}

.b {
	font-size: 11px;
	float: left;
	margin-left: 10px;
	margin-top: -8px;
	list-style-type: none;
}

a {
	color: gray;
}

.c {
	color: gray;
	font-size: 11px;
}

p {
	margin: 0;
	padding: 0;
	text-align: center;
}

li {
	list-style-type: none;
	float: left;
	margin-left: 50px;
	font-size: 15px;
	text-decoration: none !important;
}
</style>
</html>