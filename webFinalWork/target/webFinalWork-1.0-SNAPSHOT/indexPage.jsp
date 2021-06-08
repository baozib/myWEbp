<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/animate.min.css" />


		<link rel="stylesheet" type="text/css" href="CSS/myCSS/myCSS.css" />
		<link rel="stylesheet" type="text/css" href="CSS/indexCSS/indexCSS.css" />
		<link rel="stylesheet" type="text/css" href="CSS/indexCSS/index-status.css" />
		<link rel="stylesheet" type="text/css" href="CSS/indexCSS/index-garage.css" />
		<link rel="stylesheet" type="text/css" href="CSS/indexCSS/index-donation-list.css" />
		<link rel="stylesheet" type="text/css" href="CSS/indexCSS/modal-bodyCSS.css" />

		<script src="JS/vue.js" type="text/javascript" charset="utf-8"></script>

		<script src="JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/vue-router.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/vuex.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/indexJS/comment.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/indexJS/person.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/indexJS/index.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
				box-sizing: border-box;
			}
		</style>
		<title>用户界面</title>
	</head>
	<body>
		<div class="index-page">
				<index-side-fence></index-side-fence>
				<router-view ></router-view>		
			</div>
		</template>

		<!-- indexSideFence 侧边栏 -->
		<template id="indexSideFence">
			<!-- 宽度为10%高度100% -->
			<div class="index-side-fence d-flex flex-column justify-content-center align-items-center">
				<div class="header-image d-flex  justify-content-center align-items-center" >
					<img :src="this.$store.state.person.headerPath"
					 data-toggle="modal" data-target="#alterHeaderModal">
				</div>
				<ul class="service d-flex flex-column justify-content-center align-items-center">
					<li>
						<router-link :to="{name:'personMessgae'}"><img src="images/indexImages/个人信息.png" title="个人信息">
						</router-link>
					</li>
					<li>
						<router-link :to="{name:'donation'}" ><img src="images/indexImages/捐赠.png" title="爱心捐赠"></router-link>
					</li>
					<li>
						<router-link :to="{name:'status'}"><img src="images/indexImages/身份.png" title="身份申请"></router-link>
					</li>
					<li>
						<router-link :to="{name:'garage'}"><img src="images/indexImages/物资库.png" title="物资库"></router-link>
					</li>
					<li>
						<router-link :to="{name:'donationList'}"><img src="images/indexImages/购物车.png" title="捐赠列表">
						</router-link>
					</li>
				</ul>
				
				<!-- 更换头像拟态框 -->
				<div class="modal fade" id="alterHeaderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="alterHeaderModalLabel">更换头像</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <p>选择图片</p>
						<input type="file" name="" id="avatar" value=""/>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">不更改图片</button>
				        <button type="button" class="btn btn-primary">确认更改图片</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</template>

		<!-- indexFuctionImplementDonation 捐赠信息-->
		<template id="indexFuctionImplementDonation">
			<!-- 宽度占比90%，高度占比100% -->
			<div class="index-function-implement-donation index-function-implement-item">
				<ul class="row  item-show">

					<li class="col-4 item">
						<div class="card" style="width: 18rem;" data-toggle="modal" data-target="#donation-pop">
							<img src="images/indexImages/demoImage.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text">Some quick example text to build on the card title and make up the
									bulk of
									the card's content.</p>
							</div>
						</div>

					</li>

					<li class="col-4 item">
						<div class="card" style="width: 18rem;" data-toggle="modal" data-target="#donation-pop">
							<img src="images/indexImages/demoImage.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text">Some quick example text to build on the card title and make up the
									bulk of
									the card's content.</p>
							</div>
						</div>

					</li>

					<li class="col-4 item">
						<div class="card" style="width: 18rem;">
							<img src="images/indexImages/demoImage.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text">Some quick example text to build on the card title and make up the
									bulk of
									the card's content.</p>
							</div>
						</div>

					</li>

				</ul>

				<div class="load-more w-20 ">
					load-more...
				</div>


				<div class="modal fade" id="donation-pop" tabindex="-1" role="dialog"
					aria-labelledby="donation-popModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="donation-popModalCenterTitle">爱心捐赠</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<ul class="show-stock h-70  d-flex flex-column  align-items-center">

									<li class="stock-item w-90 d-flex h-10 ">
										<p>种类</p>
										<input type="image" name="" src="images/loginImages/login大树.png" />
										<input type="checkbox" name="ensure-donation" id="" value="" />
									</li>



								</ul>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">取消捐赠</button>
								<button type="button" class="btn btn-primary">确认捐赠</button>
							</div>
						</div>
					</div>
				</div>




			</div>
		</template>


		<!--  indexFuctionImplementMessage 个人信息 -->
		<template id="indexFuctionImplementMessage">
			<div class="index-function-implement-item index-function-implement-person-message">
				<!--    左侧贴图-->
				<div class="left-image w-60 h-100 float-left">

				</div>
				<!--    右侧功能块-->
				<div
					class="right-function-block w-40 float-left h-100 d-flex justify-content-center align-items-center">
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
								<p>密码：</p>
							</div>
							<div class="content float-right w-60">
								<input type="text" name="username" placeholder="您的密码">
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left">
								<p>确认密码：</p>
							</div>
							<div class="content float-right w-60">
								<input type="password" name="password" placeholder="请您确认密码">
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
								<span>{{this.$store.state.person.name}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>密码：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.password}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>出生日期：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.birthday}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>邮箱：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.email}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>电话：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.phone}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>性别：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.sex}}</span>
							</div>
						</li>
						<li class="clearfix">
							<div class="label float-left ">
								<p>身份：</p>
							</div>
							<div class="content float-right w-60">
								<span>{{this.$store.state.person.personalStatus}}</span>
							</div>
						</li>
						<li>
							<button class="btn btn-info" @click="showMessageEvent">更改信息</button>
						</li>
					</ul>
				</div>

			</div>
		</template>


		<!--   indexFuctionImplementStatus 身份申请-->
		<template id="indexFuctionImplementStatus">
			<div class="index-function-implement-item index-fuction-implement-status">
				<div class="select-status h-50 row">
					<!-- 身份只能选择快递小哥跟困难人员 -->

					<div class="card col-6 justify-content-center align-items-center h-100" style="width: 18rem;">
						<img class="h-60" src="images/indexImages/快递员.png" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">快递员</p>
						</div>
						<div class="expresser">
							<input type="radio" name="status" value="expresser" />
						</div>
					</div>

					<div class="card col-6 justify-content-center align-items-center h-100" style="width: 18rem;">
						<img class="h-60" src="images/indexImages/快递员.png" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">困难人士</p>
						</div>
						<div class="expresser">
							<input type="radio" name="status" value="difficultPeople" />
						</div>

					</div>

				</div>

				<!-- 上传图片和证明 -->
				<div class="image-promise h-40 w-100 d-flex justify-content-center align-items-center flex-column">
					<input class="text-center" class="promise" type="file" name="promise" value="" />
					<p>选择你的图片证明</p>
				</div>

				<!-- 提交选项和证明 -->
				<div class="submit-promise h-10 w-100 d-flex justify-content-center align-items-center">
					<button class="btn btn-success" type="submit">提交</button>
				</div>
			</div>
		</template>

		<!-- indexFuctionImplementGarage 物资库 -->
		<template id="indexFuctionImplementGarage">
			<div
				class="index-function-implement-item index-fuction-implement-garage d-flex flex-column justify-content-center align-items-center">

				<!-- 搜索栏 -->
				<div class="search-fence w-80 h-10 row align-items-center">
					<div class="type-to col-6">
						<span>种类：</span>
						<select>

							<option v-for="garage in this.$store.state.garageArr" v-for="garage in this.$store.state.garageArr" :value="garage.type">{{garage.type}}</option>
						</select>
					</div>

					<div class="timer-select col-6">
						<span>时间：</span>
						<input type="date" name=""  value="" />
					</div>
				</div>

				<!-- 展示库存高占比90% -->
				<ul class="show-stock h-70 w-80 d-flex flex-column  align-items-center">



					<li class="stock-item w-90 d-flex h-10 " v-for="garage in this.$store.state.garageArr" :date-garage-number="garage.garageNumber">
						<p>{{garage.type}}</p>
							<input type="image" name="" :src="garage.woodsImg" />
							<p>{{garage.time}}</p>
							<a href="JavaScript:;">删除</a>
						</li>
						

				</ul>

				<!-- 提交库存按钮 -->
				<div class="submit-stock h-10 d-flex flex-column justify-content-center align-items-center">
					<button class="btn btn-warning" type="button ">添加库存</button>
				</div>
			</div>
		</template>


		<!-- indexFuctionImplementDonationList 捐赠列表 -->
		<template id="indexFuctionImplementDonationList">
			<div
				class="index-function-implement-item index-fuction-implement-donation-list d-flex flex-column justify-content-center align-items-center">

				<!-- 搜索栏 -->
				<div class="serach-fence align-items-center w-90 row h-10" v-if="!isExpress">
					<div class="search-to col-6">
						<span>to：</span>
						<input type="text" name=""  />
					</div>
					<div class="time-select col-6">
						<span>时间：</span>
						<input type="date" name=""  value="" />
					</div>
				</div>

				<ul v-if="isGood" class="list-show w-90 h-80 d-flex flex-column align-items-center">

					
					<li v-for="donation in this.$store.state.donationArr" class="donation-item w-90 d-flex h-10 " :data-tag-number="donation.tagNumber">
						<p>捐赠者：{{donation.from}}</p>
						<input type="image" name="" src="images/loginImages/login大树.png" />
						<p>被捐赠者：{{donation.to}}</p>
						<p>{{donation.time}}</p>
						<a href="JavaScript:;" data-toggle="modal" data-target="#comment">评论</a>
					</li>
				</ul>


				<ul v-if="isPoor" class="list-show w-90 h-80 d-flex flex-column align-items-center">
					<li class="donation-item w-90 d-flex h-10 " >
						<p>被捐赠者：xxx</p>
						<input type="image" name="" src="images/loginImages/login大树.png" />
						<p>捐赠者：xxx</p>
						<p>时间</p>
						<a href="JavaScript:;" data-toggle="modal" data-target="#comment">评论</a>
					</li>
				</ul>


				<!-- Modal -->
				<div class="modal fade" id="comment" tabindex="-1" role="dialog" aria-labelledby="commentModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="commentModalLabel">给予评论</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>评语：</p>
								<textarea class="w-100 h-50">

						</textarea>

								<p>评分：</p>
								<ul class="comment-score d-flex justify-content-center">
									<li><img data-index="0" src="images/indexImages/差评星星.png"></li>
									<li><img data-index="1" src="images/indexImages/差评星星.png"></li>
									<li><img data-index="2" src="images/indexImages/差评星星.png"></li>
									<li><img data-index="3" src="images/indexImages/差评星星.png"></li>
									<li><img data-index="4" src="images/indexImages/差评星星.png"></li>
								</ul>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭评论</button>
								<button type="button" class="btn btn-primary">提交评论</button>
							</div>
						</div>
					</div>
				</div>


				<ul v-if="isExpress" class="list-show w-90 h-80  d-flex flex-column align-items-center">
					<li class="donation-item w-90 d-flex h-10 ">
						<p>捐赠者：xxx</p>
						<input type="image" name="" src="images/loginImages/login大树.png" />
						<p>被捐赠者：xxx</p>
						<p>时间</p>
						<a href="JavaScript:;">接单</a>
					</li>
				</ul>
			</div>
		</template>

		<!-- <script src="JS/indexJS/person.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/indexJS/index.js" type="text/javascript" charset="utf-8"></script> -->

		<script type="text/javascript">
			$(function(){
				$.ajax({
					url:  'http://localhost:8088/go/bz_donor?action=showType',
					type: 'post',
					success: function (msg) {
						alert(msg);
					},
				});
			});
		</script>
	</body>
</html>
