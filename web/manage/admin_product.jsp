<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_menuno.jsp" %>
    <!--/sidebar-->
    <div class="main-wrap"style="margin-top: -700px">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"> </i><a href="index.jsp">首页</a>
                <span class="crumb-step">&gt;</span>
                <span class="crumb-name">图书管理</span></div>
        </div>
     
        <div id="register" class="result-wrap">
            <form action="${pageContext.request.contextPath}/admin_productselect" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="${pageContext.request.contextPath}/admin_toproductadd"><i class="icon-font"></i>新增图书</a>

                        <!--  a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a -->
<%--                        "${pageContext.request.contextPath}/admin_toproductadd"--%>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="60%">
                        <tr>
            
                            <th>ID</th>
                            <th>商品名称</th>
                            <th>库存</th>
                            <th>操作</th>
                           
                        </tr>
                        
                        <c:forEach var="p" items="${plist}">
                        	<tr>
                        		<td>${p.PRODUCT_ID }</td>
                        		<td><img src="img/${p.PRODUCT_FILENAME}" width="80" height="80">
                        			${p.PRODUCT_NAME }
                        		
                        		</td>
                                <td>${p.PRODUCT_STOCK}</td>
                        		<td>
                        			<a href="admin_toproductupdate?id=${p.PRODUCT_ID}">修改</a>
                                    <a href="javascript:produdel(${p.PRODUCT_ID})">删除</a>
                        		</td>
                        	</tr>

	                    </c:forEach>
                        
                        
                        <script>
                        	function produdel(id) {
                        		if(confirm("你确认要删除这个图书吗")) {
                        			location.href="admin_doproductdel?id="+id;
                        			
                        		}
                        	}
                        	
                        	
                        </script>
                        
                    </table>
                    
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>