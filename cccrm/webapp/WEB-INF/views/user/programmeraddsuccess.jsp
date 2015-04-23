<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:8080/cccrm/resources/css/programmeraddsuccess.css" type="text/css"></link>

</head>
<body>
<form action="#">
	<center>
		<jsp:include page="/WEB-INF/views/layout/head.jsp" />
			<div class="bottom">
				<jsp:include page="/WEB-INF/views/layout/left.jsp" />
				<div class="main">
				<div class="success">程序员新增成功!</div>
				<div><a href="http://localhost:8080/cccrm/test/addprogrammer">继续新增</a></div>
				<div><a href="http://localhost:8080/cccrm/test/resourcemanage">查看资源管理</a></div>
			</div>
			</div>
	</center>
	</form>
</body>
</html>