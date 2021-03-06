<%@page import="review.model.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pageNavi = (String) request.getAttribute("pageNavi");
	ArrayList<Review> listReview = (ArrayList<Review>) request.getAttribute("listReview");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Review JSP</title>
<link rel="stylesheet" href="/css/selfservice/styleListReview.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<h1>리뷰 리스트</h1>
		<hr>
		<div class="table-wrap">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>리뷰번호</th>
						<th>고객 아이디</th>
						<th>주문번호</th>
						<th>평점</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<%
						if (!listReview.isEmpty()) {
							for (Review review : listReview) {
					%>
					<tr height="70">
						<td><%=review.getRowNum()%></td>
						<td><%=review.getReviewNo()%></td>
						<td><%=review.getReviewClientId()%></td>
						<td><%=review.getReviewOrderNo()%></td>
						<td>
							<%
								for (int i = 0; i < review.getReviewScore(); i++) {
							%> <img src="/CEO/img/star-on.png"> <%
 	}
 %>
						</td>
						<td><%=review.getReviewEnrollDate()%></td>
						<td><a class="btn btn-primary btn-md"
							href="/CEO/selectOneReview?reviewNo=<%=review.getReviewNo()%>">리뷰확인</a>
						</td>
					</tr>
					<%
						}
						}
					%>
				</tbody>
			</table>
		</div>
		<div style="text-align: center;">
			<div id="pageNavi"><%=pageNavi%></div>
		</div>
	</div>
	<div style="margin: 0 auto; width: 1300px;">
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>