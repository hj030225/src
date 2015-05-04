<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/addprogrammer.css" type="text/css"></link>
<script type="text/javascript" src="../resources/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../resources/js/addcustomer.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/head.jsp" />
	<jsp:include page="/WEB-INF/views/layout/left.jsp" />
  <input type="hidden" id="hidden-type" value="${type}" />
  
<form action="addCustomerResult" method="post" id="addcustomer">
		<input type="hidden" id="hidden-id" name="id" value="${id}" />
			<div style=" position:relative; margin-left:200px;">
				<div>
					<label class="form-label">邮箱(用户名)</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="loginName" id="loginName" value="${customer.userEmail}" readonly/>
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="loginName" id="loginName" value="${customer.userEmail}" />
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
                            <input type="password" name="loginPwd" id="loginPwd" value="${customer.loginPwd}" />
                        </div>
                        <br />
                        <div>
                            <label class="form-label">确认密码</label>
                            <input type="password" id="loginPwd1" value="${customer.loginPwd}" />
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
					<label class="form-label">公司名称</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="customerName" id="customerName" value="${customer.customerName}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="customerName" id="customerName" value="${customer.customerName}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="customerName" id="customerName" />
                        </c:otherwise>
                    </c:choose>
				</div>
				<br />
				
				
					<div>
					<label class="form-label">联系人</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="customerMan" id="customerMan" value="${customer.customerMan}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="customerMan" id="customerMan" value="${customer.customerMan}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="customerMan" id="customerMan" />
                        </c:otherwise>
                    </c:choose>
				</div>
				<br />
				
				
					<div>
					<label class="form-label">性&nbsp;&nbsp;别</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input disabled type="radio" value="0" name="customerSex" <c:if test="${customer.customerSex == 0}">checked="checked"</c:if>  />男
                            <input disabled type="radio" value="1" name="customerSex" <c:if test="${customer.customerSex == 1}">checked="checked"</c:if> />女
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="radio" value="0" name="customerSex" <c:if test="${customer.customerSex == 0}">checked="checked"</c:if>  />男
                            <input type="radio" value="1" name="customerSex" <c:if test="${customer.customerSex == 1}">checked="checked"</c:if> />女
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="radio" value="0" name="customerSex"
                                checked="checked" />男<input type="radio" value="1"
                                name="customerSex" />女
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
				
				
				<div>
					<label class="form-label">手&nbsp;&nbsp;机</label>
                    <c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	<input type="text" name="userMobile" id="userMobile" value="${customer.userMobile}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="userMobile" id="userMobile" value="${customer.userMobile}" />
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
                        	<input type="text" name="customerQq" id="customerQq" value="${customer.customerQq}" readonly />
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="text" name="customerQq" id="customerQq" value="${customer.customerQq}" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="text" name="customerQq" id="customerQq" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
				
				<div>
                	<c:choose>
                        <c:when test="${type == 1}"><!--view-->
                        	
                        </c:when>
                        <c:when test="${type == 2}"><!--edit-->
                        	<input type="button" name="addcustomer" value="编辑" />
                        </c:when>
                        <c:otherwise><!--add-->
                        	<input type="button" name="addcustomer" value="确认新增" />
                        </c:otherwise>
                    </c:choose>
					
				</div>
				<br />
			</div>
		
	</form>
    
</body>
</html>