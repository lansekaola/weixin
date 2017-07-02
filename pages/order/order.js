/*开发调试中，后台接口写好，准备实现交互*/
Page({
	//获取用户输入的信息
    data:{
        username:"",
		sex:1
    },

    user:function(e){
        console.dir(e)
        this.setData({username: e.detail.value})

    },
    sex1:function(e){
        console.dir(e)
        this.setData({sex:1});

    },
    sex2:function(e){
        console.dir(e)
        this.setData({sex:2});
    },
		//点击按钮跳转
    tijiao:function(){
        var u=this.data.username;
        var s=this.data.sex;
    }
})