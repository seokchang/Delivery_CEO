<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Header JSP</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/css/selfservice/styleHeader.css">
</head>

<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-caption">
			<div class="header-wrap">
				<div class="logo">
					<a href="#">모방의 민족</a>
				</div>
				<div class="menu-wrap">
					<ul>
						<li><a href="#">셀프서비스</a></li>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="/img/forest1.PNG" alt="Not Found Forest1.png">
			</div>

			<div class="item">
				<img src="/img/river1.PNG" alt="Not Found River1.png">
			</div>

			<div class="item">
				<img src="/img/river2.PNG" alt="Not Found River2.png">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
		</a>
	</div>
</body>
</html>