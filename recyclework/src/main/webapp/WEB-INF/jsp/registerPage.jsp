<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/registerCSS/registerCSS.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/animate.min.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/myCSS.css"/>
		<script src="../JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<title>loginPage</title>
	</head>
	<body class="clearfix">
		<!-- 内容 -->
		<div class="register-charlet d-flex justify-content-center align-items-center">
					<img class="h-70" src="../images/registerImages/register办公.png" alt="">
			</div>
			
			
			<div class="register-table d-flex flex-column justify-content-center align-items-center animated wobble" >
					<h1 class="font-weight-bolder">创建账户</h1>
					<form action="JavaScript:;" method="">
						<ul class="d-flex flex-column table h-100">
							<li>
								<p class="p">用户名</p>
								<input type="text" name="name"  value="" class="alias"/>
							</li>
							<li>
								<p class="p">账号</p>
								<input type="text" name="username"  value="" class="username"/>
							</li>
							<li>
								<p class="p">密码</p>
								<input id="password" type="password" name="password"  value="" class="password"/>
							</li>
							<li>
								<p class="p">确认密码</p>
								<input id="insurePassword" type="password" name="insurePassword"  value=""/>
							</li>
							<li>
								<p class="p">邮箱</p>
								<input type="email" name="phone"  value="" class="mailbox"/>
							</li>
							<li>
								<button id="registerButton" class="btn btn-primary" type="submit">注册</button>
							</li>
						</ul>
					</form>
					<p class="p">已有账号？
			      <a class="go-login" href="/">点我去登录</a>
			      </p>
				</div>
				<!-- 内容 end-->
				
				<!-- 提示框 -->
				<div id="passwordNotEqually" class="alert alert-danger " role="alert">
				两次密码不一致
				</div>
				
				<div id="registerSuccess" class="alert  alert-success" role="alert">
				 注册成功
				</div>
				<!-- 提示框 end-->
				
				<%--<script src="../JS/public/alert.js" type="text/javascript" charset="utf-8"></script>--%>
				<%--<script src="../JS/registerJS/register.js" type="text/javascript" charset="utf-8"></script>--%>
		<script type="application/javascript">
			$(function () {
				$('#registerButton').click(function () {
					var alias = $('.alias').val();
					var username = $('.username').val();
					var password = $('.password').val();
					var mailbox = $('.mailbox').val();
					var date = {"alias": alias, "username": username, "password": password, "mailbox": mailbox};
					$.ajax({
						url: "http://localhost:8585/recycle-platform/reg-sure",
						type: 'post',
						contentType: 'application/json;charset=UTF-8',
						data:  JSON.stringify(date),
						success: function (data) {
							if(data == 1){
								alert("账户重复");
							}else if(data == 2){
								alert("邮箱重复");
							}else{
								alert("注册成功");
								location.href="/";
							}
						},
					});
				});
			});
		</script>
	</body>
</html>
