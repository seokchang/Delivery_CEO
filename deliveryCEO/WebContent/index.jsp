<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
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

	<input type="hidden" class="btn" id="btnList" onclick="getList();">

	<script type="text/javascript">
		function getList() {
			location.href = "/CEO/indexNoticeList";

			console.log("test");
		}

		$(function() {
			var btn = $("#btnList")

			btn.trigger("click");
		});
	</script>

</body>
</html>