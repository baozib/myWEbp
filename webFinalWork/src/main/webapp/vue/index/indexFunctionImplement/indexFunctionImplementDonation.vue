<!-- 功能实现块 -->
<template>
	<!-- 宽度占比90%，高度占比100% -->
	<div class="index-function-implement-donation index-function-implement-item">
		<ul class="row  item-show">
			
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>

			</li>
			
			<li class="col-4 item">
			
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			
			</li>
			
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			
			<li class="col-4 item">
				<div class="card" style="width: 18rem;">
					<img src="../../../../OXConfig/img/index/demoImage.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of
							the card's content.</p>
					</div>
				</div>
			</li>
			

		</ul>
		
		<div class="load-more w-20 ">
			load-more...
		</div>
	</div>
</template>

<script>
	module.exports ={
		name: "indexFunctionImplementDonation"
	}
</script>

<style>
	.index-function-implement-donation {
		background-color: #ffffff;
		border-radius: 25px;
	}

	.index-function-implement-donation .item-show  {
		height: 95%;
		padding: 5px;
		overflow: scroll;
		flex-wrap: wrap;
		overflow-y: scroll;
		margin: 0;
		transform-style: preserve-3d;
		/*perspective: 500;*/
		perspective-origin: 50% 50%;
	}
	
	.item-show .item{
		display: flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 20px;	
	}
	
	.item-show .card:hover{
		animation:cardTransform 1s ;
		box-shadow: 0 0 5px 5px #d5d5d5;
	}
	
	.index-function-implement-donation .load-more{
		border: 1px solid #b0aea6;
		border-radius: 30px;
		margin: 0 auto;
		cursor: pointer;
	}
	
	@keyframes cardTransform{
		20%{
			transform: rotateX(20deg) rotateY(20deg) rotateZ(20deg);
		}
		
		
	}
</style>
