<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>主界面</title>
		<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/animate.min.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/myCSS.css" />

		<!-- 外部CSS -->
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/public/public.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/index.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/side/side-fence.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/function-block.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/donation-template.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/personal-information-template.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/status-apply-template.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/goods-garage-template.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/function/donation-list-template.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/public/seek-image.css" />

		<!-- 外部CSS end-->

		<!-- 拟态框CSS -->
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/mimicryBox/donationMimicry.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/indexTwoCSS/mimicryBox/replaceHeaderImage.css" />
		<link rel="stylesheet" type="text/css"
			href="../CSS/indexTwoCSS/mimicryBox/lookDonationInformationMimicry.css" />
		<!-- 拟态框CSS end-->

		<script src="../JS/vue.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/vuex.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>

		<script src="../JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexJS/person.js" type="text/javascript" charset="utf-8"></script>

	</head>
	<body>



		<!-- 主界面页面 -->
		<!--因为里头的项目都是float的，所以清除浮动 -->
		<div id="indexPage" class="clearfix">


			<!-- 侧边栏 -->
			<!-- 侧边栏高100% width10% -->
			<div class="side-fence left-item h-100 w-10">

				<!-- 内容 -->
				<div class="container h-100 d-flex flex-column">

					<!-- 头像 -->
					<div class="header-image d-flex align-items-center justify-content-center">
						<img class="user-header-image  rounded-circle" :src="this.person.headerPath" data-toggle="modal"
							data-target="#alterHeaderModal">
					</div>
					<!-- 头像end -->

					<!-- 功能导航 -->
					<ul class="navigation d-flex flex-column">
						<li id="donationApply" v-if="isPoor">
							捐赠申请
						</li>
						<li id="loveDonation">
							爱心捐赠
						</li>
						<li id="personalInformation">
							个人信息
						</li>
						<li id="statusApply">
							身份申请
						</li>
						<li id="goodsGarage">
							物资库
						</li>
						<li id="donationList">
							捐赠列表
						</li>
					</ul>
					<!-- 功能导航end -->

				</div>
				<!-- 内容end -->

			</div>
			<!-- 侧边栏end -->


			<!-- 功能块 -->

			<div class="function-block left-item w-90 h-100">



				<!-- 捐赠模块 -->
				<div class="donation-template public-template  function-template d-none animated rollIn">

					<!-- 内容 -->
					<div class="container row donations w-100 h-90">


						<!-- 点击按钮跳出捐赠拟态框 -->



						<div class="card col-4" v-for="item in currentData" style="width: 18rem;">
							<img class="seek-image card-img-top" src="../images/indexImages/demoImage.jpg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">卡片标题</h5>
								<p class="card-text">困难信息</p>
								<button class="want-donation-button btn btn-success" type="button" data-toggle="modal"
									data-target="#donationPop">捐赠</button>
							</div>
						</div>




					</div>

					<!-- 内容 end-->

					<!-- 控制显示页面 -->
					<div class="control-page">
						<button class="btn btn-primary pre" type="button" @click="donaitonprePage">上一页</button>
						<ul class="total-page">
							<li v-for="donationButton in donationButtons" :data-page="donationButton"
								:value="donationButton">{{donationButton}}</li>
						</ul>
						<button class="btn btn-primary next" type="button" @click="donaitonNextPage">下一页</button>
					</div>
					<!-- 控制显示页面 end-->


				</div>
				<!-- 捐赠模块end -->


				<!-- 个人信息 -->
				<!-- 因为内容都是浮动，所以需要浮动 -->
				<div class="personal-information-template public-template  function-template clearfix animated pulse d-none">

					<!-- 左边图片 -->
					<div class="left-image w-60 h-100 float-left">

					</div>
					<!-- 左边图片 end-->


					<!-- 右边信息 -->
					<div
						class="right-information w-40 h-100 float-left  d-flex justify-content-center align-items-center ">

						<!-- 提交个人信息 -->
						<ul class="d-flex flex-column person-information h-80 w-50 submit-personal-information "
							v-if="changeMessage">
							<li class="clearfix">
								<div class="label float-left ">
									<p>姓名：</p>
								</div>
								<div class="content float-right w-60">
									<input id="inputName" class="user-name" type="text" name="name" placeholder="您的姓名">
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left">
									<p>出生日期：</p>
								</div>
								<div class="content float-right w-60">
									<input id="inputBirthday" class="user-birthday" type="date" name="birthday">
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left">
									<p>性别：</p>
								</div>
								<div class="content float-right w-60">
									<input type="radio" name="sex" value="男" checked="checked">男
									<input type="radio" name="sex" value="女">女
								</div>
							</li>

							<li class="clearfix">
								<div class="label float-left">
									<p>电话号码：</p>
								</div>
								<div class="content float-right w-60">
									<input id="inputUserPhone" type="tel" name="phone" placeholder="请输入您的电话号码">


								</div>
							</li>

							<li class="clearfix">
								<div class="label float-left">
									<p>邮箱：</p>
								</div>
								<div class="content float-right w-60">
									<input id="inputUserEmail" type="email" name="email" placeholder="请输入正确的邮箱">
									<button class="btn btn-success mt-2" type="button">获取验证码</button>
								</div>
							</li>

							<li class="clearfix">
								<div class="label float-left ">
									<p>验证码：</p>
								</div>
								<div class="content float-right w-60">
									<input id="inputMask" class="mask" type="text" name="name" placeholder="请输入得到的验证码">
								</div>
							</li>

							<li>
								<button type="submit" class="btn btn-primary" @click="changeMessageEvent">提交信息</button>
							</li>
						</ul>
						<!-- 提交个人信息 end-->


						<!-- 查看个人信息 -->
						<ul class="d-flex flex-column person-information h-80 w-50 seek-personal-information"
							v-if="showMessage">
							<li class="clearfix">
								<div class="label float-left ">
									<p>姓名：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.name}}</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left ">
									<p>密码：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.password}}</span>
								</div>
							</li>


							<li class="clearfix">
								<div class="label float-left ">
									<p>出生日期：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.birthday}}</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left ">
									<p>邮箱：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.email}}</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left ">
									<p>电话：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.phone}}</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left ">
									<p>性别：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.sex}}</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label float-left ">
									<p>身份：</p>
								</div>
								<div class="content float-right w-60">
									<span>{{this.person.personalStatus}}</span>
								</div>
							</li>
							<li>
								<button class="btn btn-info" @click="showMessageEvent">更改信息</button>
							</li>
						</ul>
						<!-- 查看个人信息 end-->

					</div>
					<!-- 右边信息 end-->

				</div>
				<!-- 个人信息 end-->



				<!-- 身份申请 -->
				<div class="public-template function-template   status-apply-template  animated bounceInDown  d-block">
					<!-- 选择身份 -->
					<div class="select-status row h-40">

						<!-- 快递员身份 -->


						<div class="card col-6 justify-content-center align-items-center h-100" style="width: 18rem;">
							<img class="h-60" src="../images/indexImages/快递员.png" class="card-img-top" alt="..">
							<div class="card-body">
								<p class="card-text">快递员</p>
							</div>
							<div class="expresser">
								<input type="radio" name="status" value="快递员" />
							</div>
						</div>


						<!-- 快递员身份 end-->


						<!-- 贫困者身份 -->
						<div class="card col-6 justify-content-center align-items-center h-100" style="width: 18rem;">
							<img class="h-60" src="../images/indexImages/快递员.png" class="card-img-top" alt="..">
							<div class="card-body">
								<p class="card-text">需要救助的人</p>
							</div>
							<div class="needer">
								<input type="radio" name="status" value="需要救助的人" />
							</div>
						</div>

						<!-- 贫困者身份 end-->
					</div>
					<!-- 选择身份 end-->


					<!-- 提交证明 -->
					<div class="submit-prove h-50">
						<p>提交身份证明</p>
						<div class="prove h-60">
							<input class="prove-image-choose d-none" type="file" name="" id="" value="" />
							<img class="h-100  prove-image" src="../images/indexImages/焦点.png">
						</div>
					</div>
					<!-- 提交证明 end-->

					<!-- 提交按钮 -->
					<div class="submit h-10 d-flex justify-content-center align-items-center">
						<button id="statusApplyButton" class="btn btn-info" type="button">确认申请</button>
					</div>
					<!-- 提交按钮 end-->

				</div>
				<!-- 身份申请 end -->



				<!-- 物资库 -->
				<div class="public-template function-template goods-garage-template animated fadeInUp d-block">

					<!-- 内容 -->
					<div class="container h-90 ">

						<!-- 筛选 -->
						<div class="screen row pt-4 h-10">
							<div class="col-12">
								<span>输入关键字:</span>
								<input id="likeQuery" class="key-word" type="text" name="" id="" value="" />
							</div>


						</div>
						<!-- 筛选 end -->

						<!-- 物资显示 -->
						<ul class="goods-display h-90">

							<!-- table头 -->
							<li class="goods-item first-row row h-20 ">
								<div class="type col-3">
									种类
								</div>
								<div class="physical-picture col-3">
									实物图
								</div>
								<div class="nearly-update-time col-3">
									最新上传时间
								</div>
								<div class="goods-operation col-3">
									操作
								</div>
							</li>
							<!-- table头 end-->

							<!-- 自己的物资 -->
							<li class="h-80 other-row">
								<ul id="myselfGarage" class="h-100 other-row-ul">


									<li class="goods-item   row h-20 " v-for="garageItem in garagesList"
										:data-garage-number="garageItem.garageNumber">
										<div class="type col-3">
											{{garageItem.type}}
										</div>
										<div class="physical-picture col-3">
											<img class="seek-image w-100 h-100" :src="garageItem.woodsImg">
										</div>
										<div class="nearly-update-time col-3">
											{{garageItem.time}}
										</div>
										<div class="goods-operation col-3">
											<button class="delete-myself-goods-button btn btn-danger"
												type="button">删除</button>

										</div>
									</li>



								</ul>
							</li>
							<!-- 自己的物资 end-->


						</ul>
						<!-- 物资显示 end-->


					</div>
					<!-- 内容 end-->


					<!-- 添加库存 -->
					<div class="add-goods h-10 d-flex justify-content-center align-items-center">
						<button id="addGarageButton" class="btn btn-success" type="button" data-toggle="modal"
							data-target="#addGarageMimicry">添加库存</button>
					</div>
					<!-- 添加库存 end-->


				</div>
				<!-- 物资库 end-->


				<!-- 捐赠列表 -->
				<div class="public-template function-template donation-list-template  animated slideInDown d-none">
					<!-- 内容 -->
					<div class="container h-100 w-90 d-flex justify-content-center align-items-center">



						<!-- 评论显示 -->
						<ul class="comments-display h-90 w-100">
							<li class="first-row row h-20 comment-item">
								<div class="lover ">
									捐赠者
								</div>
								<div class="poorer ">
									被捐赠者
								</div>
								<div class="donation-details ">
									捐赠信息
								</div>
								<div class="comment-operation " v-if="isPoor">
									操作
								</div>
							</li>

							<!-- 捐赠内容 -->
							<li class="content row h-80 comment-item">
								<ul id="donationShow" class="h-100 other-row-ul w-100">
									<li class="h-20 donation-item comment-item" v-for="donationItem in donationsList"
										:data-donation-information="donationItem.donationInformation"
										:data-donation-image="donationItem.donationImage"
										:data-donation-to="donationItem.to">
										<div class="lover ">
											{{donationItem.from}}
										</div>
										<div class="poorer ">
											{{donationItem.to}}
										</div>
										<div class="donation-details ">
											<button class="btn btn-primary see-donation-information-button"
												type="button" data-toggle="modal"
												data-target="#lookDonationInformation">捐赠详情</button>
										</div>
										<div class="comment-operation " v-if="isPoor">
											<button class="comment-button btn btn-info" type="button"
												data-toggle="modal" data-target="#comment">评论</button>

										</div>
									</li>
								</ul>
							</li>

							<!-- 捐赠内容 end-->



						</ul>
						<!-- 评论显示 end-->

					</div>
					<!-- 内容 end-->
				</div>
				<!-- 捐赠列表 end-->


				<!-- 捐赠申请 -->
				<div class="donation-apply-template function-template  poor-template d-none animated rotateInDownLeft"
					v-if="isPoor">

					<!-- 内容 -->
					<div class="container pt-4 pb-4 h-100">
						<!-- 上传图片证明 -->
						<div class="donation-apply-prove-image  h-50">
							<p class="font-weight-bolder" style="color: rgba(255, 0, 0, 1.0);">请上传你的实况图片</p>
							<input class="donation-prove-image-choose d-none" type="file" name="" id="" value="" />
							<img class="h-100  donation-prove-image" src="../images/indexImages/焦点.png">
						</div>
						<!-- 上传图片证明 end-->

						<!-- 文字描述 -->
						<div class="word-describe h-40 pt-5">
							<textarea name="donationApplyMessage" class="w-100 h-100" rows="" cols=""></textarea>
						</div>
						<!-- 文字描述 end-->

						<!-- 提交申请 -->
						<div class="donation-apply-submit h-10 d-flex justify-content-center align-items-center">
							<button id="donationApplyButton" class="btn btn-success" type="button">提交申请</button>
						</div>
						<!-- 提交申请 end-->

					</div>
					<!-- 内容 end-->

				</div>
				<!-- 捐赠申请 end-->

			</div>
			<!-- 功能块 end-->
		</div>
		<!-- 主界面页面end-->




		<!-- 拟态框 -->

		<!-- 更换头像拟态框 -->
		<div class="modal fade" id="alterHeaderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
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
						<input class="header-image-choose d-none" type="file" name="" value="">
						<img class="header-image-focus w-70 h-70" src="../images/indexImages/焦点.png">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">不更改头像</button>
						<button type="button" class="btn btn-primary insure-image insure-replace-header">确认更改头像</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 更换头像拟态框 end-->



		<!-- 捐赠拟态框 -->
		<div class="modal fade" id="donationPop" tabindex="-1" role="dialog"
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
						<ul class="show-stock h-90  d-flex flex-column  align-items-center">

							<!-- <li class="stock-item w-90 d-flex h-10 ">
								<p>种类</p>
								<img class="seek-image" src="../images/loginImages/login大树.png">
								<input type="checkbox" name="ensure-donation" id="" value="" />
							</li>

							<li class="stock-item w-90 d-flex h-10 ">
								<p>种类</p>
								<img class="seek-image" src="../images/loginImages/login大树.png">
								<input type="checkbox" name="ensure-donation" id="" value="" />
							</li> -->



						</ul>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">取消捐赠</button>
						<button type="button" class="donation-cancer-all-select btn btn-dark">全部取消</button>
						<button type="button" class="donation-against-select btn btn-info">反选</button>
						<button type="button" class="donation-all-select btn btn btn-success">全选</button>
						<button type="button" class="insure-donation btn btn-primary">确认捐赠</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 捐赠拟态框 end-->


		<!-- 评论拟态框-->
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
						<textarea class="w-100 h-50"></textarea>

						<p>评分：</p>
						<ul class="comment-score d-flex justify-content-center">
							<li><img data-index="0" src="../images/indexImages/差评星星.png"></li>
							<li><img data-index="1" src="../images/indexImages/差评星星.png"></li>
							<li><img data-index="2" src="../images/indexImages/差评星星.png"></li>
							<li><img data-index="3" src="../images/indexImages/差评星星.png"></li>
							<li><img data-index="4" src="../images/indexImages/差评星星.png"></li>
						</ul>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭评论</button>
						<button id="submitCommentButton" type="button" class=" btn btn-primary">提交评论</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 查看评论拟态框 end-->


		<!-- 查看捐赠信息拟态框 -->
		<div class="modal fade" id="lookDonationInformation" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">捐赠详情</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<!-- card -->
						<div class="card  h-50 w-100" style="width: 18rem;">
							<img class="seek-image card-img-top h-40" src="" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">困难者名字</h5>
								<p class="card-text text-over-bit">
									困难信息
								</p>
							</div>
						</div>
						<!-- card end-->

						<!-- 捐赠物品展示 -->
						<ul class="show-stock h-50  d-flex flex-column  align-items-center">

							<li class="stock-item w-90 d-flex h-30 ">
								<p>种类</p>
								<img class="seek-image" src="../images/loginImages/login大树.png">

							</li>

							<li class="stock-item w-90 d-flex h-30 ">
								<p>种类</p>
								<img class="seek-image" src="../images/loginImages/login大树.png">

							</li>



						</ul>
						<!-- 捐赠物品展示 end-->

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 查看捐赠信息拟态框 end-->


		<!-- 添加库存拟态框 -->

		<!-- 添加库存拟态框 end-->
		<div class="modal fade" id="addGarageMimicry" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalCenterTitle">添加库存</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<!-- 内容 -->
					<div class="modal-body">

						<!-- 物品种类 -->
						<div class="goods-type h-30">

							<select id="selectGoodsType" name="goodsType">
								<option value="衣服4" selected="selected">衣服4</option>
								<option value="衣服1">衣服1</option>
								<option value="衣服2">衣服2</option>
								<option value="衣服3">衣服3</option>
							</select>
						</div>
						<!-- 物品种类 end-->

						<!-- 上传物品图片 -->
						<div class="updata-goods-image h-60">
							<input id="addGoodsInput" class="d-none" type="file" name="" id="" value="" />
							<img id="addGoodsImage" class="h-100 w-90" src="../images/indexImages/焦点.png">
						</div>
						<!-- 上传物品图片 end-->

					</div>
					<!-- 内容 end-->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
						<button id="insureAddGoodsButton" type="button" class="btn btn-primary">确认添加</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 拟态框end -->


		<!-- 图片展示 -->
		<!-- 图片展示div -->
		<div id="show-image" class="d-none">
			<img class="w-100 h-100" src="../images/indexImages/demoImage.jpg">
		</div>

		<!-- 图片修饰遮罩层 -->
		<div class="image-mask d-none">

		</div>
		<!-- 图片展示 end-->


		<script src="../JS/public/objectToString.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/donationSeparatePage.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/VM.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/controlFunctionDisplay.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/mimicry/commentMimicry.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/mimicry/replaceHeaderImage.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/statusApply.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/mimicry/donationMimicry.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/public/clickImageSeek.js" type="text/javascript" charset="utf-8"></script>
		<!-- 		<script src="../JS/indexTwo/goodsGarageSlideDispaly.js" type="text/javascript" charset="utf-8"></script> -->
		<script src="../JS/indexTwo/goodsGarageDelte.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/personalInformationInputCheck.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/goodsGarageQuery.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/mimicry/addGoodsMimicry.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/mimicry/seeDonationMimicry.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/indexTwo/donationApply.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
