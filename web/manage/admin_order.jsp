<%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/3
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page  language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_menu.jsp" %>
<%--销量查看--%>
<!--/sidebar-->

<div class="main-wrap"style="margin-top: -700px">

    <div class="crumb-wrap">
        <div class="crumb-list"><i class="icon-font"> </i><a href="index.jsp">首页</a>
            <span class="crumb-step">&gt;</span>
            <span class="crumb-name">销量管理</span></div>
    </div>
    <div class="search-wrap">
        <div class="search-content">

            <form action="admin_cartselect" method="get">
                <table class="search-tab">
                    <tr>

                        <th width="70">关键字:</th>
                        <td><input class="common-text" placeholder="关键字" name="keywords" value="${param.keywords}" id="" type="text"></td>
                        <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        <td><input class="btn btn-primary btn2" name="sub" value="查询${param.keywords}商品销量预测分析报告" onclick=ale()></td>

                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="result-wrap">
        <form name="myform" id="myform" method="post">

            <div class="result-content">
                <table class="result-tab" width="100%">
                    <tr>
                        <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                        <th>订单编号</th>
                        <th>商品名称</th>
                        <th>商品价格</th>
                        <th>商品销量</th>
                        <th>商品库存</th>
                        <th>商品编号</th>
                        <th>下单时间</th>
                        <th>购买者ID</th>

                    </tr>
                    <c:forEach items="${cartlist}" var="cart" >
                        <tr>
                            <td class="tc"><input name="id[]" value="${cart.cart_p_id}" type="checkbox"></td>
                            <td> ${cart.cart_id }</td>
                            <td> ${cart.cart_p_name}</td>
                            <td> ${cart.cart_p_price}</td>
                            <td> ${cart.cart_quantity}</td>
                            <td> ${cart.cart_p_stock}</td>
                            <td> ${cart.cart_p_id}</td>
                            <td> ${cart.order_time}</td>
                            <td>${cart.cart_u_id }</td>
                        </tr>
                    </c:forEach>

                    <script>
                        function Delete(mess, url) {
                            if(confirm(mess)) {
                                location.href=url;

                            }
                        }

                        function selall(o) {
                            var a = document.getElementsByName('id[]');



                            for(var i=0; i<a.length; i++) {
                                a[i].checked = o.checked;
                            }
                        }

                        function delmore(mess, formname) {
                            if(confirm(mess)) {
                                var form = document.getElementById(formname);
                                form.submit();
                            }
                        }

                        function ale(){
                            alert("该商品最近销量有增有减，但是增长的趋势很明显，可以加大库存........");
                        }


                    </script>

                </table>
                <div class="list-page">
                    共 ${tsum} 条记录， 当前 ${cpage}/${tpage} 页
                    <a href="admin_cartselect?cp=1${searchParams}">首页</a>
                    <a href="admin_cartselect?cp=${cpage-1<1?1:cpage-1}${searchParams}">上一页</a>
                    <a href="admin_cartselect?cp=${cpage+1>tpage?tpage:cpage+1}${searchParams}">下一页</a>
                    <a href="admin_cartselect?cp=${tpage}${searchParams}">尾页</a>

                </div>

            </div>
        </form>
    </div>
</div>

<!--/main-->

