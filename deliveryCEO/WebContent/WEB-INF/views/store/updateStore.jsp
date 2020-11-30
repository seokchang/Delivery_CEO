<%@page import="store.model.vo.Store"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Store store = (Store) request.getAttribute("store");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Store Form</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<form action="/CEO/updateStoreInfo" method="POST" enctype="multipart/form-data">
			<h1>가게 정보 관리</h1>
			<table class="table">
				<tr>
					<th>카테고리</th>
					<td style="text-align: left;">
						<select name="storeCateId">
							<option value="1" selected>치킨</option>
							<option value="2">피자</option>
							<option value="3">한식</option>
							<option value="4">중식</option>
							<option value="5">일식</option>
							<option value="6">양식</option>
							<option value="7">분식</option>
							<option value="8">족발&보쌈</option>
							<option value="9">패스트푸드</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<!-- 로그인한 아이디 불러옴 -->
						<input type="text" name="storeCEO" id="storeCEO" class="form-control"
							value="<%=ceo.getCeoId()%>" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th><label for="storeNo">사업자 번호</label></th>
					<td>
						<input type="text" name="storeNo" id="storeNo" class="form-control"
							value="<%=store.getStoreNo()%>" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th><label for="storeName">상호명</label></th>
					<td>
						<input type="text" name="storeName" id="storeName" class="form-control"
							value="<%=store.getStoreName()%>">
					</td>
				</tr>
				<tr>
					<th><label for="storeAddr">위치</label></th>
					<td>
						<input type="text" name="storeAddr" id="storeAddr" class="form-control"
							value="<%=store.getStoreAddr()%>">
					</td>
				</tr>
				<tr>
					<th><label for="storeTel">전화번호</label></th>
					<td style="text-align: left;">
						<input type="text" name="storeTel" id="storeTel" class="form-control"
							placeholder="ex) 02-1234-5678" value="<%=store.getStoreTel()%>"
							style="width: 50%; display: inline-block;"> <span class="msg"
							style="margin-left: 10px;"></span>
					</td>
				</tr>
				<tr>
					<th><label for="storeStartTime">영업 시작 시간</label></th>
					<td style="text-align: left;">
						<input type="text" name="storeStartTime" id="storeStartTime" class="form-control"
							placeholder="ex) 09:00" value="<%=store.getStoreStartTime()%>"
							style="width: 50%; display: inline-block;"> <span class="msg"
							style="margin-left: 10px;"></span>
					</td>
				</tr>
				<tr>
					<th><label for="storeEndTime">영업 종료 시간</label></th>
					<td style="text-align: left;">
						<input type="text" name="storeEndTime" id="storeEndTime" class="form-control"
							placeholder="ex) 23:00" value="<%=store.getStoreEndTime()%>"
							style="width: 50%; display: inline-block;"> <span class="msg"
							style="margin-left: 10px;"></span>
					</td>
				</tr>
				<tr>
					<th><label for="storeRest">휴무일</label></th>
					<td>
						<input type="text" name="storeRest" id="storeRest" class="form-control"
							value="<%=store.getStoreRest()%>">
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<input type="file" name="fileName" onchange="LoadImg(this)">
					</td>
				</tr>
				<tr>
					<th>이미지보기</th>
					<td>
						<div style="text-align: left;">
							<img id="img-view" width="350">
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="storeDetail">가게 설명</label></th>
					<td>
						<textarea rows="3" cols="50" name="storeDetail" id="storeDetail" class="form-control"
							style="resize: none;"><%=store.getStoreDet()%></textarea>
					</td>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;"><input type="submit"
						class="btn btn-primary btn-lg" value="변경하기"></th>
				</tr>
			</table>
		</form>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="/CEO/js/checkReg/checkRegStore.js"></script>
</body>
</html>