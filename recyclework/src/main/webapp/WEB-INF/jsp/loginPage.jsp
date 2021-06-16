<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/animate.min.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/loginCSS/login.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/myCSS.css"/>
		
		<link rel="stylesheet" type="text/css" href="../CSS/loginCSS/mimicry/forget-password.css"/>
		<script src="../JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<title>LoginPage</title>
	</head>
	<body class="clearfix">
		
		<!-- 内容 -->
		
		<!-- 左侧贴图 -->
		<div class="login-charlet w-60 float-left h-100">
			<img class="tree " src="../images/loginImages/login大树.png">
		</div>

		<!-- 右侧表单 -->
		<div class="login-table d-flex flex-column animated rubberBand">
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
						<a class="p" href="#" style="color: #009FFF;" data-toggle="modal" data-target="#forgetPasswordMimicry">忘记密码？</a>
					</li>
					<li>
							<button class="login-button btn btn-success" type=" submit">LOGIN IN</button>
					</li>
				</ul>
			</form>

			<p>还没有账号？
				<a href="/recycle-platform/reg" class="go-login"> 点我去注册</a>
			</p>
		</div>
		<!-- 内容 end-->
		
		
		<!-- 拟态框 -->
		
		<!-- 忘记密码拟态框 -->
			<div class="modal fade" id="forgetPasswordMimicry" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalCenterTitle">忘记密码</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
					  <!-- 内容 -->
			        <ul class="content h-70 w-90">
			        	<li>
							<span>新密码：</span><input id="newPassword" type="password" name="" id="null1" value="" />
						</li>
						<li>
							<span>确认密码：</span><input id="insurePassword" type="password" name="" id="null2" value="" />
						</li>
						<li>
							<span>请输入绑定的邮箱：</span>
							<div class="email">
								<input class="w-100" id="bindingEmail" type="email" name="" id="null3" value="" />
								<button id="getMask" class="btn btn-success" type="button">获取验证码</button>
							</div>
							
						</li>
						<li>
							<span>请输入验证码：</span><input id="inputMaskCode" type="text" name="" id="null4" value="" />
						</li>
			        </ul>
					<!-- 内容 end-->
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
			        <button id="insureSetNewPaasword" type="button" class="btn btn-primary" data-toggle="modal" data-target="#newPasswordMimicry">确认设置</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<!-- 忘记密码拟态框 end-->

			
		<!-- 拟态框 end-->
		
		
		<!-- 警告提示框 -->
		
		
		
		<div id="maskWorryAlert" class="alert alert-danger " role="alert">
		 验证码错误
		</div>
		
		<div id="passwordSetSuccess" class="alert  alert-success" role="alert">
		 密码设置成功
		</div>
		
		<!-- 警告提示框 end -->
		
		<script src="../JS/loginJS/loginForgetPassword.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="../JS/public/alert.js" type="text/javascript" charset="utf-8"></script>

		<script type="text/javascript">
			$(function(){
				$('.login-button').click(function () {
					var username = $('.username').val();
					var password = $('.password').val();
					$.ajax({
						url:  'http://localhost:8585/recycle-platform/login-process',
						type: 'post',
						data: {"username":username,
							"password":password}	,
						success: function (msg) {
							alert(msg);
							/*普通用户登入*/
							if(msg == 3){
								location.href="/recycle-platform/main-page";
							}else if(msg == 2){
								/*管理员登入*/
								location.href="/recycle-platform/manager";
							}else{
								/*账户密码错误*/
								alert("账户或密码错误");
							}
						},
					});
				});
			});
		</script>


	</body>

</html>
