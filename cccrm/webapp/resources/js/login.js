function login(){
	//alert(11);
	//return false;
		//登录之前需要验证是否输入
		var loginName=$.trim($("#loginName").val());
		if(loginName==""){
			alert("用户名不能为空!");
			$("#loginName").focus();
			return;
		}else if(!emailCheck(loginName)){
			alert("用户名格式不正确，请输入正确的邮箱作为用户名!");
			$("#loginName").focus();
			return;
		}
		
		var pwd=$.trim($("#loginPwd").val());
		if(pwd==""){
			alert("密码不能为空!");
			$("#loginPwd").focus();
			return;
		}
		
		//提交表单
		//alert(333);
		//$("#form-login").attr("action", "doLoginResult");
		$("#form-login").submit();
}

$(function(){
	$("#div-tel").css("display","block");
	$("#div-user").css("display","none");
	
	/*
	$("#btn_login").click(function(){
		
		
	})*/
});