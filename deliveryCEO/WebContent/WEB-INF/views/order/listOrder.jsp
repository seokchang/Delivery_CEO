<%@page import="order.model.vo.Order"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<Order> listOrder = (ArrayList<Order>) request.getAttribute("listOrder");
String pageNavi = (String) request.getAttribute("pageNavi");
%>
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
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<h1>판매 리스트</h1>
		<div class="table-wrap">
			<table class="table table-stripted">
				<thead>
					<tr>
						<th>번호</th>
						<th>고객 아이디</th>
						<th>주문 요청</th>
						<th>배달 주소</th>
						<th>가격</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<%
						if (!listOrder.isEmpty()) {
						for (Order order : listOrder) {
					%>
					<tr>
						<td><%=order.getRowNum()%></td>
						<td><%=order.getOrderClientId()%></td>
						<td><%=order.getOrderRequest()%></td>
						<td><%=order.getOrderAddress()%></td>
						<td><%=order.getOrderTotalPrice()%></td>
						<td><%=order.getOrderDate()%></td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
		</div>
		<div id="pageNavi"><%=pageNavi%></div>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>