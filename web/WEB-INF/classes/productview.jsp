<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<html>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body><!------------------------------head------------------------------>

<%@ include file="header.jsp" %>

<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix">
    		<a href="indexselect">首页</a><span>/</span>
    		<a href="selectproductlist?cid=${cate.CATE_ID }">${cate.CATE_NAME }</a>
    		<a href="#" class="on">${p.PRODUCT_NAME}</a>
    </div>
</div><!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl">
            <img class="det" src="img/${p.PRODUCT_FILENAME}"/>
                <div class="smallImg clearfix">
                    <img src="img/${p.PRODUCT_FILENAME }" data-src="img/temp/proDet02_big.jpg">                                                                /${p.PRODUCT_FILENAME }">
                    <img
                        src="img/temp/proDet02.jpg" data-src="img/temp/proDet02_big.jpg">
                    <img
                        src="img/temp/proDet03.jpg" data-src="img/temp/proDet03_big.jpg">
                    <img
                        src="img/temp/proDet04.jpg" data-src="img/temp/proDet04_big.jpg">
                </div>
            </div>
            <div class="fr intro">
                <div class="title"><h4>【豚豚的Xback杂货铺】${p.PRODUCT_NAME}</h4>
                    <p>【${p.PRODUCT_DESCRIPTION }】</p><span>￥${p.PRODUCT_PRICE}.00</span></div>
                <div class="proIntro"><p>内容展示</p>
                    <div class="smallImg clearfix categ"><p class="fl">
                        <img src="img/temp/prosmall01.jpg" alt="正面" data-src="img/temp/proBig01.jpg"></p>
                        <p class="fl">
                            <img src="img/temp/prosmall02.jpg" alt="侧面"
                                           data-src="img/temp/proBig02.jpg">
                        </p>
                        <p class="fl">
                            <img src="img/temp/prosmall03.jpg" alt="里面" data-src="img/temp/proBig03.jpg">
                        </p>
                        <p class="fl"><img src="img/temp/prosmall04.jpg" alt="小卡" data-src="img/temp/proBig04.jpg">
                        </p>
                    </div>
                    <p>数量&nbsp;&nbsp;库存<span>${p.PRODUCT_STOCK }</span>件</p>
                    <div class="num clearfix">
                    		<img class="fl sub" src="img/temp/sub.jpg">
                    		<span id="count" class="fl" contentEditable="true">1</span>
                            <img class="fl add" src="img/temp/add.jpg">
                        <p class="please fl">请选择商品属性!</p></div>
                </div>
                <div class="btns clearfix">
                	<a href="javascript:shopAdd(${p.PRODUCT_ID},'s')"><p class="buy fl">立即购买</p></a>

                    <a href="javascript:shopAdd(${p.PRODUCT_ID},'s')"><p class="cart fr"> 加入购物车</p></a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
	function shopAdd(id, url) {
		var count = document.getElementById("count").innerHTML;
		
		location.href='${pageContext.request.contextPath}/cartadd?id='+id+'&count='+count+'&url='+url;
		
	}
    function toorder() {
        var str = "";
        $("input[name='ck']:checked").each(function(index, item){
            if($("input[name='ck']:checked").length-1 == index){
                str+= $(this).val();
            }else{
                str+= $(this).val()+",";
            }

        });

        location.href="orderselect?eids="+str;

    }

</script>

<div class="introMsg wrapper clearfix">
    <div class="msgL fl">
        <div class="msgTit clearfix"><a class="on">商品详情</a><a>所有评价</a></div>
        <div class="msgAll">
            <div class="msgImgs">
                <img src="img/temp/det01.jpg"width="940px" height="690px">
                <img src="img/temp/det02.jpg"width="937px" height="896px">
                <img src="img/temp/det03.jpg"width="937px" height="896px">
                <img src="img/temp/det04.jpg"width="944px" height="640px">
                <img src="img/temp/det05.jpg"width="944px" height="640px">
                <img src="img/temp/det06.jpg"width="935px" height="787px">
                <img src="img/temp/det07.jpg"width="935px" height="787px">
            </div>
            <div class="eva">
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>不好意思评价晚了，产品很好，价格便宜，没有我担心的杂色，发货快，包装好，全5分</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>内容分类：正面</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>超级棒，我看图以为是光面的，收货发现是磨砂，但感觉也超有质感，很喜欢。磨砂上面还有点纹路，不过觉得挺自然的，不影响美观。包装也很好，绝对不会磕碎碰坏，好评！</p>
                        <p><span>2016年12月27日08:31</span><span>内容分类：正面</span></p></div>
                </div>


                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>不好意思评价晚了，产品很好，价格比玻璃品便宜，没有我担心的杂色，发货快，包装好，全5分</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>颜色分类：大中小三件套（不含花）</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>花瓶超级棒，我看图以为是光面的，收货发现是磨砂，但感觉也超有质感，很喜欢。磨砂上面还有点纹路，不过觉得挺自然的，不影响美观。包装也很好，绝对不会磕碎碰坏，好评！</p>
                        <p><span>2016年12月27日08:31</span><span>颜色分类：大中小三件套（不含花）</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>不好意思评价晚了，产品很好，价格比玻璃品便宜，没有我担心的杂色，发货快，包装好，全5分</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>颜色分类：大中小三件套（不含花）</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>花瓶超级棒，我看图以为是光面的，收货发现是磨砂，但感觉也超有质感，很喜欢。磨砂上面还有点纹路，不过觉得挺自然的，不影响美观。包装也很好，绝对不会磕碎碰坏，好评！</p>
                        <p><span>2016年12月27日08:31</span><span>颜色分类：大中小三件套（不含花）</span></p></div>
                </div>
            </div>
        </div>
    </div>
    <div class="msgR fr" style="width:200px;"><h4>为你推荐</h4>
        <div class="seeList">
        <c:forEach var="cp" items="${classlist}">
        <a href="selectproductview?id=${cp.PRODUCT_ID}">
            <dl>
                <dt><img src="img/${cp.PRODUCT_FILENAME}" width="161px" height="243px"></dt>
                <dd>【豚豚的Xback杂货铺】${cp.PRODUCT_NAME}</dd>
                <dd>￥${cp.PRODUCT_PRICE }.00</dd>
            </dl>
        </a>
        </c:forEach>
        

        </a><a href="#">
            <dl>
                <dt><img src="img/temp/see04.jpg"  width="161px" height="243px"></dt>
                <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                <dd>￥193.20</dd>
            </dl>
        </a>

        </div>
    </div>
</div>
<div class="like"><h4>最近访问</h4>
    <div class="bottom">
        <div class="hd"><span class="prev"><img src="img/temp/prev.png"></span>
            <span class="next"><img src="img/temp/next.png"></span></div>
        <div class="imgCon bd">
            <div class="likeList clearfix">
                <div>
                
                
                 <c:forEach var="lp" items="${lastlylist}">
			        <a href="selectproductview?id=${lp.PRODUCT_ID }">
			            <dl>
			                <dt><img src="img/${lp.PRODUCT_FILENAME }" width="216px" height="216px"></dt>
			                <dd>【豚豚的Xback杂货铺】${lp.PRODUCT_NAME }</dd>
			                <dd>￥${lp.PRODUCT_PRICE }.00</dd>
			            </dl>
			        </a>
       			 </c:forEach>
                
                
                <a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like01.jpg"width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a>
                
                <a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like02.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like03.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like04.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/temp/like05.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a></div>
                <div><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like01.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like02.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like03.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like04.jpg"width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/temp/like05.jpg" width="216px" height="216px"></dt>
                        <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a></div>
            </div>
        </div>
    </div>
</div><!--返回顶部-->
<div class="gotop"><a href="showcart">
    <dl class="goCart">
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>3</span></dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.jsp">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div>
<div class="msk"></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot4.png"/></a><span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">豚豚的Xback杂货铺&copy;2020-2021染色体公司版权所有 京ICP备080100-44备0000111000号<br/>
        违法和不良信息举报电话：1999-10-07</p></div>

<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">jQuery(".bottom").slide({
    titCell: ".hd ul",
    mainCell: ".bd .likeList",
    autoPage: true,
    autoPlay: false,
    effect: "leftLoop",
    autoPlay: true,
    vis: 1
});</script>
</body>
</html>
