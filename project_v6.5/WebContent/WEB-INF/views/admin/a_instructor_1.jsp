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
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
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
					<li class="active"><a
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
							></a> <a class="navbar-brand" href="${pageContext.request.contextPath}/a/instructor">강사 계정 관리</a>
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
									<h4 class="card-title">강사 목록</h4>
								</div>
								<button type="button" class="btn btn-default btn-icon btnDel"
									data-toggle="modal" data-target="#addInst" title="추가">
									<i class="fa fa-plus"></i>
								</button>

							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>강사<br>번호
											</th>
											<th>강사명</th>
											<th>전화번호</th>
											<th width="200px">강의 가능 과목</th>
											<th>등록일</th>
											<th>사진<br>등록/수정
											</th>
											<th>자세히</th>
											<th>수정/삭제</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="i" items="${list}">
											<tr>
												<td>${i.instructor_id}</td>
												<td>
													<a href="#" title="${i.instructor_name}" data-toggle="popover"
													data-content="<img src='${pageContext.request.contextPath}/resources/pictures/
													${i.i_pid == null ? "avatar.png" : "" }${i.i_file_name}'>">
													<span>${i.instructor_name}</span></a></td>
												<td>${i.instructor_phone}</td>
												<td>${i.possible_course}</td>
												<td>${i.instructor_regdate}</td>
												<td>
														<button type="button" class="btn btn-default btn-icon btnPic" value="${i.i_pid}"
															data-toggle="modal" data-target="#addPicture" title="강사 사진 등록">
															<i class="fa fa-picture-o"></i>
														</button>
												</td>

												<td><a
													href="${pageContext.request.contextPath}/a/instructor/info?instructor_id=${i.instructor_id}">
														<button type="button" 
															class="btn btn-default btn-icon" title="조회">
															<i class="fa fa-search-plus"></i>
														</button>

												</a></td>
												<td>
													<button type="button"
														class="btn btn-default btn-icon btnUpdate"
														data-toggle="modal" data-target="#updateInst" title="수정" value="${i.instructor_id}" title="수정">
														<i class="fa fa-pencil-square-o"></i>
													</button>
													<button type="button"
														class="btn btn-default btn-icon btnDel"
														data-toggle="modal" data-target="#delInst" title="삭제" value="${i.instructor_id}" title="삭제"
														${i.deletable==0 ? "":"disabled"}>
														<i class="fa fa-trash-o"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
								<form class="form-inline">
									<div class="form-group mr-auto"></div>
									<div>
										<button type="button" class="btn btn-neutral btn-lg btn-block"
											disabled="disabled">총 ${count}건</button>
									</div>
								</form>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<div id="addInst" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">강사 추가</h5>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath}/a/instructor/add" method="POST">
						<div class="row">
							<div class="mr-auto ml-auto col-md-8">
								<div class="card card-user card-plain">
									<div class="card-body">
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>이름</label> <input type="text" class="form-control"
														placeholder="이름을 입력하세요." id="instructor_name" name="instructor_name" required>
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>전화번호</label> <input type="text" class="form-control"
														placeholder="전화번호를 입력하세요." id="instructor_phone" name="instructor_phone" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>이메일</label> <input type="text" class="form-control"
														placeholder="이메일을 입력하세요." id="instructor_email" name="instructor_email" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>주소</label> <input type="text" class="form-control"
														placeholder="주소를 입력하세요." id="instructor_addr" name="instructor_addr" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>비밀번호</label> <input type="password"
														class="form-control" placeholder="password" id="instructor_pw" name="instructor_pw" required>
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>비밀번호 확인</label> <input type="password"
														class="form-control" placeholder="password">
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-12">
								<div class="card card-plain">
									<div class="card-body">
										<h6 class="card-title">강의가능과목</h6>
										<div class="pl-5">
											<c:forEach var="pc" items="${sList}">
												<div class="col-md-2 form-check form-check-inline">
													<input type="hidden" class="pc_check" name="pc_check">
													<label class="form-check-label">
													<input name="pc_check" value="${pc.subject_id}"
														class="form-check-input pc_check" type="checkbox">
														<span class="form-check-sign"></span>${pc.subject_name}
													</label>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="text-right">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div id="updateInst" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">강사 수정</h5>
				</div>
				<div class="modal-body">
					<form action = >
						<div class="row">
							<div class="mr-auto ml-auto col-md-8">
								<div class="card card-user card-plain">
									<div class="card-body">
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>강사 번호</label> <input type="text"
														class="form-control" value="value" readonly="readonly">
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>이름</label> <input type="text" class="form-control"
														placeholder="이름을 입력하세요." value="" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>전화번호</label> <input type="text" class="form-control"
														placeholder="전화번호를 입력하세요." value="" required>
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>이메일</label> <input type="email" class="form-control"
														placeholder="이메일을 입력하세요." value="" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>주소</label> <input type="text" class="form-control"
														placeholder="주소를 입력하세요." value="" required>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-12">
								<div class="card card-plain">
									<div class="card-body">
										<h6 class="card-title">강의가능 과목</h6>
										<div class="pl-5">
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> Oracle
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> MySQL
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> HTML
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> CSS
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> SpringXML
												</label>
											</div>
										</div>
										<div class="pl-5">
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> Spring
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> Ajax
												</label>
											</div>
											<div class="col-md-2 form-check form-check-inline">
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox"> <span
													class="form-check-sign"></span> XML
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="text-right">
							<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">OK</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div id="addPicture" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">강사 사진 등록</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="${pageContext.request.contextPath}/a/instructor/pic" method="POST" enctype="multipart/form-data">
				<div class="modal-body">
					<input type="hidden" class="i_pid" name="i_pid">
					<div class="form-group">
						<input type="text" class="form-control instructor_id" 
							name="instructor_id" readonly="readonly">
					</div>
					<div class="form-group">
						<input type="text" class="form-control instructor_name" 
							readonly="readonly">
					</div>
					<input type="file" class="btn btn-default btn-block" name="i_file_name" required>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="submit" class="btn btn-primary">OK</button>
				</div>
				</form>
			</div>

		</div>
	</div>

	<div id="delInst" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">강사 계정 삭제</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form action="${pageContext.request.contextPath}/a/instructor/del" method="POST">
				<div class="modal-body">
					<input type="hidden" class="instructor_id" name="instructor_id">
						<b id="info"> </b>
					<p>강사를 삭제하시겠습니까?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
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
			$('[data-toggle="popover"]').popover({
				trigger : "focus",
				placement : "bottom",
				html : true
			});
			
			/* 체크 value 가져오기 */
			$(".pc_check:checked").each(function() { 
			        alert($(this).val());
			});
			

			$(".pc_check").prop("checked") ;

			
	      	$(".btnDel").on("click", function(){
	      		var instructor_id = $(this).parents("td").siblings("td").eq(0).text();
				var instructor_name = $(this).parents("td").siblings("td").eq(1).text();
				$("#delInst .instructor_id").val($(this).val());
	      		$("#delInst #info").text(instructor_id + " (" + instructor_name + " )" );
	      	});
	      	$(".btnUpdate").on("click", function(){
	      		$("#updateInst .instructor_id").val($(this).val());
	      	});
			$(".btnPic").on("click", function(){
				var instructor_id = $(this).parents("tr").find("td").eq(0).text();
				var instructor_name = $(this).parents("tr").find("td").eq(1).find("span").text();
				if($(this).val() != ""){
					$("#addPicture form").attr("action", "${pageContext.request.contextPath}/a/instructor/picModify")
					$("#addPicture .modal-title").text("강사 사진 수정");
					$("#addPicture .i_pid").val($(this).val());
				}
				$("#addPicture .instructor_id").val(instructor_id);
	      		$("#addPicture .instructor_name").val(instructor_name);
	      	});
	    });
	</script>
</body>

</html>