//输入邮箱和电话的检查


// 输入合法字体为绿色，不合法为红色,一开始为红色
// 1.获取输入邮箱和输入电话
const JinputUserEmail = $("#inputUserEmail");
const JinputUserPhone = $("#inputUserPhone");



// 2.绑定改变事件

$(document).on("keyup", "#inputUserEmail", function() {
	let email = $(this).val();

	let reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
	if (reg.test(email)) {
		$(this).css("color", "green")
	} else {
		$(this).css("color", "red")
	}

})

$(document).on("change", "#inputUserEmail", function() {
	let email = $(this).val();

	let reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
	if (reg.test(email)) {
		$(this).css("color", "green")
	} else {
		$(this).css("color", "red")
	}

})

$(document).on("keyup", "#inputUserPhone", function() {
	let phone = $(this).val();

	console.log(1);
	if (/^1[3456789]\d{9}$/.test(phone)) {
		// 正确
		$(this).css("color", "green")
		
	} else {
		// 错误
		$(this).css("color", "red")
	}

})

$(document).on("change", "#inputUserPhone", function() {
	let phone = $(this).val();
	if (/^1[3456789]\d{9}$/.test(phone)) {
		// 正确
		$(this).css("color", "green")
		
	} else {
		// 错误
		$(this).css("color", "red")
	}

})
