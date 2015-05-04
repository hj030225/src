<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>项目管理</title>
<link type="text/css" rel="stylesheet" media="all"
	href="../resources/css/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="../resources/css/global_color.css" />
<script type="text/javascript">
	function over() {
		document.getElementById('a').style.background = "#fff";
		document.getElementById('a').style.color = "#697d84";
	}

	function overes() {
		document.getElementById('a').style.background = "#3CB371";
		document.getElementById('a').style.color = "#fff";
	}
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="../resources/img/logo.png" alt="logo" /> <a href="#">注销</a>

	</div>

	<!--主要区域开始-->
	<div id="main">
		<div id="mains">
			<div id="contents">
				<div class="sysmenua" onMouseOut="overes()">
					<ul>
						<li><a id="a" class="current" href="javascript:void(0);">项目管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">客户管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">程序员管理</a></li>
						<li><a href="javascript:void(0);" onmouseover="over()">系统管理</a></li>
					</ul>
				</div>
				<div class="bottom">
					<img src="../resources/img/video.png" class="imgs"> <a
						href="#">视频会议</a> <img src="../resources/img/phone.png"
						class="imges"> <a href="#">在线客服</a>

				</div>
			</div>

			<div id="record">

				<div id="subfield">分栏
				
				</div>
				<div class="tables">
					<table id="tableslist">
						<tr>
							<th>项目名称</th>
							<td>${project.proName }</td>
							<th>合同编号</th>
							<td>${project.bargainNo}</td>
						</tr>
						<tr>
							<th>开始时间</th>
							<fmt:formatDate var="starttime" value="${project.starttime}" type="both" pattern="yyyy-MM-dd "/>
							<td>${starttime}</td>
							<th>结束时间</th>
							 <fmt:formatDate var="endtime" value="${project.endtime}" type="both" pattern="yyyy-MM-dd " />
							<td>${endtime}</td>
						</tr>
					</table>

				</div>

				<!--数据区域：用表格展示数据-->
				<div id="data">
		           <div id="one" class="column" style="display: block;">
		             <div id="parts">
		               <div class="parts1"><a>项目成员</a></div>
		               <div class="parts2"><a>项目合同</a></div>
		             </div>
		             <div id="part">  
		             <div class="border">
		             <div class="border1">程序员</div>
		             <div class="border2">剩余工作时间（人/天）</div>
		             </div>
			        <div id="cents">
			        
			          <c:forEach var="pp" items="Pprojects" >
			           <div class="centes">
			              <div class="sort"><img  src="${path}/resources/img/userImage.png"/></div>
			               <div class="sorts">
			                  <div class="sortes1"><a href="#">张三</a></div>
			                  <div class="sortes2">PHP程序员</div>
			               </div>
			               <div class="sortes">
			                  <div class="sortes3"><a>2</a>（天）</div>
			                  <div class="sortes4"><a href="#">申请续约</a></div>
			               </div>
			           </div>
			          </c:forEach>
			           
			        </div>
					 
				
		            <div id="pages">
				    <a href="#">首页</a>
				    <a href="#">上一页</a>
				    <a class="current_page">1</a>
				    <a href="#">下一页</a>
				    <a href="#">尾页</a>
				    </div>
				    
				    </div>  
		           </div>
				   <div id="two" class="columns" style="display: none;">
				    <div id="parts">
		               <div class="parts3"><a>项目成员</a></div>
		               <div class="parts4"><a>项目合同</a></div>
		            </div>
		          <div id="partes">  
		             <div class="imgframe">
		             <img  src="${path}/resources/img/img.png"/>
		             </div>
		              <div class="imgframe">
		             <img  src="${path}/resources/img/img.png"/>
		             </div>
		              <div class="imgframe">
		             <img  src="${path}/resources/img/img.png"/>
		              </div>
	                   <div class="imgframe">
		             <img  src="${path}/resources/img/img.png"/>
		               </div>
		               <div class="imgframe">
		                <img  src="${path}/resources/img/img.png"/>
		               </div>
		               <div class="imgframe">
		                <img  src="${path}/resources/img/img.png"/>
		               </div>
		               <div class="imgframe">
		                <img  src="${path}/resources/img/img.png"/>
		               </div>
		               <div class="imgframe">
		                <img  src="${path}/resources/img/imgs.png"/>
		               </div>
		               
				  </div>
				  <div id="bottomes">
				   <input type="button" value="下载全部">
				  </div>
				  
				</div>
				
			 </div>
		</div>
	</div>
</body>
</html>