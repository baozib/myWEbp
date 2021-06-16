

const  manger=new Vue({
	el: "#manger",
	
	created() {
		// 获取身份申请
		this.getStatusApply();
		
		// 获得求援申请
		this.getAskForHelp();
		
		// 获取评价裁决
		this.getcommentJudge();
	},
	data: {
		statusApply: [],
		askForHelp: [],
		commentJudge: [],
	},
	
	methods: {
		// 获取身份申请
		getStatusApply(){
			$.ajax({
				// 后面改成post
				type: "get",
				// 后面更改url
				url: "./json/statusApply.json",
				context:this,
				dataType: "json",
				success(apply){
					console.log("成功")
					this.statusApply=apply;
				}
			})
		},
		
		// 获取求援申请
		getAskForHelp(){
			$.ajax({
				// 后面改成post
				type: "get",
				// 后面更改url
				url: "./json/askForHelp.json",
				context:this,
				dataType: "json",
				success(ask){
					console.log("成功")
					this.askForHelp=ask;
				}
			})
		},
		
		// 获取评价裁决
		getcommentJudge(){
			$.ajax({
				// 后面改成post
				type: "get",
				// 后面更改url
				url: "./json/commentJudge.json",
				context:this,
				dataType: "json",
				success(comment){
					console.log("成功")
					this.commentJudge=comment;
				}
			})
		},
		
	}
})