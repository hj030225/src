<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>苏州持创crm系统</title>
<link rel="stylesheet" href="../resources/css/head.css"
	type="text/css"></link>
<script type="text/javascript" src="../resources/js/global.js"></script>
</head>
<body>
	<div class="head">
		<div class="logo">
			<img src="../resources/img/logo.png" />
		</div>
        <div id="div-tel" class="control" style="display:none;">
        	<label>客服热线：400 800 0000</label>
        </div>
		<div id="div-user" class="control">
			<img src="../resources/img/manager.png" /><label id="lbl-user">管理员</label>
            <img src="../resources/img/shuxian.png" />
            <img src="../resources/img/cancel.png" /><a	href="<c:url value="/user/logout" />">注销登录</a>
		</div>
        
	</div>
</body>
</html>