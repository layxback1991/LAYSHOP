<%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/3
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>豚豚的Xback杂货铺</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/myorder.css"/>
</head>
<body><!------------------------------head------------------------------>

<%@ include file="header.jsp" %>
<!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix"><a href="indexselect" class="fl">首页</a><span>/</span><a
            href="mygxin.jsp">个人中心</a><span>/</span><a href="myorderq.jsp" class="on">我的订单</a></div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3><a href="#"><img src="img/tx.png"/></a>
                <p class="clearfix"><span class="fl">【${name.USER_NAME}】</span><span class="fr">[退出登录]</span></p></h3>
            <div><h4>我的交易</h4>
                <ul>
                    <li><a href="showcart">我的购物车</a></li>
                    <li><a href="myorderq.jsp">我的订单</a></li>
                    <li><a href="myprod.jsp">评价晒单</a></li>
                </ul>
                <h4>个人中心</h4>
                <ul>
                    <li><a href="mygxin.jsp">我的中心</a></li>
                    <li><a href="address.jsp">地址管理</a></li>
                </ul>
                <h4>账户管理</h4>
                <ul>
                    <li class="on"><a href="mygrxx.jsp">个人信息</a></li>
                    <li><a href="remima.jsp">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div class="my clearfix"><h2 class="fl">我的订单</h2><a href="#" class="fl">请谨防钓鱼链接或诈骗电话，了解更多&gt;</a></div>
            <div class="dlist clearfix">
                <ul class="fl clearfix" id="wa">
                    <li class="on"><a href="#2">全部有效订单</a></li>
                    <li><a href="#2">待支付</a></li>
                    <li><a href="#2l">待收货</a></li>
                    <li><a href="#2">已关闭</a></li>
                </ul>
                <form action="#" method="get" class="fr clearfix"><input type="text" name="" id="" value=""
                                                                         placeholder="请输入商品名称、订单号"/><input type="button"
                                                                                                           name="" id=""
                                                                                                           value=""/>
                </form>
            </div>
            <div class="dkuang"><p class="one">已收货</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li>2021年5月1日 18:53</li>
                        <li>张雪蓉</li>
                        <li>订单号:5160513358520018</li>
                        <li>在线支付</li>
                    </ul>
                    <p class="fr">订单金额：<span>99.00</span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#">新鲜小羊</a><a href="#">¥99.00×1</a></p>
                    <p class="fr"><a href="myprod.jsp">待评价</a><a href="orderxq.jsp">订单详情</a></p></div>
            </div>
            <div class="dkuang clearfix deng"><p class="one fl">待收货</p>
                <div class="clearfix">
                    <div class="fl vewwl"><a href="wuliu.jsp" class="ckwl">查看物流</a>
                        <div class="wuliu"><h4>圆通速递：858888888888888</h4>
                            <ul>
                                <li><p>妥投投递并签收，已签收。签收人：本人签收</p>
                                    <p>2016-12-03 17:30:00</p></li>
                                <li><p>深圳市南油速递营销部安排投递（投递员姓名：六六六。联系电话：14243452522;</p>
                                    <p>2016-12-03 08:50:00</p></li>
                                <li><p>到达广东省邮政速递物流有限公司深圳航空邮件处理中心处理中心（经转）</p>
                                    <p>2016-12-03 02:20:00</p></li>
                                <li>以上为最新跟踪信息<a href="wuliu.jsp">查看全部</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li>2016年12月1日 18:53</li>
                        <li>杨小黄</li>
                        <li>订单号:5160513358520018</li>
                        <li>在线支付</li>
                    </ul>
                    <p class="fr">订单金额：<span>99.00</span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#">新鲜小羊</a><a href="#">¥99.00×1</a></p>
                    <p class="fr"><a href="#">确认收货</a><a href="orderxq.jsp">订单详情</a></p></div>
            </div>
            <div class="dkuang deng"><p class="one">待支付</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li>2016年12月1日 18:53</li>
                        <li>杨小黄</li>
                        <li>订单号:5160513358520018</li>
                        <li>在线支付</li>
                    </ul>
                    <p class="fr">订单金额：<span>99.00</span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#">新鲜小羊</a><a href="#">¥99.00×1</a></p>
                    <p class="fr"><a href="#">立即支付</a><a href="orderxq.jsp">订单详情</a></p></div>
            </div>
            <div class="dkuang"><p class="one">已关闭</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li>2016年12月1日 18:53</li>
                        <li>杨小黄</li>
                        <li>订单号:5160513358520018</li>
                        <li>在线支付</li>
                    </ul>
                    <p class="fr">订单金额：<span>99.00</span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#">新鲜小羊</a><a href="#">¥99.00×1</a></p>
                    <p class="fr"><a href="#">交易失败</a><a href="orderxq.jsp">订单详情</a></p></div>
            </div>
            <div class="fenye clearfix"><a href="#"><img src="img/zuo.jpg"/></a><a href="#">1</a><a href="#"><img
                    src="img/you.jpg"/></a></div>
        </div>
    </div>
</div><!--返回顶部-->
<div class="gotop"><a href="showcart">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
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
</a><a href="#" class="toptop" style="display: none">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div><!--footer-->
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
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
