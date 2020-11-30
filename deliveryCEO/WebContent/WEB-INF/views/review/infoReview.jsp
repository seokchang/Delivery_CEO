<%@page import="review.model.vo.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Review review = (Review) request.getAttribute("review");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Info</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">
	<div class="blank"></div>

	<div class="content-wrap">
		<h1>리뷰 상세</h1>
		<table class="table table-striped">
			<tr>
				<th>리뷰 번호</th>
				<td><%=review.getReviewNo()%></td>
			</tr>
			<tr>
				<th>고객 아이디</th>
				<td><%=review.getReviewClientId()%></td>
			</tr>
			<tr>
				<th>주문 번호</th>
				<td><%=review.getReviewOrderNo()%></td>
			</tr>
			<tr>
				<th>평점</th>
				<td>
					<%
						for (int i = 0; i < review.getReviewScore(); i++) {
					%>
					<img src="/img/star-on.png">
					<%
						}
					%>
				</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td><%=review.getReviewEnrollDate()%></td>
			</tr>
			<tr>
				<th>리뷰 상세</th>
				<td><%=review.getReviewContent()%></td>
			</tr>
		</table>
		<div style="text-align: center;">
			<a class="btn btn-primary btn-lg" href="/CEO/selectAllReview?ceoId=<%=ceo.getCeoId()%>&reqPage=1">목록
				보기</a>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>