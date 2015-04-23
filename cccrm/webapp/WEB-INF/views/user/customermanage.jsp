<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:8080/cccrm/resources/css/customermanage.css" type="text/css"></link>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/customermanage.js"></script>
</head>
<body>
<form action="#">
	<center>
		<jsp:include page="/WEB-INF/views/layout/head.jsp" />
			<div class="bottom">
				<jsp:include page="/WEB-INF/views/layout/left.jsp" />
				<div class="main">
				<div class="zt">
					<select name="department">	
					<option value="">全部</option>
					<option value="0">空闲</option>
					<option value="1">项目中</option>
					</select>
				</div>
				<div class="xz"><a href="http://localhost:8080/cccrm/test/addcustomer">新增资源</a></div>
				<table width="700px" >
					<tr class="t0"><th class="t1">公司名称</th><th class="t2">联系人</th><th class="t3">性别</th><th class="t4">邮箱</th><th class="t5">手机</th><th class="t6">QQ</th><th class="t7">状态</th><th class="t8">操作</th></tr>
				</table>
			</div>
			</div>
	</center>
	</form>
</body>
</html>