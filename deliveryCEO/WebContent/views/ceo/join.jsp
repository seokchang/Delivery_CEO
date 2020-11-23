<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="join.css">
    <title>Document</title>
</head>

<body>
    <div class="inner">
        <div class="content">
            <div class="logoinner">
                <div class="logo">
                    <p>모방의민족</p>
                </div>
                
                    <div class="join">
                    <form name="/join" method='post' id="ceoJoin">
                        필수 정보를 입력해주세요.
                        <input type="text" name="ceoId" id="id" class="a" placeholder="아이디*(4~20자)" required>
                        <input type="password" name="ceoPw" id="pw" class="a" placeholder="비밀번호*(영문+숫자,8~20자 영어먼저)"
                            required>
                        <input type="text" name="ceoName" id="name" class="a" placeholder="이름* " required>
                        <input type="number" name="ceoTel" id="tel" class="a" placeholder="휴대폰*(-빼고 쓰세요) "
                            required>
                        <input type="text" name="ceoAddr" id="addr" class="a" placeholder="주소* " required>
                        <br>
                        <br>
                        <div class="checkbox_group">
                            <input type="checkbox" id="check_all"><b>전체 약관에 동의합니다.</b>
                            <br>
                            <br>
                            <br>
                            <input type="checkbox" id="check_1">필수 항목에 동의합니다.
                            <ul>
                                <li class="b"><a href="#">배민사장님광장 이용약관</a></li>
                                <li class="b"><a href="#">개인정보 수집이용 동의</a></li>
                            </ul>
                            <br>
                            <br>
                            <input type="checkbox" id="check_2">광고성 정보 수신 동의 (선택)
                        </div>
                        <ul>
                            <li class="b" style="color: gray;">배민사장님광장 회원에게 제공하는 서비스의 광고성 정보를 수신합니다.<br><br></li>
                            
                           
                            
                            <li class="c">만 14세 이상 회원만 가입 가능합니다. <a href="#">내용보기</a></li>
                        </ul>
                        <input type="submit" value="회원가입" class="a" style="background-color:#1a7cff;">
                        </form>
                    </div>
                
            </div>
        </div>

    </div>
</body>
<style>
body{
    margin:0;
    padding:0;
}
.inner{
    width:25%;
    margin:0 auto;
}
div.content{
    width:100%;
    height:900px;
}
div.logo{
    width:100%;
    height:200px;
    line-height:200px;
    font-size:30px;
}
p{
    margin:0;
    padding:0;
    text-align:center;

}
.a{
    width:100%;
    height:40px;
    margin-top:15px;
}
.join{ 
    width:100%;
}
.logoinner{
    width:80%;
    margin:0 auto;
}
input:nth-child(5){
    width:100%;
    height:40px;    
}
b{
    font-size:20px;
}
h3{
    margin:0;
    padding:0;
}
.b{
    font-size:11px;
    float:left;
    margin-left:10px;
    margin-top:-8px;
    list-style-type: none;
}
a{
    color:gray;
}
.c{
    color:gray;
    font-size:11px;
}



</style>
<script>
    $(function () {
        //아이디 유효성검사
        $("#id").focusout(function (e) {
            var regExp = /^[a-z0-9A-Z]{4,20}$/;
            if (!regExp.test($("#id").val())) {
                alert("4~20글자 사이에 입력해주세요.");
                $("#id").val("");
                $("#id").focus();
            }
        });

        //비밀번호 유효성검사        (수정해야댐 정규식)
        $("#pw").focusout(function (e) {
            var regExp = /^[a-zA-Z]+[0-9]{8,20}$/;
            if (!regExp.test($("#pw").val())) {
                alert("영어+숫자,8~20자 입력해주세요 (영어먼저)");
                $("#pw").val("");
                $("#pw").focus();
            }
        });
        //휴대폰 유효성 검사     
        $("#phone").focusout(function (e) {
            var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/
            if (!regExp.test($("#phone").val())) {
                alert("휴대폰번호를 확인해주세요");
                $("#phone").val("");
                $("#phone").focus();
            }


        });
        // 체크박스 전체 선택
        $(".checkbox_group").on("click", "#check_all", function () {
            $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
        });

        // 체크박스 개별 선택
        $(".checkbox_group").on("click", ".normal", function () {
            var is_checked = true;

            $(".checkbox_group .normal").each(function () {
                is_checked = is_checked && $(this).is(":checked");
            });

            $("#check_all").prop("checked", is_checked);
        });
    });


</script>


</html>