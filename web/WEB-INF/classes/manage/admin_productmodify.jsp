<%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/10
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="admin_menuno.jsp" %>
<!--/sidebar-->
<div class="main-wrap"style="margin-top: -700px">

    <div class="crumb-wrap">
        <div class="crumb-list">
            <i class="icon-font"> </i>
            <a href="/jscss/admin/design/">首页</a>
            <span class="crumb-step">&gt;</span>
            <a class="crumb-name" href="/admin_cartselect">图书管理</a>
            <span class="crumb-step">&gt;</span>
            <span>修改图书</span></div>
    </div>
    <div class="result-wrap">
        <div class="result-content">
            <form action="${pageContext.request.contextPath}/admin_doproductupdate" method="post" id="myform" name="myform">
                <input type="hidden" name="Product_ID" value="${product1.PRODUCT_ID }">
                <table class="insert-tab" width="100%">
                    <tbody>

                    <tr>
                        <th><i class="require-red">*</i>图书名称：</th>
                        <td>
                            <input class="common-text required" id="title" name="Product_NAME" size="50" value="${product1.PRODUCT_NAME }" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>图书分类：</th>
                        <td>
                            <select class="common-text required"  name="PRODUCT_FID">
                                <option value="0">根分类</option>
                                <<c:forEach var="pro" items="${productArrayList }">
                                <c:if test="${pro.PRODUCT_FID== product1.PRODUCT_FID }">
                                    <c:if test="${product1.PRODUCT_FID == pro.PRODUCT_ID}">
                                        <option value="${pro.PRODUCT_ID }" selected="selected"> ${pro.PRODUCT_NAME } </option>
                                    </c:if>
                                    <c:if test="${product1.PRODUCT_FID != pro.PRODUCT_ID}">
                                        <option value="${pro.PRODUCT_ID }"> ${pro.PRODUCT_NAME } </option>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <th><i class="require-red">*</i>图书图片：</th>
                        <td>
                    <input class="common-text required" id="title" name="PRODUCT_FILENAME" size="50" value="${product1.PRODUCT_FILENAME }" type=type="text">


                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>图书价格：</th>
                        <td>
                            <input class="common-text required" id="title" name="PRODUCT_PRICE" size="50" value="${product1.PRODUCT_PRICE}" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>图书介绍：</th>
                        <td>
                            <input class="common-text required" id="title" name="PRODUCT_DESCRIPTION" size="50" value="${product1.PRODUCT_DESCRIPTION }" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>图书库存：</th>
                        <td>
                            <input class="common-text required" id="title" name="PRODUCT_STOCK" size="50" value="${product1.PRODUCT_STOCK }"  type="text">
                        </td>
                    </tr>

                    <tr>
                        <th><i class="require-red">*</i>图书子产品ID：</th>
                        <td>
                            <input class="common-text required" id="title" name="PRODUCT_CID" size="50" value="${product1.PRODUCT_CID }"  type="text">
                        </td>
                    </tr>

                    <tr>
                        <th></th>
                        <td>
                            <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                            <input class="btn btn6" onClick="history.go(-1)" value="返回" type="button">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>

</div>
<!--/main-->
