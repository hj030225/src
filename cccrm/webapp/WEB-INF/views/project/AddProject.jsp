<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri= "http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员信息</title>
<link type="text/css" rel="stylesheet" media="all" href="../resources/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="../resources/css/global_color.css" />
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
			 <img src="../resources/img/video.png" class="imgs">
			 <a href="#" >视频会议</a>
			  
			 <img src="../resources/img/phone.png" class="imges">
			 <a href="#">在线客服</a>
			 
			</div>
			</div>
			
            
			<div id="record">
				<div id="subfield">分栏</div>	
				<form action="/cccrm/addPros" method="post"  class="white-pink">
					<label> <span>项目名称 :</span> 
					<input id="name" type="text" name="proName" />
					</label> 
					<label> <span>合同编号 :</span>
					 <input name="bargainNo" type="text"   />
					</label>
					<label> <span>状态:</span>				
					<input name="status" class="radios" type="radio" value="1" checked="checked" >未完成
		            <input name="status"  class="radios" type="radio" value="2">完成					
					</label>
				
					<label> <span>客户 :</span>
					  <select name="customer.id">
					   <c:forEach var="cus" items="${customer}">
					   <option value="${cus.id}">${cus.name}</option>
					   </c:forEach>
					  </select>
					
					</label>
					
					
					 <label> <span>开始时间 :</span>
					  <input name="starttime" type="text" onclick="laydate()"  />
					</label>
					<label> <span>结束时间 :</span> 
					<input name="endtime"	type="text" onclick="laydate()"  />
					</label>
					  
					<label> <span>&nbsp;</span> 
					<input type="submit" class="button" value="确认添加" />
					</label>
				</form>
			</div>

		</div>
	</div>
	
</body>
</html>