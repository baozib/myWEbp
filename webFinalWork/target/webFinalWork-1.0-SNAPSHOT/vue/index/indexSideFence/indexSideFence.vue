<!-- 主页侧边栏 -->
<template>
	<!-- 宽度为10%高度100% -->
	<div class="index-side-fence d-flex flex-column justify-content-center align-items-center">
		<div  class="header-image d-flex  justify-content-center align-items-center">
		<img  src="../../../images/indexImages/headerImage.jpg">
		</div>
		<ul class="service d-flex flex-column justify-content-center align-items-center">
			<li><router-link to="/index/personMessage" ><img src="../../../images/indexImages/个人信息.png"  title="个人信息"></router-link></li>
			<li><router-link to="/index/donation" ><img src="../../../images/indexImages/捐赠.png"  title="爱心捐赠"></router-link></li>
			<li><router-link to="" ><img src="../../../images/indexImages/身份.png"></router-link></li>
			<li><router-link to="" ><img src="../../../images/indexImages/物资库.png"  title="物资库"></router-link></li>
			<li><router-link to="" ><img src="../../../images/indexImages/购物车.png"  title="捐赠列表"></router-link></li>
		</ul>
	</div>
</template>

<script>
	module.exports ={
		name: "indexSideFence",
		data: function(){
			return {
				headerImage: "../../../images/indexImages/headerImage.jpg",
				
			}
		}
	}
</script>

<style>
	.index-side-fence{
		width: 10%;
		height: 100%;
		border-radius: 25px;
		background-color:#8080FF;
	}
	
	/* 头像占比1份 */
	.index-side-fence .header-image{
		position: relative;
		flex-grow: 1;
	}
	
	.index-side-fence .header-image img{
		width: 50px;
		border-radius: 50%;
	}
	
	.index-side-fence  .service{
		flex-grow: 9;
	}
	
		.index-side-fence  .service li {
			display: flex;
			justify-content: center;
			align-items: center;
			flex-grow: 1;
		}
		
		
	.index-side-fence  .service li img{
		width: 50px;
		transition: all .5s; 
	}
	
		.index-side-fence  .service li img:hover{
			transform: scale(1.5);
		}
	
</style>
