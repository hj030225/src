/**
 * 
 * 按条件查询程序员
 */

function addResouce(){
	//alert("addResouce");
	window.location='http://localhost:8080/cccrm/resource/addprogrammer';
	//document.location.href='http://www.baidu.com';
	//window.open('http://www.baidu.com','_self')
}


$(function(){
	//var department = '<%= request.getAttribute("department") %>';
	//var status = '<%= request.getAttribute("status") %>';
	//alert("department,status:"+department+","+status);
	var department = $("#hidden-department").val();
	var status = $("#hidden-status").val();
	//alert("department,status:"+department+","+status);
	if(department!=null){
		$("#sel_department").find("option[value='"+department+"']").attr("selected",true); 
		
	}
	if(status!=null){		
		$("#sel_status").find("option[value='"+status+"']").attr("selected",true); 
	}
	/*
	$("input[name='sousuo']").click(function(){
		
		$("#programmersearch").submit();
		
	})*/
	$("#btn_search").click(function(){
		/*if(1==1){
			alert(111);
			return false;
		}*/
		$("#programmersearch").submit();
		
	})
});