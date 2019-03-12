<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/img/logo.png">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/logo.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>성적처리시스템</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"	rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
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
						<div class="collapse " id="basicinfo">
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/a/curriculum">
										<span class="sidebar-mini-icon">C</span> <span
										class="sidebar-normal"> 과정 관리</span>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/views/admin/a_basicInfo_subject.jsp">
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
					<li>
						<a data-toggle="collapse" href="#grade">
						<i class="fa fa-list-ol"></i> 성적 조회 <b class="caret"></b>
					</a>
						<div class="collapse" id="grade">
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
							></a> <a class="navbar-brand" href="">수강생 관리</a>
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
								aria-haspopup="true" aria-expanded="false"><i
									class="fa fa-unlock-alt"></i> <span
									class="d-lg-none d-md-block"></span> </a>
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
						<div class="card">

							<div class="card-header text-right">
								<div class="pull-left">
									<h4 class="card-title">수강생 목록</h4>
								</div>
								<button type="button" class="btn btn-default btn-icon btnAdd"
									data-toggle="modal" data-target="#addSt" title="수강생 추가">
									<i class=" fa fa-plus"></i>
								</button>

								<div class="card-body">
									<table class="table text-center">
										<thead class="text-primary">
											<tr>
												<th>수강생<br>번호</th>
												<th>이름</th>
												<th>전화번호</th>
												<th hidden="hidden">주소</th>
												<th hidden="hidden">이메일</th>
												<th>등록일</th>
												<th>수강 횟수<br>(수강 신청한 과정 포함)</th>
												<th>사진 등록/수정</th>
												<th>자세히</th>
												<th>수정/삭제</th>
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
													<td hidden="hidden">${m.student_addr}</td>
													<td hidden="hidden">${m.student_email}</td>
													<td>${m.student_regdate}</td>
													<td>${m.oc_admission_count}</td>
													<td>
														<button type="button" class="btn btn-default btn-icon btnPic" value="${m.s_pid}"
															data-toggle="modal" data-target="#addPicture" title="수강생 사진 등록">
															<i class="fa fa-picture-o"></i>
														</button>
													</td>
													<td>
														<a href="${pageContext.request.contextPath}/a/student/info?student_id=${m.student_id}">
															<button type="button" class="btn btn-default btn-icon" title="수강생 정보 자세히 보기">
																<i class="fa fa-search-plus"></i>
															</button>
														</a></td>
													<td>
														<button type="button" class="btn btn-default btn-icon btnUpdate"
															data-toggle="modal" data-target="#updateSt" title="수정" value="${m.student_id}">
															<i class="fa fa-pencil-square-o"></i>
														</button>
														<button type="button" class="btn btn-default btn-icon btnDel"
															data-toggle="modal" data-target="#delSt" title="수강생 삭제" value="${m.student_id}"
															${m.oc_admission_count == 0 ? "":"disabled"}>
															<i class="fa fa-trash-o"></i>
														</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<hr>
									
									<form class="form-inline" action="${pageContext.request.contextPath}/a/student" method="post">
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
			</div>
		</div>
	</div>


	<div id="addSt" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">수강생 추가</h5>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/a/student/add" method="post">
						<div class="card card-user card-plain">
							<div class="card-body">
								<div class="row">
									<div class="col-md-6 pr-1">
										<div class="form-group">
											<label>이름</label>
											<input type="text" class="form-control" name="student_name" placeholder="이름을 입력하세요.">
										</div>
									</div>
									<div class="col-md-6 pl-1">
										<div class="form-group">
											<label>전화번호</label>
											<input type="text" class="form-control" name="student_phone" placeholder="전화번호를 입력하세요.">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>이메일</label>
											<input type="text" class="form-control" name="student_email" placeholder="email@email.com">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>주소</label>
											<div class="input-group">
												<input type="text" class="form-control student_addr" name="student_addr" placeholder="주소를 입력하세요">
												<div class="input-group-append">
													<button class="btn addrSearch" type="button" style="margin: 0px">주소검색</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 pr-1">
										<div class="form-group">
											<label>비밀번호</label>
											<input type="password" class="form-control" name="student_pw" placeholder="password">
										</div>
									</div>
									<div class="col-md-6 pl-1">
										<div class="form-group">
											<label>비밀번호 확인</label>
											<input type="password" class="form-control" placeholder="password">
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="text-right">
							<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 수정모달 -->
	<div id="updateSt" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">수강생 수정</h5>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/a/student/update" method="post">
						<div class="row">
							<div class="col-md-12">
								<div class="card card-user card-plain">
									<div class="card-body">
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>수강생번호</label>
													<input type="text" class="form-control student_id" name="student_id" readonly="readonly">
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>이름</label>
													<input type="text" class="form-control student_name" name="student_name">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>전화번호</label>
													<input type="text" class="form-control student_phone" name="student_phone">
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>이메일</label>
													<input type="email" class="form-control student_email" name="student_email">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>주소</label>
													<div class="input-group">
														<input type="text" class="form-control student_addr" name="student_addr" placeholder="주소를 입력하세요">
														<div class="input-group-append">
															<button class="btn addrSearch" type="button" style="margin: 0px">주소검색</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="text-right">
							<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 사진 업로드용 모달 -->
	<div id="addPicture" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">수강생 사진 등록</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/student/pic"
				method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<input type="hidden" class="s_pid" name="s_pid">
						<div class="form-group">
							<input type="text" class="form-control student_id"
							name="student_id" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="text" class="form-control student_name"
							name="student_name" readonly="readonly">
						</div>
						<input type="file" class="btn btn-default btn-block"
						name="file_name" required>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary">OK</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- 수강생 삭제 모달 -->
	<div id="delSt" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">수강생 삭제</h5>
					</div>

					<form action="${pageContext.request.contextPath}/a/student/del" method="post">
						<div class="modal-body">
							<input type="hidden" class="student_id" name="student_id">
							<b id="info"> </b>
							<p>수강생을 삭제하시겠습니까?<br>
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
	<!-- 주소검색 API -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover({
				trigger : "focus",
				placement : "bottom",
				html : true
			});
			
			$("#addSt .addrSearch").on("click", function(){
				daum.postcode.load(function(){
					new daum.Postcode({
						oncomplete: function(data){
							$('#addSt .student_addr').val(data.address);
						}
					}).open();
				});
			});
			
			$(".btnUpdate").on("click", function(){
				var student_name = $(this).parents("tr").find("td").eq(1).find("span").text();
				var student_phone = $(this).parents("tr").find("td").eq(2).text();
				var student_addr = $(this).parents("tr").find("td").eq(3).text();
				var student_email = $(this).parents("tr").find("td").eq(4).text();
	      		$("#updateSt .student_id").val($(this).val());
	      		$("#updateSt .student_name").val(student_name);
	      		$("#updateSt .student_phone").val(student_phone);
	      		$("#updateSt .student_email").val(student_email);
	      		$("#updateSt .student_addr").val(student_addr);
	      		$("#updateSt .addrSearch").on("click", function(){
					daum.postcode.load(function(){
						new daum.Postcode({
							oncomplete: function(data){
								console.log($(this).parents("div").attr("id"));
								$('#updateSt .student_addr').val(data.address);
							}
						}).open();
					});
				});
	      	});
			$(".btnDel").on("click", function(){
	      		var student_id = $(this).val();
				var student_name = $(this).parents("tr").find("td").eq(1).find("span").text();
				var student_phone = $(this).parents("tr").find("td").eq(2).text();
				$("#delSt .student_id").val(student_id);
	      		$("#delSt #info").text(student_id + " (" + student_name + " | " + student_phone + ")");
	      	});
			$(".btnPic").on("click", function(){
				var student_id = $(this).parents("tr").find("td").eq(0).text();
				var student_name = $(this).parents("tr").find("td").eq(1).find("span").text();
				$("#addPicture .student_id").val(student_id);
	      		$("#addPicture .student_name").val(student_name);
				if($(this).val() != ""){
					$("#addPicture .modal-title").text("수강생 사진 수정");
					$("#addPicture .s_pid").val($(this).val());
				}
	      	});
			
			$("#next").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())+1;
				window.location.assign("${pageContext.request.contextPath}/a/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
			})
			
			$("#preious").on("click", function(){
				var pageNum = parseInt($("#pageNum_").val())-1;
				window.location.assign("${pageContext.request.contextPath}/a/student?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
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