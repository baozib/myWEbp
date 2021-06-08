<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet"  href="CSS/myCSS/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="CSS/myCSS/animate.min.css"/>
	<link href="https://cdn.bootcdn.net/ajax/libs/mui/3.7.1/css/mui.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="CSS/myCSS/myCSS.css"/>
	<link rel="stylesheet" type="text/css" href="CSS/registerCSS/registerCSS.css"/>
	<script src="https://unpkg.com/vue"></script>
	<script src="https://unpkg.com/http-vue-loader"></script>
	<script src="../JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
	<title></title>

	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			box-sizing: border-box;
			text-align: center;
		}

		.register-page{
			width: 100%;
			height: 100vh;
			background-color: #ffffff;
		}
		.register-charlet{
			float: left;
			width: 60%;
			height: 100%;
		}
		.register-table{
			float: left;
			width: 40%;
			height: 100%;
			box-shadow: 0 0 3px 3px #e5e5e5;
		}

		.p {
			font-size: 1em;
			color: #b8b9ba;
		}
	</style>
</head>
<body >
<div class="register-page">
	<register-charlet class="register-charlet"></register-charlet>
	<register-table class="register-table animated wobble"></register-table>
</div>

<template id="registerCharlet">
	<div class="register-charlet d-flex justify-content-center align-items-center">
	</div>
</template>


<template id="registerTable">
	<div class="register-table d-flex flex-column justify-content-center align-items-center">
		<h1 class="font-weight-bolder">创建账户</h1>
		<form action="JavaScript:;" method="">
			<ul class="d-flex flex-column table h-100">
				<li>
					<p class="p">用户名</p>
					<input type="text" name="name" class="id" value="" />
				</li>
				<li>
					<p class="p">账号</p>
					<input type="text" name="username" class="username" value="" />
				</li>
				<li>
					<p class="p">密码</p>
					<input type="password" name="password" class="password" value="" />
				</li>
				<li>
					<p class="p">确认密码</p>
					<input type="password" name="ensurePassword" class="againPassword" value="" />
				</li>
				<li>
					<p class="p">邮箱</p>
					<input type="email" name="phone" class="mailbox"  value="" />
				</li>
				<li>
					<button class="btn btn-primary" type="submit">注册</button>
				</li>
			</ul>
		</form>
		<p class="p">已有账号？
			<a href="login" class="go-login" href="JavaScript:;">点我去登录</a>
		</p>
	</div>
</template>

<script type="text/javascript">

	$(function(){
		$('.btn').click(function () {
			var id = $('.id').val();
			var username = $('.username').val();
			var password = $('.password').val();
			var mailbox = $('.mailbox').val();
			$.post(
					"http://localhost:8088//go/bz_initial?action=register",
					{	"id"      :id,
						"username":username,
						"password":password,
						"mailbox" :mailbox
					},
					function (data) {
						if(data == -1){
							alert("账号重复")
						}else if(data == 0){
							alert("邮箱重复");
						}else{
							location.href="/login";
						}
					},
					"json"
			);
		});
	});

	const registerCharlet=Vue.component("register-charlet",{
		template: "#registerCharlet"
	})

	const registerTable=Vue.component("register-table",{
		template: "#registerTable"
	})
	const vm=new Vue({
		el: ".register-page",
		components: {
			'register-charlet': registerCharlet,
			'register-table': registerTable,
		}
	})
</script>

</body>
</html>
