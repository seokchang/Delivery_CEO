<%@page import="notice.model.vo.Notice"%>
<%@page import="review.model.vo.Review"%>
<%@page import="store.model.vo.Store"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int length = 5;
	ArrayList<Notice> listNotice = (ArrayList<Notice>) request.getAttribute("listNotice");
	ArrayList<Store> listStore = (ArrayList<Store>) request.getAttribute("listStore");
	ArrayList<Review> listReview = (ArrayList<Review>) request.getAttribute("listReview");
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
	<link rel="stylesheet" href="/CEO/css/selfservice/styleSelfService.css">
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap" style="width: 1300px">
		<ul class="navi-bar">
			<li><a href="/CEO">HOME</a></li>
			<li><a href="/CEO/selectAllStoreInfo?ceoId=<%=ceo.getCeoId()%>&reqPage=1">STORE</a></li>
			<li><a href="javascript:void(0)">ORDER</a>
				<ul class="subMenu">
					<li><a href="/CEO/selectAllReview?ceoId=<%=ceo.getCeoId()%>&reqPage=1">리뷰 리스트</a></li>
					<li><a href="#">주문 리스트</a></li>
				</ul></li>
		</ul>
		<div class="content-1">
			<div class="notice-wrap">
				<h3>공지사항</h3>
				<table class="table table-striped">
					<thead>
						<tr>

						</tr>
					</thead>
					<tbody>
						<%
							if (!listNotice.isEmpty()) {
							for (int i = 0; i < length; i++) {
						%>
						<tr>
							<td style="text-align: left;"><%=listNotice.get(i).getNoticeTitle()%></td>
							<td><%=listNotice.get(i).getNoticeEnroll()%></td>
						</tr>
						<%
							}
						}
						%>
					</tbody>
				</table>
				<div class="btn-wrap">
					<a class="btn btn-primary btn-md" href="/CEO/noticeList?reqPage=1">공지사항 더보기</a>
				</div>
			</div>

			<div class="review-wrap">
				<h3>리뷰</h3>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>고객 아이디</th>
							<th>리뷰 내용</th>
							<th>평점</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<%-- 	<%
							if (!listReview.isEmpty()) {
							for (int i = 0; i < length; i++) {
						%>
						<tr>
							<td><%=listReview.get(i).getRowNum()%></td>
							<td><%=listReview.get(i).getReviewClientId()%></td>
							<td><%=listReview.get(i).getReviewContent()%></td>
							<td>
								<%
									for (int j = 0; j < listReview.get(j).getReviewScore(); j++) {
								%>
								<img src="/CEO/img/star-on.png">
								<%
									}
								%>
							</td>
							<td><%=listReview.get(i).getReviewEnrollDate()%></td>
						</tr>
						<%
							}
						}
						%> --%>
					</tbody>
				</table>
				<div>
					<a class="btn btn-primary btn-md"
						href="/CEO/selectAllReview?ceoId=<%=ceo.getCeoId()%>&reqPage=1">리뷰 더보기</a>
				</div>
			</div>
		</div>
		<hr>

		<div class="content-2"></div>
		<div class="store-wrap">
			<h3>가게 정보</h3>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>상호명</th>
						<th>위치</th>
						<th>전화번호</th>
						<th>사업자번호</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody>
					<%
						if (!listStore.isEmpty()) {
						for (int i = 0; i < length; i++) {
					%>
					<tr>
						<td><%=listStore.get(i).getRowNum()%></td>
						<td><%=listStore.get(i).getStoreCEO()%></td>
						<td><%=listStore.get(i).getStoreName()%></td>
						<td><%=listStore.get(i).getStoreAddr()%></td>
						<td><%=listStore.get(i).getStoreTel()%></td>
						<td><%=listStore.get(i).getStoreNo()%></td>
						<td><%=listStore.get(i).getStoreDet()%></td>
					</tr>
					<%
						}
					}
					%>

				</tbody>
			</table>
			<div class="btn-wrap">
				<a class="btn btn-primary btn-md"
					href="/CEO/selectAllStoreInfo?ceoId=<%=ceo.getCeoId()%>&reqPage=1">가게 더보기</a>
			</div>
		</div>
		<hr>
		<div class="content-3">
			<div class="order-wrap">
				<h3>주문표</h3>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>고객 아이디</th>
							<th>주문 번호</th>
							<th>배달 주소</th>
							<th>가격</th>
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
					</tbody>
				</table>
				<div class="btn-wrap">
					<a class="btn btn-primary btn-md" href="#">주문 관리</a>
				</div>
			</div>
		</div>
		<hr>
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