<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Order JSP</title>
<link rel="stylesheet" href="/css/selfservice/styleListOrder.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<h1>판매 리스트</h1>
		<div class="table-wrap">
			<table class="table table-stripted">
				<thead>
					<tr>
						<th>번호</th>
						<th>고객ID</th>
						<th>메뉴</th>
						<th>주소</th>
						<th>가격</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr height="70">
						<td>1</td>
						<td>User01</td>
						<td>후라이드 치킨 1</td>
						<td>서울 영등포구 당산동</td>
						<td>10,000</td>
						<td>2020.11.23</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>