<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
    	String pageNavi = (String)request.getAttribute("pageNavi");
    %>
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/header/style.css">
<link rel="stylesheet" href="/css/header/responsive.css">
<script type="text/javascript" src="/js/bootstrap.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#pageNavi>* {
	marin: 10px;
}

.selectPage {
	font-size: 18px;
	color: blue;
}

.blank2 {
	height: 600px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="blank2"></div>
	<section>
	<div class="table-wrapper" style="text-align: center; width: 80%; margin: 0 auto;">

		<table class="table table-striped">
			<tr>
				<th colspan="4" style="font-size: 20px; font-weight: bold; font-size: 30px;">공지사항</th>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<%for (Notice n : list) {%>
			<tr>
				<th><%=n.getrNum() %></th>
				<th><a href="/CEO/noticeView?noticeNo=<%=n.getNoticeNo()%>"><%=n.getNoticeTitle() %></a></th>
				<th><%=n.getNoticeAdminId() %></th>
				<th><%=n.getNoticeEnroll() %></th>
				<%} %>
			
		</table>
		<div id="pageNavi"><%=pageNavi %></div>
	</div>
	</section>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>