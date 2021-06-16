// 注册JS

// 点击注册按钮
$("#registerButton").click(function(){
	// 检查两次输入的密码是否一致
	let passwordt=$("#password").val();
	let insurePassword=$("#insurePassword").val();
	
	// 如果一样就跳出提示框，后两秒跳转到登录界面
	if(passwordt===insurePassword){

		// 让注册成功提示框显示出来
		 /*$("#registerSuccess").show();
		 window.setTimeout(function(){
			
		 	 
			  //window.location.assign("http://127.0.0.1:8848/JSPWeb/view/loginPage.html");
		 },2000);*/
		
		// 发送ajax
	}else{
		// 失败就跳出失败提示框
		
		$("#passwordNotEqually").show();
		 
		window.setTimeout(function(){
			// 让验证码错误提示框隐藏
		    $("#passwordNotEqually").hide();
		},2000);
		
	}

	
})