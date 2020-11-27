<%@page import="oracle.net.aso.a"%>
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
		<%
			if (list.isEmpty()) {
		%>
		<div style="text-align: center;">
			<h3>등록된 가게 정보가 없습니다.</h3>
		</div>
		<%
			}
		%>
		<a class="btn btn-info btn-md" href="/insertStoreForm" style="float: right; margin-bottom: 5px;">가게
			등록</a>
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
								href="/selectAllMenu?storeNo=<%=store.getStoreNo()%>&storeName=<%=store.getStoreName()%>">메뉴
								관리</a> <a class="btn btn-info btn-md"
								href="/selectOneStoreInfo?ceoId=<%=ceo.getCeoId()%>&storeNo=<%=store.getStoreNo()%>">가게
								정보 수정</a> <a class="btn btn-info btn-md"
								href="/deleteStoreInfo?ceoId=<%=ceo.getCeoId()%>&storeNo=<%=store.getStoreNo()%>">가게 정보
								삭제</a>
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