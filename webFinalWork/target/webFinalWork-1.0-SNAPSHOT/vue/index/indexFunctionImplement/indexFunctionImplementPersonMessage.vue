<template>
	<div class="index-function-implement-item index-function-implement-person-message">
		<!--    左侧贴图-->
		<div class="left-image w-60 h-100 float-left">

		</div>
		<!--    右侧功能块-->
		<div class="right-function-block w-40 float-left h-100 d-flex justify-content-center align-items-center">
			<ul class="d-flex flex-column person-message h-80 w-50" v-if="changeMessage">
				<li class="clearfix">
					<div class="label float-left ">
						<p>姓名：</p>
					</div>
					<div class="content float-right w-60">
						<input type="text" name="name" placeholder="您的姓名">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>账号：</p>
					</div>
					<div class="content float-right w-60">
						<input type="text" name="username" placeholder="您的账号">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>密码：</p>
					</div>
					<div class="content float-right w-60">
						<input type="password" name="password" placeholder="您的密码">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>出生日期：</p>
					</div>
					<div class="content float-right w-60">
						<input type="date" name="birthday">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>邮箱：</p>
					</div>
					<div class="content float-right w-60">
						<input type="email" name="email" placeholder="请输入正确的邮箱">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>电话号码：</p>
					</div>
					<div class="content float-right w-60">
						<input type="tel" name="phone" placeholder="请输入您的电话号码">
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left">
						<p>性别：</p>
					</div>
					<div class="content float-right w-60">
						<input type="radio" name="sex" value="male">男
						<input type="radio" name="sex" value="female">女
					</div>
				</li>

				<li>
					<button type="submit" class="btn btn-primary" @click="changeMessageEvent">提交信息</button>
				</li>
			</ul>

			<ul class="d-flex flex-column person-message h-80 w-50" v-if="showMessage">
				<li class="clearfix">
					<div class="label float-left ">
						<p>姓名：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示姓名</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>密码：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示密码</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>出生日期：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示出生日期</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>邮箱：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示邮箱</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>电话：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示电话</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>性别：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示性别</span>
					</div>
				</li>
				<li class="clearfix">
					<div class="label float-left ">
						<p>身份：</p>
					</div>
					<div class="content float-right w-60">
						<span>显示身份</span>
					</div>
				</li>
				<li>
					<button class="btn btn-info" @click="showMessageEvent">更改信息</button>
				</li>
			</ul>
		</div>

	</div>
</template>

<script>
	module.exports = {
		name: "indexFunctionImplementPersonMessage",
		data: function() {
			return {
				changeMessage: false,
				showMessage: true
			}
		},

		methods: {
			changeMessageEvent() {
				this.changeMessage = false;
				this.showMessage = true;
			},
			showMessageEvent() {
				this.changeMessage = true;
				this.showMessage = false;
			}
		}
	}
</script>

<style scoped>
	.index-function-implement-person-message {
		background-color: white;

	}

	.left-image {
		background: url(../../../../OXConfig/img/index/personMessage.jpg) no-repeat;
		background-size: 100% 100%;
		border-radius: 25px 0px 0px 25px;
	}


	.person-message li {
		flex-grow: 1;
	}

	.person-message input[name="name"] {
		border: 1px solid #606060;
		background-color: white;
		border: 1px solid #606060;
	}

	.person-message input {
		height: 30px;
		border: none;
		text-indent: 1em;
		border-radius: 7px;
		background-color: #f1f4f5;
		vertical-align: middle;
		transition: all .5s;
	}

	.person-message input:focus {
		outline: none;
		transform: scale(1.2);
	}

	.person-message p {
		font-family: "youyuan";
	}

	.person-message span {
		font-weight: bolder;
		color: #298c91;
	}
</style>
