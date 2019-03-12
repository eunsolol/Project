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
					<a class="simple-text logo-mini"> <img
						style="border-radius: 100%;"
						src="${pageContext.request.contextPath}/resources/img/avatar.png">
					</a>
				</div>
				<a class="simple-text logo-normal"> 관리자 [${sessionScope.login.admin_name}] </a>
			</div>


			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a data-toggle="collapse" href="#basicinfo"> <i
							class="fa fa-info"></i> 기초 정보 관리 <b class="caret"></b>
					</a>
						<div class="collapse " id="basicinfo">
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
					<li class="active"><a
						href="${pageContext.request.contextPath}/a/oc">
							<i class="nc-icon nc-pin-3"></i> 개설 과정 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/os">
							<i class="nc-icon nc-bell-55"></i> 개설 과목 관리
					</a></li>
					<li><a
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
						href="${pageContext.request.contextPath}/views/admin/a_password.jsp">
							<i class="fa fa-gear"></i> 관리자 계정 관리
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
						<a class="navbar-brand"
							href="${pageContext.request.contextPath}/a/index">Home
							></a> <a class="navbar-brand"
							href="${pageContext.request.contextPath}/a/oc">개설
							과정 관리</a>
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
									<a class="dropdown-item"
										href="${pageContext.request.contextPath}/views/login/logout.jsp">로그아웃</a>
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
									<h4 class="card-title">개설 과정 목록</h4>
								</div>

								<button type="button"
									class="btn btn-default 
								btn-icon btnAdd"
									data-toggle="modal" data-target="#addOC" title="추가">
									<i class="fa fa-plus"></i>
								</button>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>개설<br>과정<br>번호</th>
											<th width="280px">과정명</th>
											<th>과정기간</th>
											<th>강의실</th>
											<th>개설 과목<br>등록 갯수 </th>
											<th>수강생<br>등록 인원 </th>
											<th>자세히</th>
											<th>수정/삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${list}">
											<tr>
												<td>${m.oc_id}</td>
												<td>${m.curriculum_name}</td>
												<td>${m.oc_start_date}~<br>${m.oc_end_date}</td>
												<td>${m.room_name}</td>
												<td>${m.subjectCnt}</td>
												<td>${m.studentCnt}</td>
												<td>
													<a href="${pageContext.request.contextPath}/a/oc/info?oc_id=${m.oc_id}">
														<button type="button" class="btn btn-default btn-icon "
															title="조회">
															<i class="fa fa-search-plus"></i>
														</button>
												</a></td>
												<td>
													<button type="button" class="btn btn-default btn-icon btnUpdate"
														data-toggle="modal" data-target="#updateOC" title="수정" value="${m.oc_id}" >
														<i class="fa fa-pencil-square-o"></i>
													</button>
													<button type="button" class="btn btn-default btn-icon btnDel"
														data-toggle="modal" data-target="#delOC" title="삭제" value="${m.oc_id}" ${m.deletable == 0 ? "" : "disabled"}>
														<i class="fa fa-trash-o"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>

								<form class="form-inline" action="${pageContext.request.contextPath}/a/oc" method="post">
									<div class="form-group mr-auto">
										<select class="form-control" id="key" name="key" style="height: auto">
											<option value="all">개설 과정 전체</option>
											<option value="oc_id">개설 과정 번호</option>
											<option value="curriculum_name">개설 과정명</option>
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
										<button type="button" class="btn btn-neutral btn-lg" disabled="disabled"><h6>총 ${count}건</h6></button>
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
		</div>
	</div>


	<!-- 개설 과정 추가 Modal -->
	<div id="addOC" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">개설 과정 추가</h5>
				</div>
					<form action="${pageContext.request.contextPath}/a/oc/add" method="POST">
					<div class="modal-body">
						<div class="form-group">
							<label>과정번호|과정명</label>
							<select class="form-control curriculum_id" name="curriculum_id" style="height: auto">
								<c:forEach var="c" items="${cList}">
								<option value="${c.curriculum_id}">${c.curriculum_id} | ${c.curriculum_name}</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과정시작일</label>
								<input type="date" class="form-control"
									name="oc_start_date" placeholder="년/월/일" required>
							</div>
							<div class="col-6 form-group pl-1">
								<label>과정종료일</label>
								<input type="date" class="form-control oc_end_date"
									name="oc_end_date" placeholder="년/월/일" required>
							</div>
						</div>
						<div class="form-group">
							<label>강의실번호 | 강의실명 | 정원</label>
							<select class="form-control room_id" name="room_id" style="height: auto">
								<c:forEach var="cr" items="${crList}">
								<option value="${cr.room_id}">${cr.room_id} | ${cr.room_name} | ${cr.room_capacity}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="submit" class="btn btn-primary">OK</button>
				</div>
					</form>
			</div>

		</div>
	</div>
	<!-- 개설 과정 수정 Modal -->
	<div id="updateOC" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">개설 과정 수정</h5>
				</div>
					<form action="${pageContext.request.contextPath}/a/oc/update" method="POST">
				<div class="modal-body">
						<div class="form-group">
							<label>개설 과정 번호</label>
							<input
								class="form-control oc_id" name="oc_id" readonly="readonly">
						</div>
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과정시작일</label>
								<input type="date" class="form-control oc_start_date" name="oc_start_date" placeholder="년/월/일" required>
							</div>
							<div class="col-6 form-group pl-1">
								<label>과정종료일</label>
								<input type="date" class="form-control oc_end_date" name="oc_end_date" placeholder="년/월/일" required>
							</div>
						</div>
						<div class="form-group">
							<label>강의실번호 | 강의실명 | 정원</label>
							<select class="form-control room_id" name="room_id" style="height: auto">
								<c:forEach var="cr" items="${crList}">
								<option value="${cr.room_id}">${cr.room_id} | ${cr.room_name} | ${cr.room_capacity}</option>
								</c:forEach>
							</select>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="submit" class="btn btn-primary">OK</button>
				</div>
					</form>
			</div>

		</div>
	</div>

	<div id="delOC" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">개설 과정 삭제</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="${pageContext.request.contextPath}/a/oc/del" method="POST">
				<div class="modal-body">
					<input type="hidden" class="oc_id" name="oc_id">
						<b id="info"> </b>
					<p>개설과정을 삭제하시겠습니까?</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
					<button type="submit" class="btn btn-primary">OK</button>
				</div>
				</form>
			</div>

		</div>
	</div>


	<!--   Core JS Files   -->
	<script
		src="${pageContext.request.contextPath}/resources/js/core/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/core/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/core/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
	<!-- Chart JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="${pageContext.request.contextPath}/resources/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover({trigger : "hover"});
			$("#key option[value='${key}']").attr("selected", "selected");
	        $("#value").val('${value}');
	        
	      	$(".btnDel").on("click", function(){
	      		var oc_id = $(this).parents("td").siblings("td").eq(0).text();
				var curriculum_name = $(this).parents("td").siblings("td").eq(1).text();
				var oc_date = $(this).parents("td").siblings("td").eq(2).text()
				$("#delOC .oc_id").val($(this).val());
	      		$("#delOC #info").text(oc_id + " (" + curriculum_name + " | " + oc_date + ")");
	      	});
	      	$(".btnUpdate").on("click", function(){
	      		$("#updateOC .oc_id").val($(this).val());
	      	});
	      	
	      	if('${pageNum}' == 1){
				$("#preious").attr("disabled", "disabled");
			};
			
			if('${pageNum}' == '${lastPage}'){
				$("#next").attr("disabled", "disabled");
			};
			
			$("#next").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())+1;
				window.location.assign("${pageContext.request.contextPath}/a/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
			});
			
			$("#preious").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())-1;
				window.location.assign("${pageContext.request.contextPath}/a/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
			});
			
			$("#key option[value='${key}']").attr("selected", "selected");
			$("#value").val('${value}');
	        
	    });
	</script>
</body>

</html>