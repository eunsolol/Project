<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/img/logo.png">
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/logo.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>성적처리시스템</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
		name='viewport' />
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
				<a href="${pageContext.request.contextPath}/m/index" class="simple-text logo-normal">
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
					<li class="active">
						<a href="${pageContext.request.contextPath}/m/admin/list">
							<i class="fa fa-gear"></i> 관리자 계정 관리
						</a>
					</li>
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
								<span class="navbar-toggler-bar bar1"></span>
								<span class="navbar-toggler-bar bar2"></span>
								<span class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/m/index">Home ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/m/admin/list">관리자 계정 관리</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span>
						<span class="navbar-toggler-bar navbar-kebab"></span>
						<span class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="navigation">
						<ul class="navbar-nav">
							<li class="nav-item btn-rotate dropdown">
								<a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<i class="fa fa-unlock-alt"></i>
									<span class="d-lg-none d-md-block"></span>
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="${pageContext.request.contextPath}/master/logout">로그아웃</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">
				<div class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header text-right">
									<div class="pull-left">
										<h4 class="card-title">관리자 목록</h4>
									</div>
									<button type="button" class="btn btn-default btn-icon btnDel btnAdd"
										data-toggle="modal" data-target="#addAdmin" title="관리자 추가">
										<i class=" fa fa-plus"></i>
									</button>
								</div>

								<div class="card-body">
									<table class="table text-center">
										<thead class="text-primary">
											<tr>
												<th>아이디</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>계정등록일</th>
												<th>비밀번호 초기화</th>
												<th>정보수정</th>
												<th>계정잠금/해제</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="m" items="${list}">
												<tr ${m.admin_blind == 0 ? "" : "style='background-color: #f5f5f5;'" }>
													<td id="admin_id">${m.admin_id}</td>
													<td id="admin_name">${m.admin_name}</td>
													<td id="admin_phone">${m.admin_phone}</td>
													<td id="admin_regdate">${m.admin_regdate}</td>
													<td>
														<button type="button" class="btn btn-default btn-icon btnReset"
														data-toggle="modal" data-target="#resetPw" value="${m.admin_id}"
														title="비밀번호 초기화">
															<i class="fa fa-undo"></i>
														</button>
													</td>
													<td>
														<button type="button" class="btn btn-default btn-icon btnUpdate"
														data-toggle="modal" data-target="#updateAdmin" value="${m.admin_id}"
														title="수정">
															<i class="fa fa-pencil-square-o"></i>
														</button>
													</td>
													<td>
														<button type="button" class="btn btn-default btn-icon btnLock"
															data-toggle="modal" data-target="#lock" value="${m.admin_blind}"
															title="${m.admin_blind == 0 ? '계정잠금' : '계정잠금해제'}">
															<i class="fa ${m.admin_blind == 0 ? 'fa-lock' : 'fa-unlock' }"></i>
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
				</div>
			</div>
			<footer class="footer footer-black  footer-white ">
				<div class="container-fluid">
					<div class="row">
						<div class="credits ml-auto"></div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<div id="resetPw" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">비밀번호 초기화</h5>
					</div>
					<form role="form" action="${pageContext.request.contextPath}/m/admin/resetPw" method="post">
						<div class="modal-body">
							<input type="hidden" class="admin_id" name="admin_id">
							<label>변경 비밀번호</label> <input type="password" class="form-control admin_pw" name="admin_pw" placeholder="Password">
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

	<div id="lock" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">계정잠금</h5>
					</div>
					<form action="${pageContext.request.contextPath}/m/admin/lock" method="post">
						<div class="modal-body">
							<input type="hidden" class="admin_id" name="admin_id">
							<input type="hidden" class="admin_blind" name="admin_blind">
							<b id="info">UMMMMM (엄호선 | 010-1234-1234)</b>
							<p>계정을 비활성/활성 하시겠습니까?</p>
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

	<div id="addAdmin" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">관리자 추가</h5>
				</div>
				<div class="modal-body">
					<form role="form" action="${pageContext.request.contextPath}/m/admin/add" method="post">
						<div class="row">
							<div class="col-md-12">
								<div class="card card-user card-plain">
									<div class="card-body">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>아이디</label>
													<input type="text" class="form-control admin_id" name="admin_id" placeholder="아이디를 입력하세요." value="" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>이름</label>
													<input type="text" class="form-control admin_name" name="admin_name" placeholder="이름을 입력하세요." value="" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>전화번호</label>
													<input type="text" class="form-control admin_phone" name="admin_phone" placeholder="전화번호를 입력하세요" value="" required>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 pr-1">
												<div class="form-group">
													<label>비밀번호</label>
													<input type="password" class="form-control admin_pw" name="admin_pw" placeholder="password" value="" required>
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>비밀번호 확인</label>
													<input type="password" class="form-control" placeholder="password" value="" required>
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
	
	<div id="updateAdmin" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">관리자 수정</h5>
				</div>
				<div class="modal-body">
					<form role="form" action="${pageContext.request.contextPath}/m/admin/update" method="post">
						<div class="row">
							<div class="col-md-12">
								<div class="card card-user card-plain">
									<div class="card-body">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>아이디</label>
													<input type="text" class="form-control admin_id" name="admin_id" readonly="readonly">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>이름</label>
													<input type="text" class="form-control admin_name" name="admin_name" placeholder="이름을 입력하세요.">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>전화번호</label>
													<input type="text" class="form-control admin_phone" name="admin_phone" placeholder="전화번호를 입력하세요">
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
			$('[data-toggle="popover"]').popover({
			});	
			$(".btnReset").on("click", function(){
				$("#resetPw .admin_id").val($(this).val());
			});
			$(".btnLock").on("click", function(){
				var admin_id = $(this).parents("td").siblings("td").eq(0).text();
				var admin_name = $(this).parents("td").siblings("td").eq(1).text();
				var admin_phone = $(this).parents("td").siblings("td").eq(2).text()
				$("#lock .admin_id").val(admin_id);
				$("#lock .admin_blind").val($(this).val() == 0 ? 1 : 0);
				$("#lock #info").text(admin_id + " (" + admin_name + " | " + admin_phone + ")");
			});
			$(".btnUpdate").on("click", function(){
				var admin_name = $(this).parents("td").siblings("td").eq(1).text();
				var admin_phone = $(this).parents("td").siblings("td").eq(2).text();
				$("#updateAdmin .admin_id").val($(this).val());
				$("#updateAdmin .admin_name").val(admin_name);
				$("#updateAdmin .admin_phone").val(admin_phone);
			});
		});
	</script>
</body>

</html>