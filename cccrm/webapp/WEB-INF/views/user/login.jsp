<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/login.css"
	type="text/css" />
<!-- <link rel="stylesheet" href="<c:url value="/resources/css/resourcemanage.css" />"
	type="text/css" /> -->
<link rel="stylesheet" href="../resources/css/global.css"
	type="text/css" />
<!-- <link rel="stylesheet" href="resources/css/global_color.css" type="text/css"/> -->
<script type="text/javascript" src="../resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../resources/js/login.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/head.jsp" />
    <!-- toolbar -->
    <div style=" text-align:center; position:relative; font-size:24px;margin-top: 100px; height:400px; width:80%;">
    	<form action="doLoginResult" method="post" id="form-login">            
           
                <!-- 搜索工种/部门 -->
                <div>
                    <label>用户名：</label>
                    <c:choose>
                        <c:when test="${loginName != null}">
                            <input type="text" id="loginName" name="loginName" placeholder="输入邮箱（用户名）" 
                            	style=" font-size:24px;" value="${loginName}"/>
                        </c:when>
                        
                        <c:otherwise>
                            <input type="text" id="loginName" name="loginName" placeholder="输入邮箱（用户名）" style=" font-size:24px;"/>
                        </c:otherwise>
                    </c:choose>
                    
                </div>
                <br/>
                
                <!-- 状态 -->
                <div>
                    <label>密码：</label> 
                    <c:choose>
                        <c:when test="${loginPwd != null}">
                            <input type="password" id="loginPwd" name="loginPwd" placeholder="输入密码" 
                            style=" font-size:24px;" value="${loginPwd}"/>
                        </c:when>
                        
                        <c:otherwise>
                            <input type="password" id="loginPwd" name="loginPwd" placeholder="输入密码" style=" font-size:24px;" />
                        </c:otherwise>
                    </c:choose>
                    
                </div>
                
                <!--错误提示-->
                <div>
                	<c:choose>
                        <c:when test="${msg != null}">
                            <label style="font-size:18px; color:#F00;">${msg}</label>
                        </c:when>
                        
                        <c:otherwise>
                           
                        </c:otherwise>
                    </c:choose>
                </div>
                <div style="margin-top:20px;">
                    <input id="chk_remember_pwd" type="checkbox" >记住密码</input>
                    <a id="a_get_pwd" style="cursor:pointer;margin-left:30px;">忘记密码</a>
                </div>
                <div style="margin-top:30px;">
                    <input id="btn_login" type="button" value="确认登录" onClick="login();" />
                    <!--<button id="btn_login" style=" font-size:24px;" onClick="login();">确认登录</button>-->
                </div>
           
        </form>
    </div>
	
	<div style="float:left; margin-left:200px; margin-top:20px; font-size:14px;">
    	友情链接：
        <a style="cursor:pointer; margin-left:30px;">持创研发中心官网</a>
        <a style="cursor:pointer; margin-left:30px;">极客邦官网</a>
    </div>
</body>

</html>