const mangerSideFence=Vue.component("manger-side-fence",{
	template: "#mangerSideFence"
})

const statusApply=Vue.component("status-apply",{
	template: "#statusApply"
})

const assistanceApply=Vue.component("assistance-apply",{
	template: "#assistanceApply"
})

const commentAdjudication=Vue.component("comment-adjudication",{
	template: "#commentAdjudication"
})

const routes=[
	{
		path: "/",
		redirect: "/statusApply"
	},
	,
	{
		path: "/statusApply",
		name: "statusApply",
		component: statusApply
	},
	
	{
		path: "/assistanceApply",
		name: "assistanceApply",
		component: assistanceApply
	},
	{
		path: "/commentAdjudication",
		name: "commentAdjudication",
		component: commentAdjudication
	}
]

const router = new VueRouter({
	routes
})

const store=new Vuex.Store({
	state: {
		statusApplyList: [],
		donationApplyList:[],
		commentList: []
	},
	mutations: {
		changeStatusApplyList: function (state,jsonData){
			$.each(jsonData,function (index,data){
				state.statusApplyList[index]=data;
			})
		},

		changeDonationApplyList: function (state,jsonData){
			$.each(jsonData,function (index,data){
				state.donationApplyList[index]=data;
			})
		},

		changeCommentList: function (state,jsonData){
			$.each(jsonData,function (index,data){
				console.log(index)
				state.commentList[index]=data;
			})
		},
	}
})

const  manger=new Vue({
	el: "#manger",
	components: {
		"manger-side-fence": mangerSideFence,
		"status-apply": statusApply,
		"assistance-apply": assistanceApply,
		"comment-adjudication": commentAdjudication
	},

	created(){
			this.initStatusApplyList();
			this.initDonationApplyList();
			this.initCommentList();
	},

	methods: {
		initStatusApplyList:function ()	{
			$.getJSON("./json/statusApply.json",function (jsonData){
				manger.$store.commit("changeStatusApplyList",jsonData);
			})
		},

		initDonationApplyList:function ()	{
			$.getJSON("./json/donationApply.json",function (jsonData){
				manger.$store.commit("changeDonationApplyList",jsonData);
			})
		},

		initCommentList:function ()	{
			$.getJSON("./json/commentJudge.json",function (jsonData){
				manger.$store.commit("changeCommentList",jsonData);
			})
		},
	},
	store,
	router
})