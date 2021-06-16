<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%--<link rel="stylesheet" type="text/css" href="CSS/myCSS/bootstrap.css"/>--%>
		<link rel="stylesheet"  href="CSS/myCSS/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/animate.min.css"/>
		<link href="https://cdn.bootcdn.net/ajax/libs/mui/3.7.1/css/mui.min.css" rel="stylesheet">

		<link rel="stylesheet" type="text/css" href="CSS/myCSS/myCSS.css"/>
		<link rel="stylesheet" type="text/css" href="CSS/loginCSS/login-charletCSS.css">
		<link rel="stylesheet" type="text/css" href="CSS/loginCSS/login-tableCSS.css">

		<script src="https://unpkg.com/vue"></script>
		<script src="https://unpkg.com/http-vue-loader"></script>
		<script src="JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/loginJS/login.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
				box-sizing: border-box;
				text-align: center;
			}
				
				.login-page{
						width: 100%;
						height: 100vh;
						background-color: #ffffff;
					}
					.login-charlet{
						float: left;
						width: 60%;
						height: 100%;
					}
					.login-table{
						float: left;
						width: 40%;
						height: 100%;
					}
		</style>
		<title></title>
	</head>
	<body>
<div class="login-page ">
		<login-charlet class="login-charlet"></login-charlet>
		<login-table class="login-table animated rubberBand"></login-table>
	</div>

<template id="loginCharlet">
	<!-- 占比页面的60% -->
	<div class="loginCharlet">
		<img class="tree"  src="images/loginImages/login大树.png">
	</div>
</template>


<template id="loginTable">
	<div class="login-table d-flex flex-column">
		<h1>登录</h1>
		<!-- 表单 -->
		<form class="table" action="JavaScript:;" method="get">
			<ul class="h-80 d-flex flex-column">
				<li>
					<!-- 提示 -->
					<p class="p">你的账号</p>
					<input type="text" name="username" class="username">
				</li>
				<li>
					<!-- 提示 -->
					<p class="p">你的密码</p>
					<input type="password" name="password" class="password">
				</li>
				<li>
					<a class="p" href="#">联系我们</a>
				</li>
				<li>
					<button class="login-button btn btn-success" type=" submit">LOGIN IN</button>
				</li>
			</ul>
		</form>

		<p>还没有账号？
			<a href="register" class="go-login"> 点我去注册</a>
		</p>
	</div>
</template>
		<script type="text/javascript">
			$(function(){
				$('.login-button').click(function () {
					var username = $('.username').val();
					var password = $('.password').val();
					$.ajax({
						url:  'http://localhost:8888/go/bz_initial?action=login',
						type: 'post',
						data: {"username":username,
							   "password":password}	,
						success: function (msg) {
							alert(msg);
							location.href="/indexpage";
						},
					});
				});
			});

			const loginCharlet= Vue.component("login-charlet",{
				template: "#loginCharlet"
			});

			const loginTable= Vue.component("login-table",{
				template: "#loginTable"
			});

			const vm = new Vue({
				el: ".login-page",
				components: {
					'login-charlet': loginCharlet,
					'login-table': loginTable
				}
			});



		</script>
	</body>
</html>
