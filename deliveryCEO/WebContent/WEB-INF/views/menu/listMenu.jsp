<%@page import="menu.model.vo.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<Menu> listMenu = (ArrayList<Menu>) request.getAttribute("listMenu");
int storeNo = (Integer) request.getAttribute("storeNo");
String storeName = (String) request.getAttribute("storeName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Menu JSP</title>
<link rel="stylesheet" href="/css/selfservice/styleListMenu.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<h1>메뉴 정보</h1>
		<%
			if (listMenu.isEmpty()) {
		%>
		<div style="text-align: center;">
			<h3>등록된 메뉴가 없습니다.</h3>
		</div>
		<%
			}
		%>
		<a class="btn btn-info btn-md"
			href="/insertMenuForm?storeNo=<%=storeNo%>&storeName=<%=storeName%>"
			style="margin-bottom: 5px; float: right;">메뉴 등록</a>
		<div class="table-wrap">
			<table class="table">
				<tbody>
					<%
						if (!listMenu.isEmpty()) {
						for (Menu menu : listMenu) {
					%>
					<tr>
						<td>1</td>
						<td>
							<img src="/img/tower1.PNG" width="150px;" height="150px;">
						</td>
						<td>
							<input type="text" name="menuName" class="form-control" value="<%=menu.getMenuName()%>"
								readonly="readonly"> <br> <input type="text" name="menuPrice"
								class="form-control" value="<%=menu.getMenuPrice()%>" readonly="readonly"> <br>
							<textarea class="form-control" style="resize: none;" readonly="readonly"><%=menu.getMenuDetail()%></textarea>
						</td>
						<td>
							<a class="btn btn-info btn-md" href="/selectOneMenu?menuNo=<%=menu.getMenuNo()%>">수정</a> <a
								class="btn btn-info btn-md" href="/deleteMenu?menuNo=<%=menu.getMenuNo()%>">삭제</a>
						</td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
		</div>
		<hr>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>