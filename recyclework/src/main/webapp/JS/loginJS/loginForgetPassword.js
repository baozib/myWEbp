// 登录的忘记密码

// 一
// 1.给确认设置按钮添加单击事件
$(document).on("click","#insureSetNewPaasword",function(){
	
	
	// 二、给获取验证码按钮添加单击事件
	$(document).on("click","#getMask",function(){
		// 2.1获取邮箱的内容
		let email=$("#bindingEmail").val();
		console.log(email);
		// 2.2发送验证码
	})
	
	
	// 校正验证码
	// 如果不对跳出提示框，如果对了跳到登录界面
	let maskCode=$("#inputMaskCode").val();
	if("123"===maskCode){
		// 让密码设置成功提示框显示出来
		 $("#passwordSetSuccess").show();
		 window.setTimeout(function(){
			 // 让拟态框消失
			 $("#forgetPasswordMimicry").modal('hide');
		 	 // 让密码设置成功提示框隐藏
		      // $("#maskWorryAlert").hide();
			  window.location.assign("http://127.0.0.1:8848/JSPWeb/view/loginPage.html");
		 },2000);
		
		// 发送ajax
		
		
	}else{
		// 让验证码错误提示框显示出来
		 $("#maskWorryAlert").show();
		 
		window.setTimeout(function(){
			// 让验证码错误提示框隐藏
		    $("#maskWorryAlert").hide();
		},2000);
	}
	
	
	
	
})


