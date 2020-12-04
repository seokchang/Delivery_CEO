<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ceo.model.vo.Ceo"%>
<%
	int length = 5;
ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index JSP</title>
<!--  수정된 부분  -->
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/CEO/js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/CEO/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/css/header/style.css">
<link rel="stylesheet" href="/css/header/responsive.css"> -->
<script type="text/javascript" src="/CEO/js/bootstrap.js"></script>
<title>Header JSP</title>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="blank"></div>
	<hr>
	<br>
	<br>
	<div class="inner">
		<div class="content">
			<div class="inner2">
				<div class="content1">
					<div class="notice-wrap">
						<h3>공지사항</h3>
						<input type="hidden" class="btn" id="getList" onclick="getList();">
						<table class="table table-striped">
							<thead>
								<tr>

								</tr>
							</thead>
							<tbody>
								<%
									if (!list.isEmpty()) {
									if (list.size() >= length) {
										for (int i = 0; i < length; i++) {
								%>
								<tr>
									<td style="text-align: left;"><%=list.get(i).getNoticeTitle()%></td>
									<td><%=list.get(i).getNoticeEnroll()%></td>
								</tr>
								<%
									}
								} else {
								for (Notice notice : list) {
								%>
								<tr>
									<td style="text-align: left;"><%=notice.getNoticeTitle()%></td>
									<td><%=notice.getNoticeEnroll()%></td>
								</tr>
								<%
									}
								}
								}
								%>
							</tbody>
						</table>
						<div class="btn-wrap">
							<a class="btn btn-primary btn-md" href="/CEO/noticeList?reqPage=1">공지사항 더보기</a>
						</div>
					</div>
				</div>
				<div class="content2">
					<%if(ceo ==null) {%>
					
					<h2>사장님 로그인해주세요!</h2>
					<a class="btn btn-primary btn-md" href="/CEO/views/ceo/login.jsp"
						style="margin-top: 30px; width: 200px; height: 70px; line-height: 60px; margin-left: 50px;">사장님
						로그인하기</a> <br> <br> <br>
					<ul>
						<li><a href="/CEO/views/ceo/findId.jsp" style="font-size: 12px; color: gray;">아이디찾기</a> <a
							href="/CEO/views/ceo/findPw.jsp" style="font-size: 12px; color: gray;">비밀번호 찾기</a></li>
						<li><a href="/CEO/views/ceo/joinClick.jsp" style="font-size: 12px; color: gray;">회원가입</a></li>
					</ul>
				<%}else {%>
					<h2>[<%=ceo.getCeoId()%>]님 반갑습니다~</h2>
					<br>
					<br>
					 사장님의 가게부터 광고까지,<br>
							직접 간편하게 관리할 수 있도록 돕습니다.<br>
						    지금 우리 가게의 매력을 발굴해보세요.
					<a class="btn btn-primary btn-md" href="/CEO/mypage?ceoId=<%=ceo.getCeoId()%>"
						style="margin-top: 30px; width: 200px; height: 70px; line-height: 60px; margin-left: 50px;">마이페이지로 이동하기
						</a> <br> <br> <br>
					 		
					
				
				<%}%>
				</div>
				<div class="content1">
					<h3>배민아카데미</h3>
					<a
						href="https://academy.baemin.com/event/33?utm_source=ceopage&utm_medium=banner_family&utm_campaign=campaign_201201"><img
						src="/CEO/img/helmat.png" style="width: 600px; height: 350px;"></a>

				</div>
				<div class="content2">
					<h2>셀프서비스 이용하기!!</h2>
					<a class="btn btn-primary btn-md" href="/CEO/selfService?reqPage=1"
						style="margin-top: 10px; margin-bottom: 15px; width: 200px; height: 70px; line-height: 60px; margin-left: 50px;">셀프서비스
						바로가기</a>
					<iframe width="300" height="200" src="https://www.youtube.com/embed/FkkZQjZ_-oM"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<div class="content1">
					<h3>배민상회</h3>
					<a
						href="https://mart.baemin.com/goods/list/100475?utm_source=ceo&utm_medium=B_201120&utm_campaign=prod&utm_content=family%20banner&utm_term="><img
						src="/CEO/img/helmat2.png" style="width: 600px; height: 350px;"></a>
				</div>
				<div class="content2">
					<h3>고객센터</h3>
					<p style="color: orange; font-size: 25px; margin: 0; font-weight: bolder;">1600- 0987 (유료)</p>
					<br>
					<p style="color: orange; font-size: 25px; margin: 0; font-weight: bolder; margin-bottom: 30px;">080-849-0987(무료)</p>
					<a class="btn btn-primary btn-md" href="https://ceo.baemin.com/#/cscenter"
						style="margin-bottom: 20px; margin-top: -23px; width: 200px; height: 50px; line-height: 40px;">고객센터
						바로가기</a>
					<iframe width="300" height="200" src="https://www.youtube.com/embed/XTj4c5joupc"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>

				</div>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br><br>
	<br>

	<hr>
	<div class="footerinner">
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</div>
	
</body>
<style>
.content{
width:1300px;
height:1300px;
margin: 0 auto;
}
.footerinner{
width:1300px;
margin: 0 auto;}
.inner2 {
	width: 100%;
	margin: 0 auto;
}

.content1 {
	width: 600px;
	height: 300px;
	float: left;
	margin-top: 60px;
	border-top: 1px solid gray;
	margin-bottom: 50px;
}
.content11 {
	width: 600px;
	height: 300px;
	float: left;
	margin-top: 30px;
	border-top: 1px solid gray;
	margin-bottom: 50px;
}

.content2 {
	width: 450px;
	height: 300px;
	margin-left: 70px;
	margin-top: 60px;
	float:right;
	border-top: 1px solid gray;
	margin-bottom: 50px;
}

.content22 {
	width: 350px;
	height: 200px;
	margin-left: 70px;
	margin-top: -44px;
	float: left;
	border-top: 1px solid gray;
	margin-bottom: 50px;
}

.blank {
	height: 440px;
}

.inner {
	width: 70%;
	margin: 0 auto;
	position: relative;
}

.header {
	width: 100%;
	height: 150px;
	position: relative;
	z-index: 10;
}

body {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
	float: right;
	margin-left: 15px;
	font-size: 13px;
	color: white;
	margin-top: 10px;
}

ul {
	margin: 0;
	padding: 0;
}

div.a {
	width: 100%;
	height: 10px;
	text-decoration: none;
	color: gray;
}

div.b {
	width: 100%;
	height: 50px;
}

div.c {
	width: 100%;
}
p {
	font-size: 40px;
	color: white;
}

div.headermom {
	width: 100%;
	height: 150px;
	position: relative;
}

body {
	margin: 0;
}

.inner {
	width: 86%;
	margin: 0 auto;
}

ul {
	margin: 0;
}

div.footer {
	width: 100%;
	height: 200px;
}

div.footer1 {
	width: 100%;
	height: 50px;
}

div.footer2 {
	width: 100%;
	height: 60px;
}

div.footer3 {
	width: 100%;
	height: 70px;
	line-height: 50px;
}

li.menu2 {
	list-style-type: none;
	float: left;
	margin-right: 20px;
	font-size: 11px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

li.headermenu {
	list-style-type: none;
	float: left;
	margin-right: 20px;
	font-size: 11px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

li.menu {
	list-style-type: none;
	float: right;
	margin-right: 20px;
	font-size: 12px;
	color: #8e929f;
	font-weight: bolder;
	position: relative;
}

h5 {
	margin-top: 2px;
	margin-left: 40px;
	font-size: 12px;
	color: #8e929f;
	font-weight: bolder;
	margin-left: 14px;
}

h5.b {
	margin-top: -16px;
	margin-left: 14px;
}
</style>

</body>
</html>