<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customermanage.css" type="text/css"></link>
<script type="text/javascript" src="../resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../resources/js/customermanage.js"></script>
</head>
<body>
<form action="searchcustomer" method="get" id="customermanage">
	<center>
		<jsp:include page="/WEB-INF/views/layout/head.jsp" />
			<div class="bottom">
				<jsp:include page="/WEB-INF/views/layout/left.jsp" />
				
				
				<div class="main">
				<div class="zt">
					<select name="status" id="sel_status">	
					<option value="-1">全部</option>
					<option value="0">空闲</option>
					<option value="1">项目中</option>
					</select>
					<input type="hidden" value="${status}" id="hidden-status"/>
					<div class="sousuo"><button id="btn_search" >搜索</button></div>
				</div>
				
				
				<div class="xz"><a href="addCustomer">新增资源</a></div>
				<table width="700px">
					<tr class="t0"><th class="t1">公司名称</th><th class="t2">联系人</th><th class="t3">性别</th><th class="t4">邮箱</th><th class="t5">手机</th><th class="t6">QQ</th><th class="t7">状态</th><th class="t8">操作</th></tr>
					<c:forEach var="customer" items="${customers}">
					<tr><th>${customer.customerName}</th>
						<th>${customer.customerMan}</th>
						<th>
							<c:choose>
									  <c:when test="${customer.customerSex == 0}">男</c:when>
								  	  <c:when test="${customer.customerSex == 1}">女</c:when>
						    </c:choose>
						</th>
						<th>${customer.userEmail}</th>
						<th>${customer.userMobile}</th>
						<th>${customer.customerQq}</th>
						<th>
							<c:choose>
									  <c:when test="${customer.customerStatus == 0}">空闲</c:when>
								  	  <c:when test="${customer.customerStatus == 1}">项目中</c:when>
						    </c:choose>
						</th>
						<th><a onclick=""  href="<c:url value="/customer/viewCustomer?id=${customer.id}" />">查看</a>
							<a onclick=""  href="<c:url value="/customer/editCustomer?id=${customer.id}" />">编辑</a>
						</th>
						</tr>
						
					</c:forEach>
				</table>
			</div>
			</div>
			
			<!--分页-->
				<div id="pages">
				
				 	<c:if test="${allcustomers == 'allcustomers'}">
						<c:set var="a" value="customermanage" />
					</c:if>
					<c:if test="${searchcustomers == 'searchcustomers'}">
						<c:set var="a" value="searchcustomer" />
					</c:if> 
					
					<pg:pager items="${count}" export="currentPageNumber=pageNumber"
						maxPageItems="${initParam.pagerNum}" maxIndexPages="5"
						isOffset="true" url="${a}">
						<pg:first>
							<a href="${pageUrl}">首页</a>
							<%-- <button onclick="gotoPage('${pageUrl}');">首页</button> --%>
						</pg:first>
						<pg:prev>
							<a href="${pageUrl}">前页</a> 
							<%-- <button onclick="gotoPage('${pageUrl}');">前页</button> --%>
						</pg:prev>
						<pg:pages>
							<c:choose>
								<c:when test="${currentPageNumber eq pageNumber}">
									<a class="current_page">${pageNumber }</a>
								</c:when>
								<c:otherwise>
									<a href="${pageUrl}">${pageNumber }</a> 
									<%-- <button onclick="gotoPage('${pageUrl}');">${pageNumber}</button> --%>
								</c:otherwise>
							</c:choose>
						</pg:pages>
						<pg:next>
								 <a href="${pageUrl}">后页</a> 
							<%-- <button onclick="gotoPage('${pageUrl}');">后页</button> --%>
						</pg:next>
						<pg:last>
								 <a href="${pageUrl}">尾页</a> 
							<%-- <button onclick="gotoPage('${pageUrl}');">尾页</button> --%>
						</pg:last>
					</pg:pager>
				</div>
			
			
	</center>
	</form>
</body>
</html>