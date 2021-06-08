<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/animate.min.css" />
		<link rel="stylesheet" type="text/css" href="CSS/myCSS/myCSS.css" />
		<link rel="stylesheet" type="text/css" href="CSS/mangerCSS/mangerCSS.css"/>
		<link rel="stylesheet" type="text/css" href="CSS/mangerCSS/manger-side-fence.css"/>
		<link rel="stylesheet" type="text/css" href="CSS/mangerCSS/manger-function.css"/>
		<script src="JS/vue.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/vue-router.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="JS/vuex.js" type="text/javascript" charset="utf-8"></script>
		<title>管理员界面</title>
	</head>
	<body>
		
		<div id="manger" class="clearfix">
			<manger-side-fence></manger-side-fence>
			<router-view></router-view>
		</div>
		
		
		<!-- 管理员功能侧边栏 -->
		<template id="mangerSideFence">
			<div class="manger-side-fence manger-item d-flex flex-column ">
				
				<div class="header-image d-flex justify-content-center align-items-center">
					<img class="w-40 rounded-circle" src="images/indexImages/headerImage.jpg" >
				</div>
				
				<ul class="function-item-show d-flex flex-column justify-content-center align-items-center">
					<li>
						<router-link :to="{name: 'statusApply'}">
					<img src="images/mangerImages/身份申请.png" title="身份申请"></router-link>
						</li>
					<li>
						<router-link :to="{name: 'assistanceApply'}">
						<img src="images/mangerImages/求援申请.png" title="求援申请"></router-link>
					</li>
					<li><router-link :to="{name: 'commentAdjudication'}">
					<img src="images/mangerImages/评价裁决.png" title="评价裁决"></router-link>
					</li>

				</ul>
			</div>
		</template>
		
		<!-- 身份申请模块-->
		<template  id="statusApply">
			<div class="status-apply manger-item manger-function-item   d-flex justify-content-center align-items-center">
				
				<ul class="status-apply-item-show apply w-90 h-90 d-flex flex-column align-items-center  ">

					<li v-for="statusApplicant in this.$store.state.statusApplyList" :data-applicant-id="statusApplicant.applicantId">
						<p>申请人：{{statusApplicant.applicant}}</p>
						<p>申请身份：{{statusApplicant.status}}</p>
						<img :src="statusApplicant.evidence" >
						<a href="JavaScript:;">同意</a>
						<a href="JavaScript:;">回拒</a>
					</li>
				</ul>
				
			</div>
		</template>
		
		<!-- 求援申请 -->
		<template id="assistanceApply">
			<div class="assistance-apply manger-item manger-function-item ">
				
				<ul class="assistance-apply-item-show apply w-90 h-90 d-flex flex-column align-items-center  ">


					<li v-for="donation in this.$store.state.donationApplyList" :data-donation-apply-id="donation.donationApplyId">
						<p>申请人：{{donation.applicant}}</p>
						<img :src="donation.evidence" >
						<a href="JavaScript:;">同意</a>
						<a href="JavaScript:;">回拒</a>
					</li>
				</ul>
				
			</div>
		</template>
		
		<!-- 评价裁决-->
		<template id="commentAdjudication">
			<div class="comment-adjudication manger-item manger-function-item ">
				
				<ul class="comment-adjudication-item-show apply w-90 h-90 d-flex flex-column align-items-center ">


					<li v-for="comment in this.$store.state.commentList" :date-comment-id="comment.commentId">
						<p>评价人：{{comment.evaluator}}</p>
						<p>被评价人：{{comment.appraisee}}</p>
						<a href="JavaScript:;" data-toggle="modal" data-target="#seekComment">查看评语</a>
					</li>
				</ul>
				
				
				<!-- 弹出拟态框 -->
				<div class="modal fade" id="seekComment" tabindex="-1" role="dialog" aria-labelledby="seekCommentLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="seekCommentlModelLabel">评语查看</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body comment-message">
				        <p>评语</p>
						<textarea class="comment-content">中国大学MOOC(慕课) 是国内优质的中文MOOC学习平台,由爱课程网携手网易云课堂打造。平台拥有包括985高校在内提供的千余门课程,其中首批获得认定的国家精品在线开放课程322门,占2017年获得认定课程
						</textarea>
						<hr>
						
						<p>评分</p>
						<ul class="d-flex justify-content-center display-score  ">
							<li><img src="images/indexImages/好评星星.png" ></li>
							<li><img src="images/indexImages/好评星星.png" ></li>
							<li><img src="images/indexImages/好评星星.png" ></li>
							
						</ul>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
						<!-- 点他开另一个拟态框，进行分数裁决 -->
				        <button type="button" class="btn btn-primary judge">裁决</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</template>
		
		<script src="JS/mangerJS/mangerJS.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
				$.ajax({
					url:  'http://localhost:8088/go/bz_manager?action=showCommContent',
					data: {"id":1},
					type: 'post',
					success: function (msg) {
						alert(msg);
					},
				});
		});
	</script>
	</body>
</html>
