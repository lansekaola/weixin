//index.js
//获取应用实例
    //调用百度地图引入的第三方js
var bmap=require("../js/bmap-wx.min.js");
var app = getApp();
Page({
    data: {
        /** 头部区域地址和天气变量 */
        address: "",
        weather: "",
        tu: "../images/loading.gif",
        lists: [],
        show:"true"
},
    onLoad:function(){
        //留住this
        var that = this;
        //调用应用实例的方法获取全局数据
        app.getUserInfo(function(userInfo){
            //更新数据
            that.setData({
                userInfo:userInfo
            })
        });
        //initpage
        wx.getSystemInfo({
            success: function(res) {
                // success
                //console.dir(res)
                that.setData({pagew:res.windowWidth})
            }
        });
        //下面详细的水果列表异步请求
        wx.request({
            url: 'http://127.0.0.1:8080/server/data/dish_getbypage.php', //仅为示例，并非真实的接口地址
            data: {
                x: '' ,
                y: ''
            },
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);
                that.setData({
                    lists:res.data
                })

            }
        });

        //获取地理坐标信息
        var b=new bmap.BMapWX({
            ak:"cAb5ecCSYoEPmLEtOBlfxVARVnz6GK4P"
        });
        var back=function(d){
            // console.dir(d)  ;
            that.setData({
                address:d.wxMarkerData[0].address
            })
        };
        b.regeocoding({
            iconPath:"../images/marker_red.png",
            success:back
        });
        // 获取天气
        var bb=function(d){
            that.setData({
                weather:d.originalData.results[0].weather_data[0].weather,
                tu:d.originalData.results[0].weather_data[0].dayPictureUrl
            })

        };
        b.weather({
            success:bb
        });
    },
    //加载更多
    loadMore:function(){
        var that=this;
        wx.request({
            url: 'http://127.0.0.1:8080/server/data/dish_getbypage.php', //仅为示例，并非真实的接口地址
            data: {
                start: that.data.lists.length
            },
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                //console.log(res.data);
                if(res.data.length<5){
                   that.setData({show:!that.data.show})
                }
                //将返回的新的数组 和 之前的lists拼接concat不修改原数组;
                var k=that.data.lists;
                  //console.dir(k);
                console.dir(res.data);
                var t=k.concat(res.data);
                that.setData({lists:t})
            }
        });
    }
});
