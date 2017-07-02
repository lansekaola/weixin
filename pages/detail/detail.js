Page({
    data:{
        lists:[]
    },
    //获取用户传来的商品id
    onLoad:function(e){
        var that=this;
        //console.dir(e.id);
        //参数 e.id
        //发送ajax请求
        wx.request({
            url: 'http://127.0.0.1:8080/server/data/dish_getbyid.php',//仅为示例，并非真实的接口地址				  
            data: {
                id: e.id
            },
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                //console.log(res.data[0].did);
                that.setData({
                    lists:res.data
                });
                //将商品的did存入本地
                try {
                    wx.setStorageSync("did",e.id)
                } catch (e) {
                    console.dir(e);
                }
            }
        });
    },
  })