<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:8080/cccrm/resources/css/addprogrammer.css" type="text/css"></link>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/addcustomer.js"></script>
</head>
<body>
<form action="#">
	<center>
		<jsp:include page="/WEB-INF/views/layout/head.jsp" />
			<div class="bottom">
				<jsp:include page="/WEB-INF/views/layout/left.jsp" />
				<div class="main">
					<div class="one">邮箱(登录名)</div><div class="two"><input type="text" name="loginname" id="loginname"></div><br/>
					<div class="one">密&nbsp;&nbsp;码</div><div class="two"><input type="password" name="password" id="password"></div><br/>
					<div class="one">公司名称</div><div class="two"><input type="text" name="companyname" id="companyname"></div><br/>
					<div class="one">联系人</div><div class="two"><input type="text" name="linkman" id="linkman"></div><br/>
					<div class="one">性&nbsp;&nbsp;别</div><div class="three"><input type="radio" value="0" name="gender" checked="checked" />男<input type="radio" value="1" name="gender" />女</div><br/>
					<div class="one">手&nbsp;&nbsp;机</div><div class="two"><input type="text" name="telephone" id="telephone"></div><br/>
					<div class="one">Q&nbsp;&nbsp;&nbsp;&nbsp;Q</div><div class="two"><input type="text" name="qqnumber" id="qqnumber"></div><br/>
					<div class="one"></div><div class="two"><input type="submit" name="addcustomer"  value="确认新增"></div><br/>
				</div>
			</div>
	</center>
	</form>
</body>
</html>