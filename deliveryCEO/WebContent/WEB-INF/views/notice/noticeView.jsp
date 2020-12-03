<%@page import="java.util.ArrayList"%>
<%@page import="notice.model.vo.NoticeComment"%>
<%@page import="notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   Notice n = (Notice)request.getAttribute("n");
   ArrayList<NoticeComment> list = (ArrayList<NoticeComment>)request.getAttribute("list");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/comment.css" />
</head>
<body>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>
   <div class="blank"></div>
   <section>
      <div class="table-wrapper" style="width:80%; margin:0 auto;">
         <table class="table table-bordered">
            <tr>
               <th colspan="2"><%=n.getNoticeTitle() %></th>
            </tr>
            <tr>
               <th>작성자</th>
               <td><%=n.getNoticeAdminId() %></td>
            </tr>
            <tr>
               <th>첨부파일</th>
               <td>
                  <%if(n.getFilename() != null) {%>
                  <img src="/img/file.png" width="16px" />
                  <a href="javascript:fileDownload('<%=n.getFilename()%>','<%=n.getFilepath()%>')">
                     <%=n.getFilename() %>
                  </a>
                  <%} %>
               </td>
            </tr>
            <tr>
               <th>내용</th>
              
            </tr>
            <tr>
               <th colspan="2">
                  <%if(ceo != null && ceo.getCeoId().equals(n.getNoticeAdminId())) {%>
                  <a href="/noticeUpdateFrm?noticeNo=<%=n.getNoticeNo() %>" class="btn btn-primary btn-sm">수정하기</a>
                  <a href="/noticeDelete?noticeNo=<%=n.getNoticeNo() %>" class="btn btn-primary btn-sm">삭제하기</a>
                  <%} %>
                  <a href="javascript:history.go(-1)" class="btn btn-primary btn-sm">목록으로</a>
               </th>
            </tr>
         </table>
         <%if(ceo != null) {%>
         <div class="inputComment">
            <form action="/insertNoticeComment" method="post">
               <ul>
                  <li>
                     <input type="hidden" name="noticeCommentLevel" value ="1" />
                     <input type="hidden" name="noticeCommentWriter" value ="<%=ceo.getCeoId() %>" />
                     <input type="hidden" name="noticeRef" value ="<%=n.getNoticeNo() %>" />
                     <input type="hidden" name="noticeCommentRef" value ="0" />
                     <textarea class="form-control" name="noticeCommentContent"></textarea>
                  </li>
                  <li>
                     <button class="btn btn-secondary btn-lg btn-block">등록</button>
                  </li>
               </ul>
            </form>
         </div>
         <%} %>	
         <style>
         .blank{
         height:600px;
         }
         
         </style>