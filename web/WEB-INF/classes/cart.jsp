<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="css/public.css" charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css" charset="utf-8"/>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body><!--------------------------------------cart------------------->
<%@ include file="header.jsp" %>
<div class="cart mt"><!-----------------logo------------------->
    <!--<div class="logo"><h1 class="wrapper clearfix"><a href="index.html"><img class="fl" src="img/temp/logo.png"></a><img class="top" src="img/temp/cartTop01.png"></h1></div>-->
    <!-----------------site------------------->
    <div class="site">
        <p class=" wrapper clearfix">
            <span class="fl">购物车</span>
        <img class="top"  src="img/temp/cartTop01.png">
        <a href="indexselect" class="fr">继续购物&gt;</a>
        </p>
    </div><!-----------------table------------------->
    <div class="table wrapper">
        <div class="tr">
            <div>商品</div>
            <div>单价</div>
            <div>数量</div>
            <div>小计</div>
            <div>操作</div>
        </div>
       
       <c:forEach var="rs" items="${requestScope.shoplist}">
       
        <div class="th">
            <div class="pro clearfix"><label class="fl">
            	<input name="ck" type="checkbox" value="${rs.cart_id}"/>
            	
            	<span></span></label>
            	<a class="fl" href="selectproductview?id=${rs.cart_p_id}">
                <dl class="clearfix">
                    <dt class="fl"><img width="120" height="120" src="img/${rs.cart_p_filename}"></dt>
                    <dd class="fl"><p>${rs.cart_p_name }</p>
                        <p>图书分类</p>
                        <p>好书+内容全</p></dd>
                </dl>
            </a></div>
            <div class="price">￥${rs.cart_p_price}.00</div>
            <div class="number">
            	<p class="num clearfix">
            	<img class="fl sub" src="img/temp/sub.jpg">
            	<span datasrc="${rs.cart_id}" class="fl">${rs.cart_quantity}</span>
            	<img class="fl add" src="img/temp/add.jpg"></p>
           </div>
            <div class="price sAll" contentType="UTF-8">&yen;${rs.cart_p_price * rs.cart_quantity }.00</div>
            <div class="price"><a class="del" datasrc="${rs.cart_id}" href="cartshopdel?esid=${rs.cart_id }">删除</a></div>
        </div>
       </c:forEach>
        <div class="goOn">空空如也~<a href="indexselect">去逛逛</a></div>
        <div class="tr clearfix"><label class="fl"><input class="checkAll" type="checkbox"/><span></span></label>
            <p class="fl"><a href="#">全选</a>
                <a href="cartshopdel?esid=${rs.cart_id}" class="del">删除</a>
            </p>
            <p class="fr">
                <span>共<small id="sl">0</small>件商品</span>
                <span>合计:&nbsp;<small id="all">	&#165;0.00</small></span>
                <a href="javascript:toorder()" class="count">结算</a></p></div>
    </div>
</div>

<script>
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
    function shopAdd(id, url) {
        var count = document.getElementById("count").innerHTML;

        location.href='cartadd?id='+id+'&count='+count+'&url='+url;

    }
</script>
<div class="mask"></div>
<div class="tipDel"><p>确定要删除该商品吗？</p>
    <p class="clearfix"><a class="fl cer" href="#">确定</a><a class="fr cancel" href="#">取消</a></p></div><!--返回顶部-->
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
</a><a href="#" class="toptop" style="display: none;">
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
        违法和不良信息举报电话：1999-10-07</p>
</div>
<!----------------mask------------------->
<div class="mask"></div><!-------------------mask内容------------------->
<div class="proDets"><img class="off" src="img/temp/off.jpg"/>
    <div class="tit clearfix"><h4 class="fl">【专辑】${rs.cart_p_name }</h4><span class="fr">￥${rs.cart_p_price}.00</span></div>
    <div class="proCon clearfix">
        <div class="proImg fl">
            <img class="list" src="img/temp/proDet.jpg"/>
            <div class="smallImg clearfix">
                <img src="img/temp/proDet01.jpg" data-src="img/temp/proDet01_big.jpg">
                <img src="img/temp/proDet02.jpg" data-src="img/temp/proDet02_big.jpg">
                <img src="img/temp/proDet03.jpg" data-src="img/temp/proDet03_big.jpg">
                <img src="img/temp/proDet04.jpg" data-src="img/temp/proDet04_big.jpg">
            </div>
        </div>
        <div class="fr">
            <div class="proIntro"><p>内容展示</p>
                <div class="smallImg clearfix categ">
                    <p class="fl">
                    <img src="img/temp/prosmall01.jpg"  alt="正面"  data-src="img/temp/proBig01.jpg">
                    </p>
                    <p class="fl">
                        <img src="img/temp/prosmall02.jpg" alt="侧面"  data-src="img/temp/proBig02.jpg">
                    </p>
                    <p class="fl">
                        <img src="img/temp/prosmall03.jpg" alt="里面" data-src="img/temp/proBig03.jpg">
                    </p>
                    <p class="fl">
                        <img src="img/temp/prosmall04.jpg" alt="小卡" data-src="img/temp/proBig04.jpg">
                    </p>
                </div>
                <p>数量&nbsp;&nbsp;库存<span>${rs.cart_p_stock}</span>件</p>

                <div class="num clearfix">
                    <img class="fl sub" src="img/temp/sub.jpg">
                    <span class="fl" contentEditable="true">1</span>
                    <img  class="fl add" src="img/temp/add.jpg">
                    <p class="please fl">请选择商品属性!</p>
                </div>
            </div>
            <div class="btns clearfix">
                 <a href="javascript:shopAdd(${rs.cart_p_id })"><p class="buy fl">立即购买</p></a>
                <a href="javascript:shopAdd(${rs.cart_p_id })"><p class="cart fr"> 加入购物车</p></a>
            </div>
        </div>
    </div>
<div class="pleaseC"><p>请选择宝贝</p><img class="off" src="img/temp/off.jpg"/></div>

<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript"  charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
</div>
</body>
</html>
