<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Review JSP</title>
<link rel="stylesheet" href="/css/selfservice/styleListReview.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<h1>리뷰 확인</h1>
		<hr>
		<div class="table-wrap">
			<table class="table table-hover">
				<thead class="thead-dark">
					<tr>
						<th>번호</th>
						<th>고객 ID</th>
						<th>주문내용</th>
						<th>평점</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr height="70">
						<td>1</td>
						<td>USER01</td>
						<td>후라이드 치킨외 1</td>
						<td>☆☆☆☆☆</td>
						<td>2020.11.23</td>
						<td>
							<button type="button" class="btn btn-primary">리뷰확인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>