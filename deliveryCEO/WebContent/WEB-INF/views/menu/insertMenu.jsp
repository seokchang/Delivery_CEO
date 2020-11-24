<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Menu JSP</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/headerService.jsp"%>
	<link rel="stylesheet" href="/css/selfservice/stylePageCommon.css">

	<div class="content-wrap">
		<form action="/insertMenu" method="POST" enctype="multipart/form-data">
			<h1>메뉴 등록</h1>
			<table class="table">
				<tr>
					<th>사업자 번호</th>
					<td>
						<input type="text" name="storeNo" id="storeNo" class="form-control" value=""
							readonly="readonly">
					</td>
				</tr>
				<tr>
					<th><label for="menuName">메뉴명</label></th>
					<td>
						<input type="text" name="menuName" id="menuName" class="form-control">
					</td>
				</tr>
				<tr>
					<th><label for="menuPrice">메뉴 가격</label></th>
					<td>
						<input type="text" name="menuPrice" id="menuPrice" class="form-control">
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
						<div id="img-view">
							<img id="img-view" width="350">
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="menuDetail">메뉴 설명</label></th>
					<td>
						<textarea rows="3" cols="50" name="menuDetail" id="menuDetail" class="form-control"
							style="resize: none;"></textarea>
					</td>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;">
						<button type="submit" class="btn btn-primary btn-lg">등록하기</button>
					</th>
				</tr>
			</table>
		</form>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>