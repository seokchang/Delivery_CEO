<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index JSP</title>
</head>
<body>
	<!--  수정된 부분  -->
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Header JSP</title>
</head>

<body>
    <div class="container" style="margin-top: -10px;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <div class="one"></div>
                    <div class="carousel-caption"></div>
                </div>

                <div class="item">
                    <div class="two"></div>
                    <div class="carousel-caption"></div>
                </div>

                <div class="item">
                    <div class="three"></div>
                    <div class="carousel-caption"></div>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span
                    class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span>
            </a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span
                    class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="headermom">
        <div class="inner">
            <div class="header" style="margin-top: -10px">
                <div class="a">
                    <ul>
                        <li class="menu"><a href="#" style="color: black;">회원가입</a></li>
                        <li class="menu"><a href="#" style="color: black;">로그인</a></li>
                        <li class="menu"><a href="#" style="color: black;">고객센터</a></li>
                        <li class="menu"><a href="/selfServicePage" style="color: black;">셀프서비스</a></li>
                    </ul>
                </div>
                <div class="b">
                    <p style="margin-top: 10px;">
                        <a href="#" style="color: black;">모방의민족</a>
                    </p>
                </div>
                <div class="c"></div>
            </div>
        </div>
    </div>
    <div class="blank">
    </div>
    <hr>
    <br><br>
    <div class="inner">
        <div class="content">
            <div class="inner2">
                <div class="content1"></div>
                <div class="content2"></div>
                <div class="content1"></div>
                <div class="content2"></div>
                <div class="content1"></div>
                <div class="content2"></div>
            </div>

        </div>
    </div>
    <div class="inner">

        <div class="footer">
            <div class="footer1">
                <ul>
                    <li class="headermenu">(주)우아한형제들</li>
                    <li class="headermenu">배달의민족</li>
                    <li class="headermenu">회사소개</li>
                    <li class="headermenu">이용약관</li>
                    <li class="headermenu">광고서비스운영원칙</li>
                    <li class="headermenu">개인정보처리방침</li>
                </ul>
            </div>
            <div class="footer2">
                <ul>
                    <li class="menu2">사업자등록번호 : 120-87-65763사업자정보확인</li>
                    <li class="menu2">대표 : 김범준</li>
                    <li class="menu2">주소 : 서울 송파구 위례성대로 2, 장은빌딩 2층</li>
                    <li class="menu2">대표전화 : 1600-0987(유료),080-849-0987(무료)</li>
                    <li class="menu2">팩스: 050-6050-0400</li>
                    <li class="menu2">대표메일 : help@woowahan.com </li>
                </ul>
                <br><br>
                <h5>대면 상담센터 운영 - 운영시간 : (365일) 10:00 ~ 19:00, 찾아오시는길 : 서울특별시 송파구 백제고분로 478 순창빌딩 3F</h5>
            </div>
            <div class="footer3">

                <br>
                <h5 class="b">© Woowa Brothers Corp.</h5>




            </div>
        </div>
    </div>
</body>
<style>
    .inner2 {
        width: 80%;
        margin: 0 auto;
    }

    .content1 {
        width: 550px;
        height: 300px;
        background-color: red;
        float: left;
        margin-top: 30px;
        margin-left: 50px;
    }

    .content2 {
        width: 300px;
        height: 300px;
        background-color: black;
        margin-left: 70px;
        margin-top: 30px;
        float: left;
    }

    .content {
        width: 100%;
        height: 1000px;
        background-color: teal;
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

    div.one {
        width: 100%;
        height: 600px;
        background-color: hotpink;
    }

    div.two {
        width: 100%;
        height: 600px;
        background-color: orange;
    }

    div.three {
        width: 100%;
        height: 600px;
        background-color: darkmagenta;
    }

    div.container {
        width: 100%;
        position: absolute;
        margin: 0;
        padding: 0;
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

    div.headermom:hover {
        background-color: gray;
        color: gray;
    }

    body {
        margin: 0;
    }

    .inner {
        width: 70%;
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



</html>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
</body>
</html>