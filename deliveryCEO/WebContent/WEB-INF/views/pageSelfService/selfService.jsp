<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Self Service</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/styleSelfService.css">
	<div class="blank"></div>
	<div class="content-wrap">
		<ul class="navi-bar">
			<li><a href="/">HOME</a></li>
			<li><a href="javascript:void(0)">STORE</a>
				<ul class="subMenu">
					<li><a href="/insertStoreForm">가게 정보 등록</a></li>
					<li><a href="/selectAllStoreInfo?ceoId=<%=ceo.getCeoId()%>">가게 정보 관리</a></li>
				</ul></li>
			<li><a href="javascript:void(0)">MENU</a>
				<ul class="subMenu">
					<li><a href="/insertMenuForm">메뉴 등록</a></li>
					<li><a href="/listMenu">메뉴 관리</a></li>
				</ul></li>
			<li><a href="javascript:void(0)">REVIEW</a>
				<ul class="subMenu">
					<li><a href="/listReview">리뷰 리스트</a></li>
					<li><a href="/listOrder">주문 리스트</a></li>
				</ul></li>
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
				<button type="button" class="btn btn-primary moreNotice">공지사항 더보기</button>
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
				<button type="button" class="btn btn-primary listReview">리뷰 더보기</button>
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
			<button type="button" class="btn btn-primary listMenu">메뉴 더보기</button>
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
				<button type="button" class="btn btn-primary listOrder">주문 관리</button>
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

		$(".moreNotice").click(function() {
			location.href = "/listNotice";
		});

		$(".listReview").click(function() {
			location.href = "/listReview";
		});

		$(".listMenu").click(function() {
			location.href = "/listMenu";
		});

		$(".listOrder").click(function() {
			location.href = "/listOrder";
		});
	</script>
</body>
</html>