<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Self Service</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/selfservice/styleSelfService.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<div class="content-wrap">
		<ul class="navi-bar">
			<li><a href="/">HOME</a></li>
			<li>
				<a href="#">STORE</a>
				<ul class="subMenu">
					<li><a href="#">가게 정보 등록</a></li>
					<li><a href="#">가게 정보 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#">MENU</a>
				<ul class="subMenu">
					<li><a href="#">메뉴 등록</a></li>
					<li><a href="/manageMenuPage">메뉴 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#">REVIEW</a>
				<ul class="subMenu">
					<li><a href="#">리뷰 보기</a></li>
				</ul>
			</li>
		</ul>

		<div class="content-1">
			<div class="notice-wrap">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2">공지사항</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
							<td>2020.11.23</td>
						</tr>
						<tr>
							<td>[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
							<td>2020.11.23</td>
						</tr>
						<tr>
							<td>[공지사항] 개인정보 방침 일부 변경에 관한 안내</td>
							<td>2020.11.23</td>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-primary">공지사항 더보기</button>
			</div>

			<div class="review-wrap">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2">리뷰</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>[리뷰] 첫번째 리뷰</td>
							<td>2020.11.23</td>
						</tr>
						<tr>
							<td>[리뷰] 첫번째 리뷰</td>
							<td>2020.11.23</td>
						</tr>
						<tr>
							<td>[리뷰] 첫번째 리뷰</td>
							<td>2020.11.23</td>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-primary">리뷰 더보기</button>
			</div>
		</div>

		<div class="content-2"></div>
		<div class="menu-wrap">
			<table class="table table-striped">
				<thead>
					<tr>
						<th colspan="2">메뉴 정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>
							<img src="#">
						</td>
						<td>메뉴명</td>
						<td>메뉴 설명</td>
						<td>가격</td>
					</tr>
					<tr>
						<td>2</td>
						<td>
							<img src="#">
						</td>
						<td>메뉴명</td>
						<td>메뉴 설명</td>
						<td>가격</td>
					</tr>
					<tr>
						<td>3</td>
						<td>
							<img src="#">
						</td>
						<td>메뉴명</td>
						<td>메뉴 설명</td>
						<td>가격</td>
					</tr>
				</tbody>
			</table>
			<button type="button" class="btn btn-primary">메뉴 더보기</button>
		</div>
		<div class="content-3">
			<div class="order-wrap">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2">주문표</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>고객ID</td>
							<td>메뉴 리스트</td>
							<td>배달 주소</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>2</td>
							<td>고객ID</td>
							<td>메뉴 리스트</td>
							<td>배달 주소</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>3</td>
							<td>고객ID</td>
							<td>메뉴 리스트</td>
							<td>배달 주소</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>4</td>
							<td>고객ID</td>
							<td>메뉴 리스트</td>
							<td>배달 주소</td>
							<td>가격</td>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-primary">주문 관리</button>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<script type="text/javascript">
		var navi = $(".navi-bar>li");
		var subMenu = $(".subMenu");

		$(function() {
			subMenu.hide();
			
			$(navi).hover(function() {
				$(this).children(".subMenu").slideToggle();
			});
		});
	</script>
</body>
</html>