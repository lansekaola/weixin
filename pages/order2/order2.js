Page({
    data:{
        username:""
      ,sex:0
    },

    aaa:function(e){
        console.dir(e)
        this.setData({username: e.detail.value})

    },
    bbb:function(e){
        console.dir(e)
        this.setData({sex:1});

    },
    ccc:function(e){
        console.dir(e)
        this.setData({sex:2});
    },
    tijiao:function(){
        var u=this.data.username;
        var s=this.data.sex;
    }
})