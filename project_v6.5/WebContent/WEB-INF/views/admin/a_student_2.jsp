<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
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
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/paper-dashboard.css?v=2.0.0"
	rel="stylesheet" />

</head>

<body>
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">

			<div class="logo text-center">
				<a href="${pageContext.request.contextPath}/a/index"
					class="simple-text logo-normal"> <img
					src="${pageContext.request.contextPath}/resources/img/sist_logo.png">
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
							class="fa fa-info"></i> 기초 정보 관리 <b class="caret"></b>
					</a>
						<div class="collapse" id="basicinfo">
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/a/curriculum">
										<span class="sidebar-mini-icon">C</span> <span
										class="sidebar-normal"> 과정 관리</span>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/a/subject">
										<span class="sidebar-mini-icon">S</span> <span
										class="sidebar-normal"> 과목 관리</span>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/a/classroom">
										<span class="sidebar-mini-icon">R</span> <span
										class="sidebar-normal"> 강의실 관리</span>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/a/book">
										<span class="sidebar-mini-icon">B</span> <span
										class="sidebar-normal"> 교재 관리</span>
								</a></li>
							</ul>
						</div></li>
					<li><a
						href="${pageContext.request.contextPath}/a/instructor">
							<i class="nc-icon nc-diamond"></i> 강사 계정 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/oc">
							<i class="nc-icon nc-pin-3"></i> 개설 과정 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/os">
							<i class="nc-icon nc-bell-55"></i> 개설 과목 관리
					</a></li>
					<li class="active"><a
						href="${pageContext.request.contextPath}/a/student">
							<i class="nc-icon nc-single-02"></i> 수강생 관리
					</a></li>
					<li><a data-toggle="collapse" href="#grade"> <i
							class="fa fa-list-ol"></i> 성적 조회 <b class="caret"></b>
					</a>
						<div class="collapse " id="grade">
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/a/grade/oc">
										<span class="sidebar-mini-icon">OC</span> <span
										class="sidebar-normal"> 개설 과정명 기준</span>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/a/grade/student">
										<span class="sidebar-mini-icon">S</span> <span
										class="sidebar-normal"> 수강생 기준</span>
								</a></li>
							</ul>
						</div></li>
					<li><a
						href="${pageContext.request.contextPath}/a/profile">
							<i class="fa fa-gear"></i> 관리자 계정 관리
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/index">Home ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/student">수강생 관리</a>
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
								aria-haspopup="true" aria-expanded="false"> <i class="fa fa-unlock-alt"></i> <span
									class="d-lg-none d-md-block"></span>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item"
										href="${pageContext.request.contextPath}/logout">로그아웃</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-plain">
							<div class="card-header">
								<h4 class="card-title">수강생 정보</h4>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>수강생번호</th>
											<th>이름</th>
											<th>전화번호</th>
											<th>등록일</th>
											<th>수강 횟수(수강 신청한 과정 포함)</th>
											<th>비밀번호 초기화</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${info}">
											<tr>
												<td id="student_id">${m.student_id}</td>
												<td id="student_name">
													<a href="#" title="${m.student_name}" data-toggle="popover"
													data-content="<img src='${pageContext.request.contextPath}/resources/pictures/
													${m.s_pid == null ? "avatar.png" : "" }${m.s_file_name}'>">
													<span>${m.student_name}</span></a> </td>
												<td id="student_phone">${m.student_phone}</td>
												<td>${m.student_regdate}</td>
												<td>${m.oc_admission_count}</td>
												<td>
													<button type="button" class="btn btn-default btn-icon btnReset"
													data-toggle="modal" data-target="#passWordReset" title="비밀번호 초기화" value="${m.student_id}">
													<i class=" fa fa-undo"></i>
												</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header text-right">
								<div class="pull-left">
									<h4 class="card-title">수강 내역</h4>
								</div>
								<button type="button" class="btn btn-default btn-icon btnAddLH"
									data-toggle="modal" data-target="#classAddModal" title ="과정 신청">
									<i class=" fa fa-plus"></i>
								</button>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>개설<br>과정<br>번호</th>
											<th width="260px">과정명</th>
											<th>과정기간</th>
											<th>강의실</th>
											<th>수료/<br>중도탈락<br>상태</th>
											<th>수료/<br>중도탈락<br>날짜</th>
											<th>중도탈락</th>
											<th>수강취소</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${lh}">
											<tr>
												<td>${m.oc_id}</td>
												<td>${m.curriculum_name}</td>
												<td>${m.oc_start_date}~<br>${m.oc_end_date}</td>
												<td>${m.room_name}</td>
												<td>${m.status_}</td>
												<td>${m.end_date}</td>
												<td>
													<button type="button" class="btn btn-default btn-sm btnAdbandon"
														data-toggle="modal" data-target="#abandModal" value="${m.oc_id}"
														${m.possible_aband == "0" ? "" : "disabled" }
														${m.status_ == "중도탈락" ? "disabled" : "" }>중도 탈락</button>
												</td>
												<td>
													<button type="button" class="btn btn-default btn-sm btnCancelOC"
														data-toggle="modal" data-target="#cancelOC" value="${m.oc_id}"
														${m.possible_cancel == "0" ? "" : "disabled" }>수강 취소</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
								<form class="form-inline">
									<div class="form-group mr-auto"></div>
									<div>
										<button type="button" class="btn btn-neutral btn-lg" disabled="disabled">총 ${lhCount}건</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<footer class="footer footer-black  footer-white "> </footer>
		</div>
	</div>


	<!-- 비밀번호 초기화 -->
	<div id="passWordReset" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">비밀번호 초기화</h5>
					</div>
					<form action="${pageContext.request.contextPath}/a/student/reset" method="post">
						<div class="modal-body">
							<input type="hidden" class="student_id" name="student_id">
							<label>변경 비밀번호</label>
							<input type="password" class="form-control" name="student_pw" placeholder="Password">
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>

	<!-- 수강취소 모달 -->
	<div id="cancelOC" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">과정 취소</h5>
					</div>

					<form action="${pageContext.request.contextPath}/a/student/cancelOC" method="post">
						<div class="modal-body">
							<input type="hidden" class="student_id" name="student_id">
							<input type="hidden" class="oc_id" name="oc_id">
							<b class="s_info"></b>수강생의<br>
							<b class="oc_info"></b>을<br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 중도탈락 모달 -->
	<div id="abandModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">중도 탈락</h5>
					</div>
					
					<form action="${pageContext.request.contextPath}/a/student/abandonment" method="post">
						<div class="modal-body">
							<input type="hidden" class="student_id" name="student_id">
							<input type="hidden" class="oc_id" name="oc_id">
							<b class="s_info"></b>수강생의<br>
							<b class="oc_info"></b>을<br>
							<p>중도탈락 처리 하시겠습니까?</p>
							<hr>
							<label>중도탈락 날짜 입력</label>
							<input type="date" class="form-control" name="abnd_date">
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary" >OK</button>
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>


	<!-- 과정신청 모달 -->
	<div id="classAddModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">과정 신청</h5>
					</div>

					<form action="${pageContext.request.contextPath}/a/student/addLH" method="post">
						<div class="modal-body">
							<input type="hidden" class="student_id" name="student_id">
							<label>개설과정번호 | 과정명 | 강의실명 | 과정 시작일 | 과정 종료일</label>
							<select class="form-control" name="oc_id" style="height: auto">
								<option value="">-</option>
								<c:forEach var="m" items="${ocList}">
									<option value="${m.oc_id}">${m.oc_id} | ${m.curriculum_name} | ${m.room_name} | ${m.oc_start_date} | ${m.oc_end_date}</option>
								</c:forEach>
							</select>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
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
	<script src="${pageContext.request.contextPath}/resources/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			var student_id = $("#student_id").text();
			var student_name = $("#student_name").find("span").text();
			var student_phone = $("#student_phone").text();
			
			$('[data-toggle="popover"]').popover({
				trigger : "focus",
				placement : "bottom",
				html : true
			});
			
			$(".btnReset").on("click", function(){
	      		$("#passWordReset .student_id").val($(this).val());
	      	});
			
			
			$(".btnAdbandon").on("click", function(){
	      		$("#abandModal .student_id").val(student_id);
	      		$("#abandModal .s_info").text(student_id +" (" + student_name + " | " + student_phone + ") ");
	      		
	      		var curriculum_name = $(this).parents("td").siblings("td").eq(1).text();
	      		$("#abandModal .oc_id").val($(this).val());
	      		$("#abandModal .oc_info").text($(this).val() +" (" + curriculum_name + ") ");
	      	});
			
			
			$(".btnCancelOC").on("click", function(){
	      		$("#cancelOC .student_id").val(student_id);
	      		$("#cancelOC .s_info").text(student_id +" (" + student_name + " | " + student_phone + ") ");
	      		
	      		var curriculum_name = $(this).parents("td").siblings("td").eq(1).text();
	      		$("#cancelOC .oc_id").val($(this).val());
	      		$("#cancelOC .oc_info").text($(this).val() +" (" + curriculum_name + ") ");
	      	});
			
			$(".btnAddLH").on("click", function(){
	      		$("#classAddModal .student_id").val(student_id);
	      			      		
	      		/* var oc_id = $(this).parents("div[class='row']").find("tbody td").eq(0).text();
	      		console.log(oc_id);
	      		$("#classAddModal option[value='"+oc_id+"']").attr("disabled", "disabled"); */
	      	});
		});
	</script>
</body>

</html>