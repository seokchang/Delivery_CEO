<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div class="table-wrap">
			<table class="table table-striped">
				<tbody>
					<tr>
						<td>1</td>
						<td>
							<input type="checkbox" name="chkMenuBox">
						</td>
						<td>
							<img src="/img/tower1.PNG" width="150px;" height="150px;">
						</td>
						<td>
							메뉴 : <input type="text" name="menuName" value="후라이드"> <br> <br> 가격 : <input
								type="text" name="price" value="15,000"> <br> <br> 설명 : <input type="text"
								name="info" value="바삭하게 튀긴 치킨">
						</td>
						<td>
							<button type="button" class="btn btn-info">수정</button>
							<button type="button" class="btn btn-info">삭제</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<hr>
		<div class="btn-wrap">
			<button type="button" class="btn btn-primary">전체 수정</button>
			<button type="button" class="btn btn-primary">전체 삭제</button>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>