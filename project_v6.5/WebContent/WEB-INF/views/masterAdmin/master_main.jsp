<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
					<li>
						<a href="${pageContext.request.contextPath}/m/admin/list">
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
								<span class="navbar-toggler-bar bar1"></span>
								<span class="navbar-toggler-bar bar2"></span>
								<span class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/m/index">Home</a>
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
								<a class="nav-link dropdown-toggle" href="http://example.com"
									id="navbarDropdownMenuLink" data-toggle="dropdown"
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
							<div class="card-header">
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-3 ml-auto">
										<div class="form-group">
											<label>아이디</label>
											<input type="text" class="form-control" readonly="readonly" value="${sessionScope.login.admin_id}">
										</div>
									</div>
									<div class="col-3">
										<div class="form-group">
											<label>이름</label>
											<input type="text" class="form-control" readonly="readonly" value="${sessionScope.login.admin_name}">
										</div>
									</div>
									<div class="col-3 mr-auto">
										<div class="form-group">
											<label>전화번호</label>
											<input type="text" class="form-control" readonly="readonly" value="${sessionScope.login.admin_phone}">
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<hr>
								<div class="col-md-3 mr-auto ml-auto">
									<button type="button" class="btn btn-default btn-block btn-link btnModify"
									data-toggle="modal" data-target="#myModal">비밀번호 변경</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<footer class="footer footer-black  footer-white ">
			</footer>
		</div>
	</div>

	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">비밀번호 변경</h5>
				</div>
				<form action="${pageContext.request.contextPath}/m/admin/modify" method="post">
					<div class="modal-body">
						<div class="form-group">
							<input type="hidden" class="admin_id" name="admin_id">
							<label>현재 비밀번호</label>
							<input type="password" class="form-control" name="admin_pw" placeholder="PASSWORD" required>
						</div>
						<div class="form-group">
							<label>변경 비밀번호</label>
							<input type="password" class="form-control" name="admin_newPw" placeholder="NEW PASSWORD" required>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
						<button type="submit" class="btn btn-primary">OK</button>
					</div>
				</form>
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
			var admin_id = 
			$('[data-toggle="popover"]').popover({
				trigger : "hover"
			});
			$(".btnModify").on("click", function(){
				$("#myModal .admin_id").val("${sessionScope.login.admin_id}");
			});
		});
	</script>
</body>

</html>