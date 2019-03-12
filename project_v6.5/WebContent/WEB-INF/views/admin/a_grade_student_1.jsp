<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8"/>
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/img/logo.png">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/img/logo.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>성적처리시스템</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/paper-dashboard.css?v=2.0.0"
	rel="stylesheet" />

</head>

<body>
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">

			<div class="logo text-center">
            	<a href="${pageContext.request.contextPath}/a/index" class="simple-text logo-normal">
               		<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png">
           		</a>
            </div>
            <div class="logo">
				<div class="logo-image-small">
					<a class="simple-text logo-mini">
					<img style="border-radius: 100%;" src="${pageContext.request.contextPath}/resources/img/avatar.png">
					</a>
				</div>
				<a class="simple-text logo-normal"> 관리자 [${sessionScope.login.admin_name}] </a>
			</div>


			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a data-toggle="collapse" href="#basicinfo"> <i
							class="fa fa-info"></i>
							
								기초 정보 관리 <b class="caret"></b>
							
					</a>
						<div class="collapse " id="basicinfo">
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/a/curriculum"> <span
										class="sidebar-mini-icon">C</span> <span
										class="sidebar-normal"> 과정 관리</span>
								</a></li>
								<li><a href="${pageContext.request.contextPath}/a/subject">
										<span class="sidebar-mini-icon">S</span> <span
										class="sidebar-normal"> 과목 관리</span>
								</a></li>
								<li><a href="${pageContext.request.contextPath}/a/classroom">
										<span class="sidebar-mini-icon">R</span> <span
										class="sidebar-normal"> 강의실 관리</span>
								</a></li>
								<li><a href="${pageContext.request.contextPath}/a/book">
										<span class="sidebar-mini-icon">B</span> <span
										class="sidebar-normal"> 교재 관리</span>
								</a></li>
							</ul>
						</div></li>
					<li><a href="${pageContext.request.contextPath}/a/instructor"> <i
							class="nc-icon nc-diamond"></i>
							강사 계정 관리
					</a></li>
					<li><a href="${pageContext.request.contextPath}/a/oc">
							<i class="nc-icon nc-pin-3"></i>
							개설 과정 관리
					</a></li>
					<li><a href="${pageContext.request.contextPath}/a/os"> <i
							class="nc-icon nc-bell-55"></i>
							개설 과목 관리
					</a></li>
					<li><a href="${pageContext.request.contextPath}/a/student"> <i
							class="nc-icon nc-single-02"></i>
							수강생 관리
					</a></li>
					<li class="active"><a data-toggle="collapse" href="#grade">
							<i class="fa fa-list-ol"></i>
								성적 조회 <b class="caret"></b>
							
					</a>
						<div class="in collapse show" id="grade">
							<ul class="nav">
								<li><a href="${pageContext.request.contextPath}/a/grade/oc"> <span
										class="sidebar-mini-icon">OC</span> <span
										class="sidebar-normal"> 개설 과정명 기준</span>
								</a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/a/grade/student"> <span
										class="sidebar-mini-icon">S</span> <span
										class="sidebar-normal"> 수강생 기준</span>
								</a></li>
							</ul>
						</div></li>
					<li><a href="${pageContext.request.contextPath}/a/profile"> <i
							class="fa fa-gear"></i>
							관리자 계정 관리
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/index">Home
							></a> <a class="navbar-brand" href="">성적조회</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="navbar-nav">
							<li class="nav-item btn-rotate dropdown"><a
								class="nav-link dropdown-toggle" href="http://example.com"
								id="navbarDropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="fa fa-unlock-alt"></i> <span
									class="d-lg-none d-md-block"></span>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="${pageContext.request.contextPath}/logout">로그아웃</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header text-right">
								<div class="pull-left">
									<h4 class="card-title">수강생 목록</h4>
								</div>
							</div>
							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>수강생번호</th>
											<th>이름</th>
											<th>전화번호</th>
											<th>등록일</th>
											<th>수강횟수</th>
											<th>자세히</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${list}">
											<tr>
												<td>${m.student_id}</td>
												<td>
													<a href="#" title="${m.student_name}" data-toggle="popover"
													data-content="<img src='${pageContext.request.contextPath}/resources/pictures/
													${m.s_pid == null ? "avatar.png" : "" }${m.s_file_name}'>">
													<span>${m.student_name}</span></a> </td>
												<td>${m.student_phone}</td>
												<td>${m.student_regdate}</td>
												<td>${m.oc_admission_count}</td>
												<td>
													<a href="${pageContext.request.contextPath}/a/grade/student/info?student_id=${m.student_id}">
													<button class="btn btn-default btn-icon" title="자세히">
														<i class="fa fa-search-plus"></i>
													</button>
											</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>

								<form class="form-inline" action="${pageContext.request.contextPath}/a/grade/student" method="post">
									<div class="form-group mr-auto">
										<select class="form-control" id="key" name="key" style="height: auto">
											<option value="all">수강생 전체</option>
												<option value="student_id">수강생 번호</option>
												<option value="student_name">수강생 이름</option>
										</select>
										<div class="input-group" style="margin:0px">
											<input type="text" class="form-control" id="value" name="value" placeholder="Search">
											<div class="input-group-append">
												<button class="btn btn-sm" type="submit" style="margin: 0px">
													<i class="nc-icon nc-zoom-split"></i>
												</button>
											</div>
										</div>
									</div>
									<div>
										<button type="button" class="btn btn-neutral btn-lg" disabled="disabled">총 ${totalcount}건</button>
									</div>
									<div class="btn-group btn-sm">
										<button type="button" class="btn btn-round btn-outline-primary" id="preious">
											<i class="nc-icon nc-minimal-left"></i>
										</button>
										<button type="button" class="btn btn-round btn-primary" value="${pageNum}" id="pageNum_">
											<span>${pageNum}</span></button>
										<button type="button" class="btn btn-round btn-outline-primary" id="next">
											<i class="nc-icon nc-minimal-right"></i>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer footer-black  footer-white ">
			</footer>
		</div>
	</div>

	<!--   Core JS Files   -->
	<script src="${pageContext.request.contextPath}/resources/js/core/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/core/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/core/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
	<!-- Chart JS -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath}/resources/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover({
				trigger : "focus",
				placement : "bottom",
				html : true
			});
			
			$("#next").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())+1;
				window.location.assign("${pageContext.request.contextPath}/a/grade/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
			})
			
			$("#preious").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())-1;
				window.location.assign("${pageContext.request.contextPath}/a/grade/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
			})
			
			if('${pageNum}' == 1){
				$("#preious").attr("disabled", "disabled");
			}
			
			if('${pageNum}' == '${lastPage}'){
				$("#next").attr("disabled", "disabled");
			}
			
			$("#key option[value='${key}']").attr("selected", "selected");
			$("#value").val('${value}');
			
		});
	</script>
</body>

</html>