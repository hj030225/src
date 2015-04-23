<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:8080/cccrm/resources/css/addprogrammer.css" type="text/css"></link>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/cccrm/resources/js/addprogrammer.js"></script>
</head>
<body>
<form action="http://localhost:8080/cccrm/test/xzprogrammer" method="post" id="addprogrammer">
	<center>
		<jsp:include page="/WEB-INF/views/layout/head.jsp" />
			<div class="bottom">
				<jsp:include page="/WEB-INF/views/layout/left.jsp" />
				<div class="main">
					<div class="one" align="right">邮箱(用户名)</div><div class="two"><input type="text" name="loginName" id="loginName"></div><br/>
					<div class="one">密&nbsp;&nbsp;码</div><div class="two"><input type="password" name="loginPwd" id="loginPwd"></div><br/>
					<div class="one">部&nbsp;&nbsp;门</div><div class="two"><select name="department">
																				<option value="0">JAVA</option>
																				<option value="1">Android</option>
																				<option value="2">IOS</option>
																				<option value="3">PHP</option>
																		   </select></div><br/>
					<div class="one">姓&nbsp;&nbsp;名</div><div class="two"><input type="text" name="programmerName" id="programmerName"></div><br/>
					<div class="one">性&nbsp;&nbsp;别</div><div class="three"><input type="radio" value="0" name="programmerSex" checked="checked" />男<input type="radio" value="1" name="programmerSex" />女</div><br/>
					<div class="one">手&nbsp;&nbsp;机</div><div class="two"><input type="text" name="userMobile" id="userMobile"></div><br/>
					<div class="one">Q&nbsp;&nbsp;&nbsp;&nbsp;Q</div><div class="two"><input type="text" name="programmerQq" id="programmerQq"></div><br/>
					<div class="one">级&nbsp;&nbsp;别</div><div class="two"><select name="programmerLevel">
																							<option value="0">初级</option>
																							<option value="1">中级</option>
																							<option value="2">高级</option>
																						</select></div><br/>
					<div class="one"></div><div class="two"><input type="button" name="addprogrammer" value="确认新增"/></div><br/>
				</div>
			</div>
	</center>
	</form>
</body>
</html>