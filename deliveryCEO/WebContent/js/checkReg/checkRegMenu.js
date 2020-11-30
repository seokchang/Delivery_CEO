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

function checkPrice() {
	var msg = $(".msg");
	var price = $("#menuPrice").val();
	var regExp = /^[1-9]{1}[0-9]{0,}$/;

	if (regExp.test(price)) {
		msg.css("color", "green");
		msg.html("가격 확인");

		return true;
	} else {
		msg.css("color", "red");
		msg.html("입력한 가격 정보를 확인하세요.");

		return false;
	}
}

$("#menuPrice").keyup(function() {
	checkPrice();
});

$("input[type=submit]").click(function() {
	var price = checkPrice();

	if (price)
		return true;
	else {
		alert("입력 정보를 확인하세요.");

		return false;
	}
});