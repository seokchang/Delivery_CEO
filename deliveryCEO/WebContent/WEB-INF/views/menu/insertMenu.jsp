<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int storeNo = (Integer) request.getAttribute("storeNo");
	String storeName = (String) request.getAttribute("storeName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Menu JSP</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="/CEO/css/selfservice/stylePageCommon.css">

	<div class="blank"></div>
	<div class="content-wrap">
		<form action="/CEO/insertMenu" method="POST"
			enctype="multipart/form-data">
			<h1>메뉴 등록</h1>
			<table class="table">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="ceoId" id="ceoId"
						class="form-control" value="<%=ceo.getCeoId()%>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>사업자 번호</th>
					<td><input type="text" name="storeNo" id="storeNo"
						class="form-control" value="<%=storeNo%>" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th>상호명</th>
					<td><input type="text" name="storeName" id="storeName"
						class="form-control" value="<%=storeName%>" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th><label for="menuName">메뉴명</label></th>
					<td><input type="text" name="menuName" id="menuName"
						class="form-control"></td>
				</tr>
				<tr>
					<th><label for="menuPrice">메뉴 가격</label></th>
					<td style="text-align: left;"><input type="text"
						name="menuPrice" id="menuPrice" class="form-control"
						placeholder="숫자만 입력 (ex : 10000)"
						style="width: 50%; display: inline-block;"> <span
						class="msg" style="margin-left: 10px;"></span></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="fileName"
						onchange="LoadImg(this)"></td>
				</tr>
				<tr>
					<th>이미지보기</th>
					<td>
						<div style="text-align: left;">
							<img id="img-view" width="300">
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="menuDetail">메뉴 설명</label></th>
					<td><textarea rows="3" cols="50" name="menuDetail"
							id="menuDetail" class="form-control" style="resize: none;"></textarea>
					</td>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;"><input
						type="submit" class="btn btn-primary btn-lg" value="등록하기"></th>
				</tr>
			</table>
		</form>
	</div>
	<div style="margin: 0 auto; width: 1300px;">
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
	<script src="/CEO/js/checkReg/checkRegMenu.js"></script>
	<script type="text/javascript">
		// 이미지 보기
		function LoadImg(file) {
			if (file.files.length != 0 && file.files[0] != 0) {
				var reader = new FileReader();

				reader.readAsDataURL(file.files[0]);
				reader.onload = function(e) {
					$("#img-view").attr('src', e.target.result);
				}
			} else {
				$("#img-view").attr('src', '');
			}
		}
	</script>
</body>
</html>