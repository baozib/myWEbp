<template>
	<div class="login-table d-flex flex-column">
		<h1>登录</h1>
		<!-- 表单 -->
		<form class="table" action="JavaScript:;" method="get">
			<ul class="h-80 d-flex flex-column">
				<li>
					<!-- 提示 -->
					<p class="p">你的账号</p>
					<input type="text" name="username">
				</li>
				<li>
					<!-- 提示 -->
					<p class="p">你的密码</p>
					<input type="password" name="password">
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
      <a href="127.0.0.1:8848/JSPWeb/view/indexPage.html" class="go-login"> 点我去注册</a>
      </p>
	</div>
</template>

<script>
	module.exports = {
		name: "loginTable"
	}
</script>

<style>
	.login-table {
		box-shadow: 0 0 3px 3px #e5e5e5;
		text-align: center;
	}

	.login-table>* {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-grow: 1;
	}


	.login-table h1 {
		font-size: 50px;
		font-weight: 900;
	}

	.login-table .table {
		align-items: flex-start;
	}

	.login-table .table ul>li {
		flex-grow: 1;
	}

	.login-table .table input {
		width: 200px;
		text-indent: 2em;
	}

	.login-table .table input[name="username"] {
		
		outline: none;
		border: none;
		background-color: #dcefff;
		border-radius: 20px;
	}

	.login-table .table input[name="password"] {
		outline: none;
		border: none;
		border-radius: 20px;
		box-shadow: 0px 5px 5px 2px #d6cbca;
	}

	.login-table .table a:hover {
		color: #000000;
	}

	.login-table .table .login-button {
		width: 100px;
	}

	

	.login-table .go-login {
		  color: #20c997 ;
		  cursor: url(/images/loginImages/login指针.png) , auto;
	}
</style>
