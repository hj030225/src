<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CRM系统</title>
<link rel="stylesheet" href="../resources/css/resourcemanage.css"
	type="text/css" />
<!-- <link rel="stylesheet" href="<c:url value="/resources/css/resourcemanage.css" />"
	type="text/css" /> -->
<link rel="stylesheet" href="../resources/css/global.css"
	type="text/css" />
<!-- <link rel="stylesheet" href="resources/css/global_color.css" type="text/css"/> -->
<script type="text/javascript" src="../resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../resources/js/cookie.min.js"></script>
<script type="text/javascript" src="../resources/js/resourcemanage.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/head.jsp" />
	<jsp:include page="/WEB-INF/views/layout/left.jsp" />
    <input type="hidden" value="${loginUser.loginName}" id="hidden-username"/>
    <input type="hidden" value="${loginUser.userType}" id="hidden-usertype"/>
	<form action="programmersearch" method="get" id="programmersearch">

		<!-- toolbar -->
		<div style="margin-top: 10px; ">
			<!-- 搜索工种/部门 -->
			<div class="div-inline" style="margin-left: 20px; ">
				<label>工种：</label> 
                <select id="sel_department" name="department">

					<option value="-1">全部</option>
					<option value="0">JAVA</option>
					<option value="1">Android</option>
					<option value="2">IOS</option>
					<option value="3">PHP</option>
				</select>
                <input type="hidden" value="${department}" id="hidden-department"/>
			</div>
			<!-- 状态 -->
			<div class="div-inline">
				<label>状态：</label> 
                <select id="sel_status" name="status">
					<option value="-1">全部</option>
					<option value="0">空闲</option>
					<option value="1">项目中</option>
				</select>
				<input type="hidden" value="${status}" id="hidden-status"/>
			</div>
			<div class="div-inline">
				<!--<input type="button" name="sousuo" value="搜索" />-->
				<button id="btn_search">搜索</button>
			</div>

		</div>


		<%-- <!--分页-->
				<div id="pages">
				<pg:pager items="${count}" export="currentPageNumber=pageNumber"
					maxPageItems="${initParam.pagerNum}" maxIndexPages="3"
					isOffset="true" url="/cccrm/PM">
					<pg:first>
						<a href="${pageUrl}">首页</a>
					</pg:first>
					<pg:prev>
						<a href="${pageUrl}">上一页</a>
					</pg:prev>
					<pg:pages>
						<c:choose>
							<c:when test="${currentPageNumber eq pageNumber}">
								<a class="current_page">${pageNumber }</a>
							</c:when>
							<c:otherwise>
								<a href="${pageUrl}">${pageNumber }</a>
							</c:otherwise>
						</c:choose>
					</pg:pages>
					<pg:next>
						<a href="${pageUrl}">下一页</a>
					</pg:next>
					<pg:last>
						<a href="${pageUrl}">尾页</a>
					</pg:last>
				</pg:pager>
			</div> --%>
	</form>
	<div>
		<!--<a href="http://localhost:8080/cccrm/test/addprogrammer">新增资源</a>-->
		<button onClick="addResouce();">新增资源</button>
	</div>
	<!-- resource table -->
	<div style="margin-top: 20px; margin-left: 20px; float: left;">
		<table>
			<tr class="t0">
				<th class="t1">工种</th>
				<th class="t2">姓名</th>
				<th class="t3">性别</th>
				<th class="t4">邮箱</th>
				<th class="t5">手机</th>
				<th class="t6">QQ</th>
				<th class="t7">状态</th>
				<th class="t8">操作</th>
			</tr>
			<c:forEach var="programmer" items="${programmers}">
				<tr>
					<th><c:choose>
							<c:when test="${programmer.department == 0}">JAVA</c:when>
							<c:when test="${programmer.department == 1}">Android</c:when>
							<c:when test="${programmer.department == 2}">IOS</c:when>
							<c:when test="${programmer.department == 3}">PHP</c:when>
						</c:choose></th>
					<th>${programmer.programmerName}</th>
					<th><c:choose>
							<c:when test="${programmer.programmerSex == 0}">男</c:when>
							<c:when test="${programmer.programmerSex == 1}">女</c:when>
						</c:choose></th>
					<th>${programmer.loginName}</th>
					<th>${programmer.userMobile}</th>
					<th>${programmer.programmerQq}</th>
					<th><c:choose>
							<c:when test="${programmer.programmerStatus == 0}">空闲</c:when>
							<c:when test="${programmer.programmerStatus == 1}">项目中</c:when>
						</c:choose></th>
					<th><a class="btn_delete" onclick="" id="Arch" href="<c:url value="/resource/viewProgrammer?id=${programmer.id}" />">查看</a>
						<a class="btn_delete" onclick="" href="<c:url value="/resource/editProgrammer?id=${programmer.id}" />">编辑</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>


</body>

</html>