<%@page import="java.util.ArrayList"%>
<%@page import="store.model.vo.Store"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<Store> list = (ArrayList<Store>) request.getAttribute("listStore");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Store JSP</title>
<link rel="stylesheet" href="/css/selfservice/styleListMenu.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">
	<div class="blank"></div>
	<div class="content-wrap">
		<h1>가게 정보</h1>
		<div class="table-wrap">
			<table class="table table-striped">
				<tbody>
					<%
						if (!list.isEmpty()) {
						for (Store store : list) {
					%>
					<tr>
						<td>1</td>
						<td>
							<img src="/img/tower1.PNG" width="150px;" height="150px;">
						</td>
						<td>
							가게명 : <input type="text" name="storeName" value="<%=store.getStoreName()%>"
								readonly="readonly"> <br> <br> 위치 : <input type="text" name="storeAddr"
								value="<%=store.getStoreAddr()%>" readonly="readonly"> <br> <br> 사업자 번호 :
							<input type="text" name="storeNo" value="<%=store.getStoreNo()%>" readonly="readonly">
						</td>
						<td>
							<a class="btn btn-info btn-md"
								href="/selectOneStoreInfo?ceoId=<%=ceo.getCeoId()%>&storeNo=<%=store.getStoreNo()%>">수정</a>
							<a class="btn btn-info btn-md"
								href="/deleteStoreInfo?ceoId=<%=ceo.getCeoId()%>&storeNo=<%=store.getStoreNo()%>">삭제</a>
						</td>
					</tr>
				</tbody>
				<%
					}
				}
				%>
			</table>
		</div>
		<hr>

		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>