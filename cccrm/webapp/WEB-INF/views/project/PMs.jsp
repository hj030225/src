<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>项目管理</title>
<link type="text/css" rel="stylesheet" media="all"
	href="../resources/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="../resources/css/global_color.css" />
<script type="text/javascript" src="${path}/resources/js/jquery.min.js"></script>

<script type="text/javascript">
    function deleteInfo() {
	     if (confirm("确定要删除此商品信息吗？\r\n删除后将不能恢复!")) {
		     return true;
	     } else {
		     return false;
	     }
     }
	function over() {
		document.getElementById('a').style.background = "#fff";
		document.getElementById('a').style.color = "#697d84";
	}

	function overes() {
		document.getElementById('a').style.background = "#3CB371";
		document.getElementById('a').style.color = "#fff";
	}
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="../resources/img/logo.png" alt="logo" /> <a href="#">注销</a>

	</div>

	<!--主要区域开始-->
	<div id="main">
		<div id="mains">
			<div id="contents">
				<div class="sysmenua" onMouseOut="overes()">
					<ul>
						<li><a id="a" class="current" href="javascript:void(0);">项目管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">客户管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">程序员管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">系统管理</a></li>
					</ul>
				</div>
				<div class="bottom">
					<img src="../resources/img/video.png" class="imgs"> <a
						href="#">视频会议</a> <img src="../resources/img/phone.png"
						class="imges"> <a href="#">在线客服</a>

				</div>
			</div>

			<div id="record">

				<div id="subfield">分栏</div>

				<div class="search_add">
					<form action="${path}/seachPros" method="post">
						<input type="text" placeholder="请输入项目名称" name="proName"
							class="search"> <input type="submit" class="find"
							value="搜索">
					</form>
				</div>

				<!--数据区域：用表格展示数据-->
				<div id="data">
					<div class="news">
						<c:if test="${new1 == 'new1'}">
							<div class="olds">
								<a id="old" href="${path}/PM">当前项目</a>
							</div>
							<div class="oldes">
								<a href="${path}/PMs">历史项目</a>
							</div>
						</c:if>
						<c:if test="${old1 == 'old1'}">
							<div class="oldes">
								<a id="old" href="${path}/PM">当前项目</a>
							</div>
							<div class="olds">
								<a href="${path}/PMs">历史项目</a>
							</div>
						</c:if>

					</div>
					<table id="datalist">
						<tr id="tres">
							<th width="150px">项目名称</th>
							<th width="100px">开发时间</th>
							<th width="100px">结束时间</th>
							<th width="100px">状&nbsp;&nbsp;态</th>
							<th width="150px">操&nbsp;作</th>
						</tr>
						<c:forEach var="project" items="${projects}">
							<fmt:formatDate var="starttime" value="${project.starttime}"
								type="both" pattern="yyyy-MM-dd " />
							<fmt:formatDate var="endtime" value="${project.endtime}"
								type="both" pattern="yyyy-MM-dd " />
							<tr id="tres">
								<td><a href="${path}/ProjectInfo?id=${project.id}"
									class="btn_delete">${project.proName}</a></td>
								<td>${starttime}</td>
								<td>${endtime}</td>
								<td><c:choose>
										<c:when test="${project.status == 1}">
				                                                                                进行中
			                           </c:when>
										<c:otherwise>
				                                                                                    完成
			                           </c:otherwise>
									</c:choose></td>
								<td class="td_modi">
								
								<a class="btn_delete" 
								    href="${path}/AddProgrammer?id=${project.id}">分配人员</a>&nbsp;&nbsp;
								<a class="btn_delete"onclick="changA()" id="Arch"
									href="${path}/updateProject?id=${project.id}">修改</a>&nbsp;&nbsp;
									
									
								<a class="btn_delete" onclick="return deleteInfo();"
									href="${path}/delectPros?id=${project.id}">删除</a>
									</td>
							</tr>
						</c:forEach>
					</table>

				</div>



				<!--分页-->
				<div id="pages">
					<c:if test="${new1 == 'new1'}">
						<c:set var="a" value="${path}/PM" />
					</c:if>
					<c:if test="${old1 == 'old1'}">
						<c:set var="a" value="${path}/PMs" />
					</c:if>
					<c:if test="${seach == 'seach'}">
						<c:set var="a" value="${path}/seachPros" />
					</c:if>
					<pg:pager items="${count}" export="currentPageNumber=pageNumber"
						maxPageItems="${initParam.pagerNum}" maxIndexPages="5"
						isOffset="true" url="${a}">
						<pg:first>
							<a href="${pageUrl}">首页</a>
						</pg:first>
						<pg:prev>
							<a href="${pageUrl}">前页</a>
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
							<a href="${pageUrl}">后页</a>
						</pg:next>
						<pg:last>
							<a href="${pageUrl}">尾页</a>
						</pg:last>
					</pg:pager>
				</div>

			</div>
		</div>
	</div>
</body>
</html>