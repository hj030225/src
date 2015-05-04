<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/addprogrammer.css"
	type="text/css"></link>
<script type="text/javascript" src="../resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../resources/js/addprogrammer.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/head.jsp" />
	<jsp:include page="/WEB-INF/views/layout/left.jsp" />
    <input type="hidden" id="hidden-type" value="${type}" />
    
	<form action="addProgrammerResult" method="post" id="addprogrammer">
		<input type="hidden" id="hidden-id" name="id" value="${id}" />
			<div style=" position:relative; margin-left:200px;">
				<div>
					<label class="form-label">邮箱(用户名)</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="loginName" id="loginName" value="${programmer.loginName}" readonly/>
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="loginName" id="loginName" value="${programmer.loginName}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="loginName" id="loginName" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				
				<br />
                <c:choose>
                    <c:when test="${type == 1}"><!--view-->
                        
                    </c:when>
                    <c:when test="${type == 2}"><!--edit-->
                        <div>
                            <label class="form-label">密&nbsp;&nbsp;码</label>
                            <input type="password" name="loginPwd" id="loginPwd" value="${programmer.loginPwd}" />
                        </div>
                        <br />
                        <div>
                            <label class="form-label">确认密码</label>
                            <input type="password" id="loginPwd1" value="${programmer.loginPwd}" />
                        </div>
                        <br />
                    </c:when>
                    <c:otherwise><!--add-->
                        <div>
                            <label class="form-label">密&nbsp;&nbsp;码</label>
                            <input type="password" name="loginPwd" id="loginPwd" />
                        </div>
                        <br />
                        <div>
                            <label class="form-label">确认密码</label>
                            <input type="password" id="loginPwd1" />
                        </div>
                        <br />
                    </c:otherwise>
                </c:choose>
				
				<div>
					<label class="form-label">部&nbsp;&nbsp;门</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<select name="department" disabled>
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<select name="department">
                        </c:when>
                        <c:otherwise><!--add-->
                        	<select name="department">
                        </c:otherwise>
                    </c:choose>
					<!--<select name="department">-->
                    	<c:choose>
                            <c:when test="${programmer.department == 0}">
                                <option value="0" selected>JAVA</option>
                                <option value="1">Android</option>
                                <option value="2">IOS</option>
                                <option value="3">PHP</option>
                            </c:when>
                            <c:when test="${programmer.department == 1}">
                                <option value="0" >JAVA</option>
                                <option value="1" selected>Android</option>
                                <option value="2">IOS</option>
                                <option value="3">PHP</option>
                            </c:when>
                            <c:when test="${programmer.department == 2}">
                                <option value="0" >JAVA</option>
                                <option value="1">Android</option>
                                <option value="2" selected>IOS</option>
                                <option value="3">PHP</option>
                            </c:when>
                            <c:when test="${programmer.department == 3}">
                                <option value="0" >JAVA</option>
                                <option value="1">Android</option>
                                <option value="2">IOS</option>
                                <option value="3" selected>PHP</option>
                            </c:when>
                            <c:otherwise>
                                
                            </c:otherwise>
                        </c:choose>
						
					</select>
				</div>
				<br />
				<div>
					<label class="form-label">姓&nbsp;&nbsp;名</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="programmerName" id="programmerName" value="${programmer.programmerName}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="programmerName" id="programmerName" value="${programmer.programmerName}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="programmerName" id="programmerName" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
				<div>
					<label class="form-label">性&nbsp;&nbsp;别</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input disabled type="radio" value="0" name="programmerSex" <c:if test="${programmer.programmerSex == 0}">checked="checked"</c:if>  />男
                            <input disabled type="radio" value="1" name="programmerSex" <c:if test="${programmer.programmerSex == 1}">checked="checked"</c:if> />女
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="radio" value="0" name="programmerSex" <c:if test="${programmer.programmerSex == 0}">checked="checked"</c:if>  />男
                            <input type="radio" value="1" name="programmerSex" <c:if test="${programmer.programmerSex == 1}">checked="checked"</c:if> />女
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="radio" value="0" name="programmerSex"
                                checked="checked" />男<input type="radio" value="1"
                                name="programmerSex" />女
                        </c:otherwise>
                    </c:choose>
					
				</div>
				
				<br />
				<div>
					<label class="form-label">手&nbsp;&nbsp;机</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="userMobile" id="userMobile" value="${programmer.userMobile}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="userMobile" id="userMobile" value="${programmer.userMobile}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="userMobile" id="userMobile" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				
				<br />
				<div>
					<label class="form-label">Q&nbsp;&nbsp;&nbsp;&nbsp;Q</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="programmerQq" id="programmerQq" value="${programmer.programmerQq}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="programmerQq" id="programmerQq" value="${programmer.programmerQq}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="programmerQq" id="programmerQq" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
				<div>
					<label class="form-label">级&nbsp;&nbsp;别</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<select name="programmerLevel" disabled>
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<select name="programmerLevel">
                        </c:when>
                        <c:otherwise><!--add-->
                        	<select name="programmerLevel">
                        </c:otherwise>
                    </c:choose>
					<!--<select name="programmerLevel">-->
                    <c:choose>
                        <c:when test="${programmer.programmerLevel == 0}">
                            <option value="0" selected>初级</option>
                            <option value="1">中级</option>
                            <option value="2">高级</option>
                            <option value="3">资深</option>
                        </c:when>
                        <c:when test="${programmer.programmerLevel == 1}">
                            <option value="0">初级</option>
                            <option value="1" selected>中级</option>
                            <option value="2">高级</option>
                            <option value="3">资深</option>
                        </c:when>
                        <c:when test="${programmer.programmerLevel == 2}">
                            <option value="0">初级</option>
                            <option value="1">中级</option>
                            <option value="2" selected>高级</option>
                            <option value="3">资深</option>
                        </c:when>
                        <c:when test="${programmer.programmerLevel == 3}">
                            <option value="0">初级</option>
                            <option value="1">中级</option>
                            <option value="2">高级</option>
                            <option value="3" selected>资深</option>
                        </c:when>
                        <c:otherwise>
                           
                        </c:otherwise>
                    </c:choose>
						
					</select>
				</div>
				<br />
				
				<div>
                	<c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="button" name="addprogrammer" value="编辑" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="button" name="addprogrammer" value="确认新增" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
			</div>
		
	</form>
    
</body>
</html>