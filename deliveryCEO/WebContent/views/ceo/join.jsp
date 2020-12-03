
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<title>Document</title>
</head>

<body>
	<div class="inner">
		<div class="content">
			<div class="logoinner">
				<div class="logo">
					<p>
						<a href="/CEO" style="text-decoration: none;"><img src="/CEO/img/logo100.png" alt="My Image"></a>
					</p>
				</div>

				<div class="join">
					<form action="/CEO/join" method='post' id="ceoJoin">
						필수 정보를 입력해주세요. <input type="text" name="ceoId" id="id" class="a" placeholder="아이디*(4~20자)"
							required><span id="idChkMsg"></span> <input type="password" name="ceoPw" id="pw"
							class="a" placeholder="비밀번호*(영문+숫자,8~20자 영어먼저)" required> <input type="text"
							name="ceoName" id="name" class="a" placeholder="이름* " required> <input type="text"
							name="ceoTel" id="tel" class="a" placeholder="휴대폰*(-빼고 쓰세요) " required> <input
							type="text" name="ceoAddr" id="addr" class="a" placeholder="주소* " required> <br>
						<br>
						<div class="checkbox_group">
							<input type="checkbox" id="check_all"><b>전체 약관에 동의합니다.</b> <br> <br> <br>
							<input type="checkbox" id="check_1" required>필수 항목에 동의합니다.
							<ul>
								<li class="b"><a href="/CEO/views/ceo/joinAgreeMent.jsp">배민사장님광장 이용약관</a></li>
								<li class="b"><a href="/CEO/views/ceo/joinAgreeMent.jsp">개인정보 수집이용 동의</a></li>
							</ul>
							<br> <br> <input type="checkbox" id="check_2">광고성 정보 수신 동의 (선택)
						</div>
						<ul>
							<li class="b" style="color: gray;">배민사장님광장 회원에게 제공하는 서비스의 광고성 정보를 수신합니다.<br> <br></li>
							<li class="c">만 14세 이상 회원만 가입 가능합니다. <a href="/CEO/views/ceo/joinAgreeMent.jsp">내용보기</a></li>
						</ul>
						<!--  <input type="submit" value="회원가입" class="a" style="background-color: #1a7cff;">-->
						<button class="btn btn-default" type="submit" style="width:100%;height: 40px;" >회원가입</button>
					</form>
				</div>

			</div>
		</div>

	</div>
</body>
<style>
body {
	margin: 0;
	padding: 0;
}

.inner {
	width: 25%;
	margin: 0 auto;
}

div.content {
	width: 100%;
	height: 900px;
}

div.logo {
	width: 100%;
	height: 200px;
	line-height: 200px;
	font-size: 30px;
}

p {
	margin: 0;
	padding: 0;
	text-align: center;
}

.a {
	width: 100%;
	height: 40px;
	margin-top: 15px;
}

.join {
	width: 100%;
}

.logoinner {
	width: 80%;
	margin: 0 auto;
}

input:nth-child(5) {
	width: 100%;
	height: 40px;
}

b {
	font-size: 20px;
}

h3 {
	margin: 0;
	padding: 0;
}

.b {
	font-size: 11px;
	float: left;
	margin-left: 10px;
	margin-top: -8px;
	list-style-type: none;
}

a {
	color: gray;
}

.c {
	color: gray;
	font-size: 11px;
}
</style>
<script>
	$(function() {
		//아이디 유효성검사
		$("#id").focusout(function(e) {
			var regExp = /^[a-z0-9A-Z]{4,20}$/;
			if (!regExp.test($("#id").val())) {
				alert("4~20글자 사이에 입력해주세요.");
				$("#id").val("");
				$("#id").focus();
			}
		});

		//비밀번호 유효성검사        (수정해야댐 정규식)
		$("#pw").focusout(function(e) {
			var regExp = /^[A-Za-z0-9]{6,12}$/;//숫자와 문자 포함 형태의 6~12자리 이내의 암호 정규식
			if (!regExp.test($("#pw").val())) {
				alert("숫자,문자 포함 6~12자 입력해주세요.");
				$("#pw").val("");
				$("#pw").focus();
			}
		});
		//휴대폰 유효성 검사     
		$("#phone").focusout(function(e) {
			var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/
			if (!regExp.test($("#phone").val())) {
				alert("휴대폰번호를 확인해주세요");
				$("#phone").val("");
				$("#phone").focus();
			}

		});
		// 체크박스 전체 선택
		$(".checkbox_group").on(
				"click",
				"#check_all",
				function() {
					$(this).parents(".checkbox_group").find('input').prop(
							"checked", $(this).is(":checked"));
				});

		// 체크박스 개별 선택
		$(".checkbox_group").on("click", ".normal", function() {
			var is_checked = true;

			$(".checkbox_group .normal").each(function() {
				is_checked = is_checked && $(this).is(":checked");
			});

			$("#check_all").prop("checked", is_checked);
		});
		$("#id").keyup(function() {
			var ceoId = $(this).val();
			$.ajax({
				url : "/CEO/ajaxCheckId",
				type : "get",
				data : {
					ceoId : ceoId
				},
				success : function(data) {
					var msg = $("#idChkMsg");
					if (data == 1) {
						msg.html('사용가능');
						msg.css('color', 'green');
					} else {
						msg.html('이미사용중인 아이디');
						msg.css('color', 'red');
					}
				}
			});
		});
	});
</script>
</html>