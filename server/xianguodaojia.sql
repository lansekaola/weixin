SET NAMES 'utf8';
DROP DATABASE IF EXISTS xianguodaojia;
CREATE DATABASE xianguodaojia CHARSET=UTF8;
USE xianguodaojia;

CREATE TABLE kf_dish(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO kf_dish(did,img_sm,img_lg,name,price,material,detail) VALUES
(   null,
    'caomei-bg.jpg',
    'caomei.jpg',
    '【草莓】',
    36,
    '中国草莓之乡的水果、香甜可口的大草莓、顺丰包邮',
    ' 东港草莓生产科技含量高，单产与果品品质处于全国领先水平，东港草莓生产以日光温室，早春大棚﹑露地生产三种栽培形式为主，从10月至第二年7月期间均有鲜果草莓上市。目前﹐在东港草莓品种的布局中，日光温室以西班牙杜克拉、图得拉、日本丰香、章姬为主载，早春大棚以荷兰卡尔特一号为主栽，露地生产主要用于深加工，以美国的哈尼为主栽。现在，东港草莓已经在国家商标局注册了“东港草莓”商标。是农业部命名的唯一一家优质草莓生产基地。'
),
(   null,
    'chengzi-bg.jpg',
    'chengzi.jpg',
    '【橙子】',
    16.5,
    '皮薄、酸酸甜甜就是你、我的小橙子',
    '鉴于橙子的商业化程度比较高，于是在市场的需求下诞生了很多各具特色的栽培种，像是填补市场空白期的晚熟夏橙(蜜奈夏橙、奥林达)，利于鲜食的地理保护品种无核橙赣南脐橙等。许多橙子的种类是以产地命名的(如中国新会橙)，一些橙种甚至已近注册了商标(如美国香吉士)。'
),
(   null,
    'lanmei-bg.jpg',
    'lanmei.jpg',
    '【蓝莓】',
    32,
    '蓝莓果实的VMA（花色苷色素）对眼睛有良好的保健作用，能够减轻眼的疲劳及提高夜间视力。',
    '蓝莓的栽培种类有三大类，即高丛蓝莓、矮丛蓝莓和兔眼蓝莓。其中高丛蓝莓又分为北高丛蓝莓、南高丛蓝莓和半高丛蓝莓三类。矮丛蓝莓和半高丛蓝莓适宜在温带寒冷地区种植，北高丛蓝莓和一些半高丛蓝莓适宜在暖温带地区种植，兔眼蓝莓和南高丛蓝莓适宜在亚热带地区种植。'
),
(   null,
    'mangguo-bg.jpg',
    'mangguo.jpg',
    '【芒果】',
    6.5,
    '.芒果的含水量较高，约为82%。每100克含有66千卡热量。未成熟的果子含有淀粉，成熟转为糖。',
    '巧切芒果的方法：1.先把芒果洗干净然后立着放在案板上，即让果核与案板呈垂直状，然后以果核为中心，在果核右边切一刀，芒果被分为两部分。2.按照同样的切法在果核的左边切一刀，芒果被分为三部分了。3.取芒果的左右两边果肉，在果肉上划格子，但是注意不要切到皮。4.把划好格子的芒果拿在手上，手指抵住芒果皮往上顶，这样芒果就被翻成一朵花的样子了，装盘端上桌吧。'
),
(   null,
    'mihoutao-bg.jpg',
    'mihoutao.jpg',
    '【猕猴桃】',
    32,
    '猕猴桃是猕猴桃科植物猕猴桃的果实。因其维生素C含量在水果中名列前茅，被誉为“水果之王”。',
    '1、新鲜猕猴桃60克，猕猴桃树根30克，半枝莲30克。加水1000毫升煎煮至1小碗，每日1剂，30天为一疗程，可治胃癌、食道癌。2、每次食用新鲜猕猴桃3～5个，每日吃3～4次。或取鲜猕猴桃，洗净，捣烂，用凉开水浸泡，然后慢饮，治高热烦渴。3、猕猴桃干果60克加水1000毫升煎煮至1小碗，每日1剂。可治消化不良。张家界湘小伍家猕猴桃干尤为出名，为土家族人民所喜爱。4、鲜猕猴桃60克，白马骨60克，茵陈15克加水1000毫升煎煮至1小碗，每日1剂。可治急性肝炎。5、治疗食欲不振、消化不良，可取猕猴桃干果60至100克，水煎服，每日早晚分服。'
),
(   null,
    'pingguo-bg.jpg',
    'pingguo.jpg',
    '【油桃】',
    25,
    '油桃营养丰富，含糖13%、有机酸1.5%、果胶1%蛋白质1.1%,每100克果肉含维生素C12毫克。',
    '1、油桃有补益气血、养阴生津的作用，尤其适合大病之后，气血亏虚，面黄肌瘦，心悸气短者食用。2、油桃的含铁量较高，是缺铁性贫血病人的理想辅助食物，另外，油桃含钾多，含钠少，适合水肿病人食用。3、桃仁提取物有抗凝血作用，并能抑制咳嗽中枢而止咳，同时能使血压下降，可用于高血压病人的辅助治疗。此外，桃仁还有活血化淤、润肠通便的作用，可用于闭经、跌打损伤等辅助治疗。'
),
(   null,
    'putao-bg.jpg',
    'putao.jpg',
    '【葡萄】',
    1.5,
    '每100克果实中含蛋白质0．2克，钙4毫克，磷15毫克，铁0．6毫克，胡萝卜素0．04毫克。',
    '因此，很多人为了图省事，简单地用水冲冲就吃。其实，葡萄属于草本植物，植株比较低矮，果实细嫩多汁，这些都导致它容易受病虫害和微生物的侵袭。因此，种植葡萄的过程中，要经常使用农药。这些农药、肥料以及病菌等，很容易附着在葡萄粗糙的表面上，如果清洗不干净，很可能引发腹泻，甚至农药中毒。'
),
(   null,
    'xiangjiao-bg.jpg',
    'xiangjiao.jpg',
    '【香蕉】',
    12,
    '含钾元素丰富的香蕉是食物中排名第一的“美腿高手”，钾元素能帮助你伸展腿部肌肉。',
    '国外媒体报道，早餐午餐和晚餐分别吃一根香蕉，能够为人体提供丰富的钾，从而使得大脑血凝块几率降低约21%。主要功用是清肠胃，治便秘，并有清热润肺、止烦渴、填精髓、解酒毒等功效。由于香蕉性寒，故脾胃虚寒、胃痛、腹泻者应少食，胃酸过多者尽量少食用。把香蕉和牛奶混合成泥状，涂抹在脸上可以美白。'
),
(   null,
    'xigua-bg.jpg',
    'xigua.jpg',
    '【西瓜】',
    12,
    '西瓜可清热解暑，除烦止渴。西瓜中含有大量的水分，在急性热病发烧时，症状会马上改善。',
    '吃西瓜不同于喝水或饮料，它对人体不仅仅是水分的补充，西瓜汁 里还含有多种重要的有益健康和美容的化学成分。在吃西瓜时，用瓜汁擦擦脸，或把西瓜切去外面的绿皮，用里面的白皮切薄片贴敷15分钟，那么整个夏天都可以使你的皮肤保持清新细腻、洁白、健康，焕发出迷人的光泽。'
),
(
    null,
    'pingguo-bg.jpg',
    'pingguo.jpg',
    '【油桃】',
    25,
    '油桃营养丰富，含糖13%、有机酸1.5%、果胶1%蛋白质1.1%,每100克果肉含维生素C12毫克。',
    '1、油桃有补益气血、养阴生津的作用，尤其适合大病之后，气血亏虚，面黄肌瘦，心悸气短者食用。2、油桃的含铁量较高，是缺铁性贫血病人的理想辅助食物，另外，油桃含钾多，含钠少，适合水肿病人食用。3、桃仁提取物有抗凝血作用，并能抑制咳嗽中枢而止咳，同时能使血压下降，可用于高血压病人的辅助治疗。此外，桃仁还有活血化淤、润肠通便的作用，可用于闭经、跌打损伤等辅助治疗。'
),
(   null,
    'yingtao-bg.jpg',
    'yingtao.jpg',
    '【樱桃】',
    12,
    '樱桃就是好吃，不信你就买点尝尝，记得要买山海关的大樱桃',
    '吃西瓜不同于喝水或饮料，它对人体不仅仅是水分的补充，西瓜汁 里还含有多种重要的有益健康和美容的化学成分。在吃西瓜时，用瓜汁擦擦脸，或把西瓜切去外面的绿皮，用里面的白皮切薄片贴敷15分钟，那么整个夏天都可以使你的皮肤保持清新细腻、洁白、健康，焕发出迷人的光泽。'

);

##SELECT * FROM kf_dish;

CREATE TABLE kf_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    user_name VARCHAR(16),
    sex INT,    /*1:男  2:女*/
    order_time BIGINT,
    addr VARCHAR(256),
    did INT
);
INSERT INTO kf_order(oid, phone,user_name,sex,order_time,addr,did) VALUES
(NULL,'13501234567','大旭',1,1445154859209,'大钟寺中鼎B座',3),
(NULL,'13207654321','东东',1,1445254997612,'万寿路文博大厦',2),
(NULL,'13899999999','文兄',1,1445354959209,'万寿路文博大厦',5),
(NULL,'13683675299','梅姐',2,1445354889209,'万寿路文博大厦',4);

##SELECT * FROM kf_order;