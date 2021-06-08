<template>
	<div class="register-table d-flex flex-column justify-content-center align-items-center">
		<h1 class="font-weight-bolder">创建账户</h1>
		<form action="JavaScript:;" method="">
			<ul class="d-flex flex-column table h-100">
				<li>
					<p class="p">用户名</p>
					<input type="text" name="name"  value="" />
				</li>
				<li>
					<p class="p">账号</p>
					<input type="text" name="username"  value="" />
				</li>
				<li>
					<p class="p">密码</p>
					<input type="password" name="password"  value="" />
				</li>
				<li>
					<p class="p">确认密码</p>
					<input type="password" name="ensurePassword"  value="" />
				</li>
				<li>
					<p class="p">邮箱</p>
					<input type="email" name="phone"  value="" />
				</li>
				<li>
					<button class="btn btn-primary" type="submit">注册</button>
				</li>
			</ul>
		</form>
		<p class="p">已有账号？
      <a class="go-login" href="login">点我去登录</a>
      </p>
	</div>
</template>

<script>
	module.exports ={
		name: "registerTable"
	}
	
</script>

<style>
	
	.register-table>*{
		display: flex;
		flex-grow: 1;
		justify-content: center;
		align-items: center;
	}

.register-table .table li{
	flex-grow: 1;
}

.register-table .table li input{
	border: 1px solid #dadada;
	text-indent: 0em;
	outline: none;
	border-radius: 20px;
	transition: all .7s;
}

.register-table .table li input:focus{
	transform: scale(1.2);
  box-shadow: 0 0 3px 3px #e5e5e5;
}

	.go-login{
		cursor: url(../../images/registerImages/register指针.png) ,auto;
		color: #6f42c1 ;
	}
	
	
</style>
