<%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/10
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="manage/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="manage/css/main.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="/Layshop/manage/admin_index.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="/Layshop/manage/admin_index.jsp">首页</a></li>
                <li><a href="/Layshop/index.jsp" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">销售人员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="/Layshop/manage/login.jsp">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">


                        <li><a href="${pageContext.request.contextPath}/admin_cateselect"><i class="icon-font">&#xe006;</i>分类管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin_productselect"><i class="icon-font">&#xe004;</i>图书管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/salecartselect"><i class="icon-font">&#xe012;</i>订单管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/saleuserselect"><i class="icon-font">&#xe052;</i>用户行为预测</a></li>
                        <li><a href="/Layshop/manage/admin_news.jsp"><i class="icon-font">&#xe033;</i>管理</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>

</div>
</body>
</html>