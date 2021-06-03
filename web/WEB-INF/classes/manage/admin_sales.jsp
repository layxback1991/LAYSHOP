<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/11/25
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page  language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="/Layshop04/manage/admin_index.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="/Layshop04/manage/admin_index.jsp">首页</a></li>
                <li><a href="/Layshop04/index.jsp" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">销售人员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="/Layshop04/manage/login.jsp">退出</a></li>
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


<!--/sidebar-->
<div class="main-wrap"style="margin-top: -700px">
    <div class="crumb-wrap">
        <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎光临豚豚的Xback杂货铺。</span></div>
    </div>
    <div class="result-wrap">
        <div class="result-title">
            <h1>快捷操作</h1>
        </div>
        <div class="result-content">
            <div class="short-wrap">
                <a href="${pageContext.request.contextPath}/admin_toproductadd" methods="post"><i class="icon-font">&#xe001;</i>新增图书</a>

                <a href="${pageContext.request.contextPath}/admin_tocateadd"><i class="icon-font">&#xe048;</i>新增分类</a>
                <a href="${pageContext.request.contextPath}/admin_cartselect"><i class="icon-font">&#xe01e;</i>销量管理</a>
            </div>
        </div>
    </div>
    <div class="result-wrap">
        <div class="result-title">
            <h1>系统基本信息</h1>
        </div>
        <div class="result-content">
            <ul class="sys-info-list">
                <li>
                    <label class="res-lab">操作系统</label><span class="res-info">WINNT</span>
                </li>
                <li>
                    <label class="res-lab">运行环境</label><span class="res-info">Apache/2.2.21 (Win64) PHP/7.3.10</span>
                </li>
                <li>
                    <label class="res-lab">PHP运行方式</label><span class="res-info">tomcat</span>
                </li>
                <li>
                    <label class="res-lab">设计版本</label><span class="res-info">v-0.1</span>
                </li>
                <li>
                    <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                </li>
                <li>
                    <label class="res-lab">北京时间</label><span class="res-info">2020年11月30日 21:08:24</span>
                </li>
                <li>
                    <label class="res-lab">服务器域名/IP</label><span class="res-info">localhost [ 47.0.0.1 ]</span>
                </li>
                <li>
                    <label class="res-lab">Host</label><span class="res-info">127.0.0.1</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="result-wrap">
        <div class="result-title">
            <h1>使用帮助</h1>
        </div>
        <div class="result-content">
            <ul class="sys-info-list">
                <li>
                    <label class="res-lab">更多信息：</label><span class="res-info"><a href="http://www.baidu.com/" target="_blank"></a></span>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--/main-->


</body>
</html>
