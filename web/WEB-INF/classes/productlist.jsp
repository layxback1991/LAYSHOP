<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>${title}</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>

<%@ include file="header.jsp" %>


<div class="banner"><a href="#"><img src="img/temp/banner1.jpg"width="1400px" height="500px"/></a></div>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="indexselect">首页</a><span>/</span><a
            href="flowerDer.jsp">杂志</a><span>/</span><a href="proList.jsp" class="on">${title}</a></div>
</div><!-------------------current---------------------->
<div class="current">
    <div class="wrapper clearfix"><h3 class="fl">${title}</h3>
        <div class="fr choice"><p class="default">排序方式</p>
            <ul class="select">
                <li>新品上市</li>
                <li>销量从高到低</li>
                <li>销量从低到高</li>
                <li>价格从高到低</li>
                <li>价格从低到高</li>
            </ul>
        </div>
    </div>
</div><!----------------proList------------------------->
<ul class="proList wrapper clearfix">
  
  
  	<c:forEach var="p" items="${list}">
	    <li><a href="selectproductview?id=${p.PRODUCT_ID}">
	        <dl>
	            <dt><img src="img/${p.PRODUCT_FILENAME }"></dt>
	            <dd>【豚豚的Xback杂货铺】${p.PRODUCT_NAME }</dd>
	            <dd>￥${p.PRODUCT_PRICE }.00</dd>
	        </dl>
	    </a>
        </li>
    </c:forEach>
    
    
    
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro02.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro03.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro04.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro05.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro06.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro07.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro08.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro01.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro02.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro03.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro04.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>jsp
            <dt><img src="img/temp/pro05.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro06.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro07.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro08.jpg"></dt>
            <dd>【豚豚的Xback杂货铺】最岛小羊</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
</ul><!----------------mask------------------->
<div class="mask"></div>
<!-------------------mask内容------------------->
<div class="proDets" >
    <img class="off" src="img/temp/off.jpg"/>
    <div class="tit clearfix" >
        <h4 class="fl">【豚豚XBACK的杂货铺】</h4>
        <span class="fr">￥107.00</span></div>
    <div class="proCon clearfix">
        <div class="proImg fl"><img class="list" src="img/temp/proDet.jpg"/>
            <div class="smallImg clearfix">
                <img src="img/temp/proDet01.jpg" data-src="img/temp/proDet01_big.jpg">
                <img
                    src="img/temp/proDet02.jpg" data-src="img/temp/proDet02_big.jpg">
                <img src="img/temp/proDet03.jpg" data-src="img/temp/proDet03_big.jpg">
                <img
                    src="img/temp/proDet04.jpg" data-src="img/temp/proDet04_big.jpg"></div>
        </div>
        <div class="fr">
            <div class="proIntro">
                <p>内容分类</p>
                <div class="smallImg clearfix categ"><p class="fl">
                    <img src="img/temp/prosmall01.jpg" alt="正面" data-src="img/temp/proBig01.jpg"></p>
                    <p class="fl">
                        <img src="img/temp/prosmall02.jpg" alt="侧面" data-src="img/temp/proBig02.jpg"></p>
                    <p class="fl"><img src="img/temp/prosmall03.jpg" alt="里面" data-src="img/temp/proBig03.jpg">
                    </p>
                    <p class="fl"><img src="img/temp/prosmall04.jpg" alt="小卡" data-src="img/temp/proBig04.jpg">
                    </p></div>
                <p>数量&nbsp;&nbsp;库存<span>2333</span>件</p>
                <div class="num clearfix"><img class="fl sub" src="img/temp/sub.jpg">
                    <span class="fl" contentEditable="true">1</span>
                    <img
                        class="fl add" src="img/temp/add.jpg">
                    <p class="please fl">请选择商品属性!</p></div>
            </div>
            <div class="btns clearfix">
                <a href="javascript:shopAdd(${p.PRODUCT_ID },'s')"><p class="buy fl">立即购买</p></a>
                <a href="javascript:shopAdd(${p.PRODUCT_ID },'s')"><p class="cart fr">加入购物车</p></a>
            </div>
        </div>
    </div>
    <a class="more" href="proDetail.jsp">查看更多细节</a></div>

<script>
    function shopAdd(id, url) {
        var count = document.getElementById("count").innerHTML;

        location.href='cartadd?id='+id+'&count='+count+'&url='+url;

    }

</script>
<!--返回顶部-->

<div class="gotop"><a href="showcart">
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
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>