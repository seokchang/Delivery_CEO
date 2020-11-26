<%@page import="store.model.vo.Store"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<Store> listStore = (ArrayList<Store>) request.getAttribute("listStore");
%>
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
			<li><a href="/selectAllStoreInfo?ceoId=<%=ceo.getCeoId()%>">STORE</a></li>
			<li><a href="javascript:void(0)">ORDER</a>
				<ul class="subMenu">
					<li><a href="/selectAllReview?ceoId=<%=ceo.getCeoId()%>">리뷰 리스트</a></li>
					<li><a href="/listOrder">주문 리스트</a></li>
				</ul></li>
		</ul>
		<div class="content-1">
			<div class="notice-wrap">
				<h3>공지사항</h3>
				<table class="table table-striped">
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
				<div class="btn-wrap">
					<a class="btn btn-primary btn-md" href="#">공지사항 더보기</a>
				</div>
			</div>

			<div class="review-wrap">
				<h3>리뷰</h3>
				<table class="table table-striped">
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
				<div>
					<a class="btn btn-primary btn-md" href="#">리뷰 더보기</a>
				</div>
			</div>
		</div>

		<div class="content-2"></div>
		<div class="store-wrap">
			<h3>가게 정보</h3>
			<table class="table table-striped">
				<tbody>
					<%
						if (!listStore.isEmpty()) {
						for (Store store : listStore) {
					%>
					<tr>
						<td>1</td>
						<td><%=store.getStoreCEO()%></td>
						<td><%=store.getStoreName()%></td>
						<td><%=store.getStoreAddr()%></td>
						<td><%=store.getStoreTel()%></td>
						<td><%=store.getStoreDet()%></td>
					</tr>
					<%
						}
					}
					%>

				</tbody>
			</table>
			<div class="btn-wrap">
				<a class="btn btn-primary btn-md" href="/selectAllStoreInfo?ceoId=<%=ceo.getCeoId()%>">가게
					더보기</a>
			</div>
		</div>
		<div class="content-3">
			<div class="order-wrap">
				<h3>주문표</h3>
				<table class="table table-striped">
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
				<div class="btn-wrap">
					<a class="btn btn-primary btn-md" href="#">주문 관리</a>
				</div>
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