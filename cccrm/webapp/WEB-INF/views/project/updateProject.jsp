<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri= "http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员信息</title>
<link type="text/css" rel="stylesheet" media="all" href="${path}/resources/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="${path}/resources/css/global_color.css" />
<script src="${path}/resources/laydate/laydate.js"></script> 
<script type="text/javascript">
function over() {
	document.getElementById('a').style.background="#fff";
	document.getElementById('a').style.color="#697d84";
}

function overes() {
	document.getElementById('a').style.background="#3CB371";
	document.getElementById('a').style.color="#fff";
}

$(function(){
	$('.date_picker').date_input();
	})
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="${path}/resources/img/logo.png" alt="logo" /> <a href="#">注销</a>

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
			 <img src="${path}/resources/img/video.png" class="imgs">
			 <a href="#" >视频会议</a>
			  
			 <img  src="${path}/resources/img/phone.png" class="imges">
			 <a href="#">在线客服</a>
			 
			</div>
			</div>
			
            
			<div id="record">
				<div id="subfield">分栏</div>	
				<form action="/cccrm/updatePros" method="post"  class="white-pink">
				    <input type="hidden" name="id" value="${project.id}">
					<label> <span>项目名称 :</span> 
					<input id="name" type="text" name="proName" value="${project.proName }" />
					</label> 
					<label> <span>合同编号 :</span>
					 <input name="bargainNo" type="text" value="${project.bargainNo}"  />
					</label>
					<label> <span>状态:</span>
					<c:if test="${project.status == 1}">
				       <c:set var="m" value="checked" />
			         </c:if>
					<c:if test="${project.status == 2}">
				       <c:set var="f" value="checked"/>
			         </c:if>
					<input name="status" type="radio" class="radios" value="1" ${m}>未完成
		            <input name="status" type="radio"  class="radios" value="2" ${f}>完成
					</label>
					
					<label> <span>客户 :</span>
					  <select name="customer.id">
					   <c:forEach var="cus" items="${customer}">
					   <c:if test="${cus.id == project.customer.id}">
				       <option value="${cus.id}" selected="selected">${cus.name}</option>
			           </c:if>
			           <option value="${cus.id}">${cus.name}</option>
					   </c:forEach>
					  </select>
					
					</label>
					
					<fmt:formatDate var="starttime" value="${project.starttime}" type="both" pattern="yyyy-MM-dd "/>
					 <label> <span>开始时间 :</span>
					  <input name="starttime"  placeholder="请输入日期" onclick="laydate()" type="text"  value="${starttime}"   />
					</label>
					 <fmt:formatDate var="endtime" value="${project.endtime}" type="both" pattern="yyyy-MM-dd " />
					<label> <span>结束时间 :</span>
					
					<input name="endtime"	type="text" value="${endtime}" onclick="laydate()" />
					</label>	  
					<label> <span>&nbsp;</span> 
					<input type="submit" class="button" value="确认修改" />
					</label>		
				</form>
			</div>
		</div>
	</div>
</body>
</html>