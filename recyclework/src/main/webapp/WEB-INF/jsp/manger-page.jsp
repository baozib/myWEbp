<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/animate.min.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/myCSS.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/mangerCSS/mangerCSS.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/mangerCSS/manger-side-fence.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/mangerCSS/manger-function.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/public/seek-image.css"/>
		<link rel="stylesheet" type="text/css" href="../CSS/mangerCSS/function/status-apply.css"/>
		
		<script src="../JS/vue.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="../JS/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/vue-router.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<title>管理员界面</title>
	</head>
	<body>
		<!-- vm -->
		<div id="manger" class="clearfix">
			
			
			<!-- 管理员功能侧边栏 -->
			<div class="manger-side-fence manger-item d-flex flex-column ">
				
				<div class="header-image d-flex justify-content-center align-items-center">
					<img class="w-40 rounded-circle" src="../images/indexImages/headerImage.jpg" >
				</div>
				
				<ul class="function-item-show d-flex flex-column justify-content-center align-items-center">
					<li>
						
					<a class="apply status-apply " href="JavaScript:;">身份申请</a>
						</li>
					<li>
						
						<a class="apply assistance-apply " href="JavaScript:;">求援申请</a>
					</li>
					
					<li>
						<a class="apply comment-judge " href="JavaScript:;">评价裁决</a>
					</li>
			
				</ul>
			</div>
			
			
			<!-- 功能区 -->
			<div class="function">
				
				
				<!-- 身份申请模块-->
					<div class="status-apply manger-item manger-function-item    animated fadeInDown d-none">
						
						<!-- 内容 -->
						<div class="content ">
							
						
						<ul class="status-apply-item-show apply w-90 h-90 d-flex flex-column align-items-center  ">
							<!-- <li >
								<p>申请人</p>
								<p>申请的身份</p>
								<img class="seek-image" src="../images/indexImages/headerImage.jpg" >
								<div >
									<button class="status-agree btn btn-success" href="JavaScript:;">同意</button>
								</div>
								<div >
									<button class="status-confuse btn btn-danger" href="JavaScript:;">回拒</button>
								</div>
							</li> -->
							<li v-for="apply in statusApply" data-id="1" class="mb-1">
								<p>{{apply.applyPerson}}</p>
								<p>{{apply.applyStatus}}</p>
								<img class="seek-image" :src="apply.applyImage" >
								<div >
									<button class="status-agree btn btn-success" href="JavaScript:;">同意</button>
								</div>
								<div >
									<button class="status-confuse btn btn-danger" href="JavaScript:;">回拒</button>
								</div>
							</li>
							
						</ul>
						
						</div>
						<!-- 内容 end-->
					</div>
					<!-- 身份申请模块 end-->
					
					<!-- 求援申请模块 -->
					<div class="assistance-apply manger-item manger-function-item animated fadeInDown d-none">
						
						<!-- 内容 -->
						<div class="content">
						
						<ul class="assistance-apply-item-show apply w-90 h-90 d-flex align-items-center   flex-column">
							<!-- <li >
								<p>申请人</p>
								<img class="seek-image" src="../images/indexImages/demoImage.jpg" >
								<div >
									<button class="assistance-agree btn btn-success" href="JavaScript:;" >同意</button>
								</div>
								<div >
									<button class="assistance-confuse btn btn-danger" href="JavaScript:;">回拒</button>
								</div>
								
							</li> -->
							
							<li v-for="asker in askForHelp" data-ID="1" class="mt-1">
								<p>{{asker.applyPerson}}</p>
								<img class="seek-image" :src="asker.applyImage" >
								<div >
									<button class="assistance-agree btn btn-success" href="JavaScript:;" >同意</button>
								</div>
								<div >
									<button class="assistance-confuse btn btn-danger" href="JavaScript:;">回拒</button>
								</div>
								
							</li>
							
						</ul>
						
					</div>
					<!-- 内容 end-->
					</div>
					<!-- 求援申请模块 end-->
					
					<!-- 评价裁决-->
					<div class="comment-adjudication manger-item manger-function-item animated fadeInDown d-block">
						
						<!-- 内容 -->
						<div class="content ">
							
						<ul class="comment-adjudication-item-show apply w-90 h-90 d-flex flex-column align-items-center  ">
							<!-- <li class="mb-1">
								<p>评价人</p>
								<p>被评价人</p>
								<div>
									<button class="look-comment btn btn-primary" href="JavaScript:;" data-toggle="modal" data-target="#seekComment">查看评语</button>
								</div>
								
							</li> -->
							
							
							<li v-for="comment in commentJudge" :data-comment="comment.comment" :data-score="comment.score" class="mb-1">
								<p>{{comment.from}}</p>
								<p>{{comment.to}}</p>
								<div>
									<button class="look-comment btn btn-primary" href="JavaScript:;" data-toggle="modal" data-target="#seekComment">查看评语</button>
								</div>
								
							</li>
						</ul>
						
						</div>
						<!-- 内容 end-->
					</div>
					<!-- 评价裁决 end-->
				</div>
				<!-- 功能区 end-->
			</div>
			<!-- vm end -->
			
			<!-- 拟态框 -->
			
			<!-- 查看评论拟态框 -->
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
					<textarea class="comment-content"></textarea>
					<hr>
					
					<p>评分</p>
					<ul class="d-flex justify-content-center display-score  ">
						<li><img src="../images/indexImages/好评星星.png" ></li>
						<li><img src="../images/indexImages/好评星星.png" ></li>
						<li><img src="../images/indexImages/好评星星.png" ></li>
						
					</ul>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
					<!-- 点他开另一个拟态框，进行分数裁决 -->
			        <button type="button" class="btn btn-primary judge" data-toggle="modal" data-target="#judgeMimicry">裁决</button>
			      </div>
			    </div>
			  </div>
			</div>
		<!-- 查看评论拟态框 end-->
		
		
		<!-- 裁决拟态框 -->
		
		<!-- 裁决拟态框 end-->
		<div class="modal fade" id="judgeMimicry" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalCenterTitle">裁决面板</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
				  <!-- 裁决对象 -->
		        <div class="judgeAim h-30  d-flex justify-content-center align-items-center">
		        	<span>裁决对象：</span><span>黎铁牛</span>
		        </div>
				<!-- 裁决对象 end-->
				
				<!-- 裁决结果 -->
				<div class="judgeResult  h-70 d-flex justify-content-center align-items-center">
					<span>请输入信誉分：</span><input type="text"  id="" value="" />
				</div>
				<!-- 裁决结果 end-->
				
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消裁决</button>
		        <button id="insureJudge" type="button" class="btn btn-primary">确认裁决</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- 拟态框 end-->
		
		<!-- 图片展示div -->
		<div id="show-image" class="d-none">
			<img class="w-100 h-100" src="../images/indexImages/demoImage.jpg" >
		</div>
		
		<!-- 图片修饰遮罩层 -->
		<div class="image-mask d-none">
			
		</div>
		
		
	
		
		<script src="../JS/mangerJS/mangerJS.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/mangerJS/controlFunctionDisplay.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/public/clickImageSeek.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/mangerJS/mimicry/judgeMimicry.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/mangerJS/function/assistanceApply.js" type="text/javascript" charset="utf-8"></script>
		<script src="../JS/mangerJS/function/statusApply.js" type="text/javascript" charset="utf-8"></script>

	<script type="application/javascript">
		$(function(){
			$('.status-apply').click(function () {
				$.ajax({
					url:  'http://localhost:8585/2/manager_career',
					type: 'get',
					success: function (msg) {
						alert(msg);
					},
				});
			});

			$('.assistance-apply').click(function () {
				$.ajax({
					url:  'http://localhost:8585/2/manager_aid',
					type: 'get',
					success: function (msg) {
						alert(msg);
					},
				});
			});

			$('.comment-judge').click(function () {
				$.ajax({
					url:  'http://localhost:8585/2/updateId?action=45',
					type: 'patch',
					data: {"userId":"1531"},
					success: function (msg) {
						alert(msg);
					},
				});
			});

		});
	</script>
	</body>
</html>
