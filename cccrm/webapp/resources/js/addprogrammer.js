/**
 * javascript
 */

/*
 * 登陆控制脚本
 */
$(function(){
	//绑定一个登录事件
	$("input[name='addprogrammer']").click(function(){
		//登录之前需要验证是否输入
		if($.trim($("#loginName").val())==""){
			alert("用户名不能为空!");
			$("#loginName").focus();
			return ;
		}
		if($.trim($("#loginPwd").val())==""){
			alert("密码不能为空!");
			$("#loginPwd").focus();
			return ;
		}
		if($.trim($("#programmerName").val())==""){
			alert("姓名不能为空!");
			$("#programmerName").focus();
			return ;
		}
		if($.trim($("#userMobile").val())==""){
			alert("手机号码不能为空!");
			$("#userMobile").focus();
			return ;
		}
		if($.trim($("#programmerQq").val())==""){
			alert("QQ不能为空!");
			$("#programmerQq").focus();
			return ;
		}
		//提交表单
		$("#addprogrammer").submit();
		
	});
	
	//初始化页面的时候让用户名输入框得到焦点
	$("#username").focus();
});

