var msg = $(".msg");

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

// 전화번호 유효성 검사
function checkTel() {
	var tel = $("#storeTel").val();
	var msgTel = $(msg).eq(0);
	var regExp = /^(02|0[3-9]{1}[0-9]{1})-[0-9]{4}-[0-9]{4}$/;

	if (regExp.test(tel)) {
		msgTel.css("color", "green");
		msgTel.html("사용 가능한 전화번호 입니다.");

		return true;
	} else {
		msgTel.css("color", "red");
		msgTel.html("전화번호 형식이 맞지 않습니다.");

		return false;
	}
}

// 시작 시간 유효성 검사
function checkStartTime() {
	var startTime = $("#storeStartTime").val();
	var msgStart = $(msg).eq(1);
	var regExp = /^([0-1]{1}[0-9]{1}|2[0-4]{1}):([0-5]{1}[0-9]{1})$/;

	if (regExp.test(startTime)) {
		msgStart.css("color", "green");
		msgStart.html("시작 시간 확인");

		return true;

	} else {
		msgStart.css("color", "red");
		msgStart.html("입력 시간을 확인하세요.");

		return false;
	}
}

// 종료 시간 유효성 검사
function checkEndTime() {
	var endTime = $("#storeEndTime").val();
	var msgEnd = $(msg).eq(2);
	var regExp = /^([0-1]{1}[0-9]{1}|2[0-4]{1}):([0-5]{1}[0-9]{1})$/;

	if (regExp.test(endTime)) {
		msgEnd.css("color", "green");
		msgEnd.html("종료 시간 확인");

		return true;
	} else {
		msgEnd.css("color", "red");
		msgEnd.html("입력 시간을 확인하세요.");

		return false;
	}
}

$("#storeTel").keyup(function() {
	checkTel();
});

$("#storeStartTime").keyup(function() {
	checkStartTime();
});

$("#storeEndTime").keyup(function() {
	checkEndTime();
});

$("input[type=submit]").click(function() {
	var tel = checkTel();
	var start = checkStartTime();
	var end = checkEndTime();

	if (tel && start && end) {
		return true;
	} else {
		alert("입력 사항을 확인하세요.");

		return false;
	}
});