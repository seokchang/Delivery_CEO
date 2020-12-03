<%@page import="menu.model.vo.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Menu menu = (Menu) request.getAttribute("menu");
	int storeNo = (Integer) request.getAttribute("storeNo");
	String storeName = (String) request.getAttribute("storeName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Menu JSP</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<form action="/CEO/updateMenu" method="POST"
			enctype="multipart/form-data">
			<input type="hidden" name="storeNo" value="<%=storeNo%>"> <input
				type="hidden" name="storeName" value="<%=storeName%>">
			<h1>메뉴 수정</h1>
			<table class="table">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="ceoId" id="ceoId"
						class="form-control" value="<%=ceo.getCeoId()%>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>메뉴 번호</th>
					<td><input type="text" name="menuNo" id="menuNo"
						class="form-control" value="<%=menu.getMenuNo()%>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th><label for="menuName">메뉴명</label></th>
					<td><input type="text" name="menuName" id="menuName"
						class="form-control" value="<%=menu.getMenuName()%>"></td>
				</tr>
				<tr>
					<th><label for="menuPrice">메뉴 가격</label></th>
					<td style="text-align: left;"><input type="text"
						name="menuPrice" id="menuPrice" class="form-control"
						style="width: 50%; display: inline-block;"
						value="<%=menu.getMenuPrice()%>"> <span class="msg"
						style="margin-left: 10px;"></span></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<%
							if (menu.getMenuFilePath() != null) {
						%> <input type="file" name="fileName"
						value="/filepath/02_menu/<%=menu.getMenuFilePath()%>" onchange="LoadImg(this)">
						<%
							} else {
						%> <input type="file" name="fileName" onchange="LoadImg(this)">
						<%
							}
						%>
					</td>
				</tr>
				<tr>
					<th>이미지보기</th>
					<td>
						<div style="text-align: left;">
							<%
								if (menu.getMenuFilePath() != null) {
							%>
							<img id="img-view" width="300"
								src="/filepath/02_menu/<%=menu.getMenuFilePath()%>">
							<%
								} else {
							%>
							<img id="img-view" width="300">
							<%
								}
							%>
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="menuDetail">메뉴 설명</label></th>
					<td><textarea rows="3" cols="50" name="menuDetail"
							id="menuDetail" class="form-control" style="resize: none;"><%=menu.getMenuDetail()%></textarea>
					</td>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;"><input
						class="btn btn-primary btn-lg" type="submit" value="메뉴 수정"></th>
				</tr>
			</table>
		</form>
	</div>
	<div style="margin: 0 auto; width: 1300px;">
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>

	<script src="/CEO/js/checkReg/checkRegMenu.js"></script>
</body>
</html>