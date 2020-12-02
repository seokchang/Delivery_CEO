<%@page import="menu.model.vo.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int storeNo = (Integer) request.getAttribute("storeNo");
String storeName = (String) request.getAttribute("storeName");
ArrayList<Menu> listMenu = (ArrayList<Menu>) request.getAttribute("listMenu");
String pageNavi = (String) request.getAttribute("pageNavi");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Menu JSP</title>
<link rel="stylesheet" href="/CEO/css/selfservice/styleListMenu.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

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
			href="/CEO/insertMenuForm?storeNo=<%=storeNo%>&storeName=<%=storeName%>"
			style="margin-bottom: 5px; float: right;">메뉴 등록</a>
		<div class="table-wrap">
			<table class="table">
				<tbody>
					<%
						if (!listMenu.isEmpty()) {
						for (Menu menu : listMenu) {
					%>
					<tr>
						<td><%=menu.getRowNum()%></td>
						<td>
							<img src="" width="150px;" height="150px;">
						</td>
						<td>
							<input type="text" name="menuName" class="form-control" value="<%=menu.getMenuName()%>"
								readonly="readonly"> <br> <input type="text" name="menuPrice"
								class="form-control" value="<%=menu.getMenuPrice()%>" readonly="readonly"> <br>
							<textarea class="form-control" style="resize: none;" readonly="readonly"><%=menu.getMenuDetail()%></textarea>
						</td>
						<td>
							<a class="btn btn-info btn-md"
								href="/CEO/selectOneMenu?menuNo=<%=menu.getMenuNo()%>&storeNo=<%=storeNo%>&storeName=<%=storeName%>">수정</a>
							<a class="btn btn-info btn-md"
								href="/CEO/deleteMenu?menuNo=<%=menu.getMenuNo()%>&storeNo=<%=storeNo%>&storeName=<%=storeName%>">삭제</a>
						</td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
			<div id="pageNavi"><%=pageNavi%></div>
		</div>
		<hr>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>