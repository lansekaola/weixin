Page({
    data:{
        lists:[]
    },
    //��ȡ�û���������Ʒid
    onLoad:function(e){
        var that=this;
        //console.dir(e.id);
        //���� e.id
        //����ajax����
        wx.request({
            url: 'http://127.0.0.1:8080/server/data/dish_getbyid.php',//��Ϊʾ����������ʵ�Ľӿڵ�ַ				  
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
                //����Ʒ��did���뱾��
                try {
                    wx.setStorageSync("did",e.id)
                } catch (e) {
                    console.dir(e);
                }
            }
        });
    },
  })