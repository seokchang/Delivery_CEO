<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<title>Document</title>
</head>
<body>
	<div class="box01">
		<div class="inner">
			<h1>
				모방의 민족에 오신 <br> 것을 환영합니다.
			</h1>
			<br> <br> <br>
			<h1>
				<a href="/views/ceo/join.jsp">가입하기>></a>
			</h1>
		</div>
	</div>
	<script>
        $(function () {
            $(".box01 h1").css('transition','1s').css('transform','translateY(300px)');
        });

    </script>


</body>
<style>
body, html {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

p {
	font-size: 45px;
}

.box01 {
	width: 100%;
	height: 100%;
	position: relative;
	background-image: url(/img/img01.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}

.box01::before {
	content: "";
	opacity: 0.5;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	background-color: #000;
}

.box01 h1 {
	color: #fff;
	position: relative;
	font-size: 40px;
	padding: 0;
	margin: 0;
}

a {
	color: #1a7cff;
	text-decoration: none;
	font-size: 30px;
}

.inner {
	width: 70%;
	margin: 0 auto;
}
</style>
</html>
