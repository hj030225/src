/**
 * javascript
 */

/*
 * 登陆控制脚本
 */
$(function(){
	//绑定一个登录事件
	$("input[name='addcustomer']").click(function(){
		//登录之前需要验证是否输入
		if($.trim($("#loginname").val())==""){
			alert("登录名不能为空!");
			$("#loginname").focus();
			return ;
		}
		if($.trim($("#password").val())==""){
			alert("密码不能为空!");
			$("#password").focus();
			return ;
		}
		if($.trim($("#companyname").val())==""){
			alert("公司名称不能为空!");
			$("#companyname").focus();
			return ;
		}
		if($.trim($("#linkman").val())==""){
			alert("联系人不能为空!");
			$("#linkman").focus();
			return ;
		}
		if($.trim($("#telephone").val())==""){
			alert("手机号码不能为空!");
			$("#telephone").focus();
			return ;
		}
		if($.trim($("#qqnumber").val())==""){
			alert("QQ不能为空!");
			$("#qqnumber").focus();
			return ;
		}
		
		//提交表单
		$("#addcustomer").submit();
		
	});
	
	//初始化页面的时候让用户名输入框得到焦点
	$("#loginname").focus();
});

