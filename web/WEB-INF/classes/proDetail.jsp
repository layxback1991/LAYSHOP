 <%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/3
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>
<%@ include file="header.jsp" %>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="index.jsp">首页</a><span>/</span><a
            href="flowerDer.jsp">专辑</a><span>/</span><a href="proList.jsp">路康宝</a><span>/</span><a href="#"
                                                                                                     class="on">【专辑】Lose Control</a>
    </div>
</div><!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl">
                <img class="det" src="img/temp/proDet.jpg"/>
                <div class="smallImg clearfix">
                    <img
                            src="img/temp/proDet01.jpg" data-src="img/temp/proDet01_big.jpg">
                    <img
                        src="img/temp/proDet02.jpg" data-src="img/temp/proDet02_big.jpg">
                    <img
                        src="img/temp/proDet03.jpg" data-src="img/temp/proDet03_big.jpg">
                    <img
                        src="img/temp/proDet04.jpg" data-src="img/temp/proDet04_big.jpg">
                </div>
            </div>
            <div class="fr intro">
                <div class="title"><h4>【专辑】Lose Control</h4>
                    <p>【破损补寄】【张艺兴人生中的第一张专辑，里面有他最初的梦想，和最纯粹的热爱，收藏价值极高。】【无理由退换货】【包邮】【Lose Control】</p><span>￥107.0</span></div>
                <div class="proIntro"><p>内容展示</p>
                    <div class="smallImg clearfix categ"><p class="fl"><img src="img/temp/prosmall01.jpg"
                                                                            alt="正面"
                                                                            data-src="img/temp/proBig01.jpg"></p>
                        <p class="fl"><img src="img/temp/prosmall02.jpg" alt="侧面"
                                           data-src="img/temp/proBig02.jpg"></p>
                        <p class="fl"><img src="img/temp/prosmall03.jpg" alt="里面" data-src="img/temp/proBig03.jpg">
                        </p>
                        <p class="fl"><img src="img/temp/prosmall04.jpg" alt="小卡" data-src="img/temp/proBig04.jpg">
                        </p></div>
                    <p>数量&nbsp;&nbsp;库存<span>2096</span>件</p>
                    <div class="num clearfix"><img class="fl sub" src="img/temp/sub.jpg"><span class="fl"
                                                                                               contentEditable="true">1</span><img
                            class="fl add" src="img/temp/add.jpg">
                        <p class="please fl">请选择商品属性!</p></div>
                </div>
                <div class="btns clearfix">
                    <a href="javascript:shopAdd(${p.PRODUCT_ID }'z')"><p class="buy fl">立即购买</p></a>
                    <a href="javascript:shopAdd(${p.PRODUCT_ID }'s')"><p class="cart fr"> 加入购物车</p></a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function shopAdd(id, url) {
        var count = document.getElementById("count").innerHTML;

        location.href='cartadd?id='+id+'&count='+count+'&url='+url;

    }

</script>
<div class="introMsg wrapper clearfix">
    <div class="msgL fl">
        <div class="msgTit clearfix"><a class="on">商品详情</a><a>所有评价</a></div>
        <div class="msgAll">
            <div class="msgImgs"><img src="img/temp/det01.jpg"><img src="img/temp/det02.jpg"><img
                    src="img/temp/det03.jpg"><img src="img/temp/det04.jpg"><img src="img/temp/det05.jpg"><img
                    src="img/temp/det06.jpg"><img src="img/temp/det07.jpg"></div>
            <div class="eva">
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>不好意思评价晚了，产品很好，价格便宜，收藏价值高全5分</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>购买数量：三套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>不好意思评价晚了，产品很好，价格便宜，收藏价值高全5分</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！！</p>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl"><p>馨***呀</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <div class="clearfix"><p><img src="img/temp/eva01.jpg"></p>
                            <p><img src="img/temp/eva02.jpg"></p>
                            <p><img src="img/temp/eva03.jpg"></p>
                            <p><img src="img/temp/eva04.jpg"></p>
                            <p><img src="img/temp/eva05.jpg"></p></div>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
                <div class="per clearfix"><img class="fl" src="img/temp/per02.jpg">
                    <div class="perR fl"><p>么***周</p>
                        <p>专辑超级棒，张艺兴太帅了，里面的歌很好听，我很喜欢。好评！</p>
                        <p><span>2016年12月27日08:31</span><span>购买数量：一套</span></p></div>
                </div>
            </div>
        </div>
    </div>
    <div class="msgR fr"><h4>为你推荐</h4>
        <div class="seeList"><a href="#">
            <dl>
                <dt><img src="img/flo2.jpg"></dt>
                <dd>【专辑】羊-SHEEP</dd>
                <dd>￥107.00</dd>
            </dl>
        </a><a href="#">
            <dl>
                <dt><img src="img/flo3.jpg"></dt>
                <dd>【专辑】梦不落雨林-NAMANANA</dd>
                <dd>￥297.00</dd>
            </dl>
        </a><a href="#">
            <dl>
                <dt><img src="img/flo4.jpg"></dt>
                <dd>【专辑】莲-Lit</dd>
                <dd>￥107.00</dd>
            </dl>
        </a><a href="#">
            <dl>
                <dt><img src="img/flo5.jpg"></dt>
                <dd>【EP】When It's Christmas</dd>
                <dd>￥79.00</dd>
            </dl>
        </a></div>
    </div>
</div>
<div class="like"><h4>猜你喜欢</h4>
    <div class="bottom">
        <div class="hd"><span class="prev"><img src="img/temp/prev.png"></span><span class="next"><img
                src="img/temp/next.png"></span></div>
        <div class="imgCon bd">
            <div class="likeList clearfix">
                <div><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/flo6.jpg"></dt>
                        <dd>【EP】Honey</dd>
                        <dd>￥79.00</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba2.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba2.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba1.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/ba1.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a></div>
                <div><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba2.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba3.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba1.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/ba1.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/ba2.jpg"></dt>
                        <dd>【杂志】芭莎</dd>
                        <dd>￥20.20</dd>
                    </dl>
                </a></div>
            </div>
        </div>
    </div>
</div><!--返回顶部-->
<div class="gotop"><a href="cart.jsp">
    <dl class="goCart">
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>1</span></dl>
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
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
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
