<%--
  Created by IntelliJ IDEA.
  User: zxr
  Date: 2021/5/3
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page  language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="admin_menuno.jsp" %>
    <!--/sidebar-->
    <div class="main-wrap"style="margin-top: -700px">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用豚豚XBACK的杂货铺。</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="admin_useradd.jsp"><i class="icon-font">&#xe001;</i>新增用户</a>
                    <a href="insert.jsp"><i class="icon-font">&#xe005;</i>新增图书</a>
                    <a href="insert.jsp"><i class="icon-font">&#xe048;</i>新增用户分类</a>
                    <a href="insert.jsp"><i class="icon-font">&#xe041;</i>新增图书分类</a>
                    <a href="#"><i class="icon-font">&#xe01e;</i>留言评论</a>
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
                        <label class="res-lab">运行环境</label><span class="res-info">Tomcat/2.2.21 (Win64) PHP/7.3.10</span>
                    </li>

                    <li>
                        <label class="res-lab">设计-版本</label><span class="res-info">v-0.5</span>
                    </li>
                    <li>
                        <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                    </li>
                    <li>
                        <label class="res-lab">北京时间</label><span class="res-info">2021年05月14日 21:08:24</span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info">localhost [ 192.67.45.1 ]</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info">137.3.0.1</span>
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
                        <label class="res-lab">更多信息：</label><span class="res-info"><a href="http://www.baidu.com/" target="_blank">豚豚的XBACK杂货铺</a></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->
