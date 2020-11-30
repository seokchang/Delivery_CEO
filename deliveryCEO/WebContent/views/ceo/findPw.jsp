<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="login.css">
<title>Document</title>
</head>
<body>
	<form name="searchFrm">
		<input type="hidden" name="id"> <input type="hidden" name="phone"> <input
			type="hidden" name="name">
	</form>

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
					<h2 style="text-align: center;">비밀번호찾기</h2>
					<input type="text" name="ceoId" id="id" class="a" placeholder="ID를 입력하세요" required> <input
						type="number" name="ceoTel" id="phone" class="a" placeholder="휴대폰을 입력하세요" required>
					<button type="button" id="searchBtn" onclick="searchPw();"
						style="background-color: #1a7cff; width: 100%; height: 40px; margin-top: 40px;">검색</button>
					<button type="button" onclick="location.href='/CEO/views/ceo/login.jsp'"
						style="background-color: #1a7cff; width: 100%; height: 40px; margin-top: 40px;">로그인하러가기</button>
				</div>
			</div>
		</div>

	</div>
	<script>
		function searchPw() {

			var id = document.getElementById("id").value;
			var phone = document.getElementById("phone").value;
			if (id == "" && phone == "") {
				alert("모든 정보를 입력 해주세요.")
				return;
			}
			var url = "/CEO/findPw"; // 서블릿요청
			var title = "findPw";
			var status = "left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbar=yes";
			var popup = window.open("", title, status); //빈창 오픈    	
			searchFrm.id.value = id;
			searchFrm.phone.value = phone;
			searchFrm.target = title;//popup창과 form태그를 연결
			searchFrm.action = url;
			searchFrm.method = "post";

			searchFrm.submit();

		}
	</script>

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