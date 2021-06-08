<!-- 登录界面左侧贴图 -->
<template>
	<!-- 占比页面的60% -->
	<div class="loginCharlet">
		<img  class="tree " src="/images/loginImages/login大树.png" >
	</div>
</template>

<script>
	module.exports ={
		name: "loginCharlet"
	}
</script>

<style >
	.login-charlet{
		position: relative;
		background: url(/images/loginImages/login植树.png) no-repeat;
		background-position: center;
		background-size: 600px ;
	}
	.tree{
		position: absolute;
		left: 0;
		width: 150px;
	}
</style>
