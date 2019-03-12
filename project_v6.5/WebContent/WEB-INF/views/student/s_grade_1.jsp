<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
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
            	<a href="${pageContext.request.contextPath}/views/student/s_main.jsp" class="simple-text logo-normal">
               		<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png">
           		</a>
            </div>
            <div class="logo">
				<div class="logo-image-small">
					<a class="simple-text logo-mini">
					<img style="border-radius: 100%;" src="${pageContext.request.contextPath}
					/resources/pictures/${sessionScope.login.s_file_name == null ? 'avatar.png' : ''}${sessionScope.login.s_file_name}">
					</a>
				</div>
				<a class="simple-text logo-normal">수강생 [${sessionScope.login.student_name}]</a>
			</div>

			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="${pageContext.request.contextPath}/s/profile?student_id=${sessionScope.login.student_id}"> <i class="fa fa-gear"></i>
							개인 정보 관리
					</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/s/grade?student_id=${sessionScope.login.student_id}"> <i
							class="fa fa-list-ol"></i>
							성적 조회
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
						<a class="navbar-brand" href="${pageContext.request.contextPath}/s/index">Home ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/s/grade">성적 조회</a>
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
									<a class="dropdown-item" href="${pageContext.request.contextPath}/logout">로그아웃</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">수강 과정 목록</h4>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>개설<br>과정<br>번호</th>
											<th>과정명</th>
											<th>과정기간</th>
											<th>강의실</th>
											<th>수료(예정)<br>/중도탈락</th>
											<th>수료(예정)<br>/중도탈락일</th>
											<th>성적 조회</th>
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
													<a href="${pageContext.request.contextPath}/s/grade2?student_id=${m.student_id}&oc_id=${m.oc_id}">
													<button type="button" class="btn btn-default btn-icon"
														title="성적 조회">
															<i class="fa fa-search-plus"></i>
													</button></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
								<form class="form-inline">
									<div class="form-group mr-auto"></div>
									<div>
										<button type="button" class="btn btn-neutral btn-lg"
											disabled="disabled">총 1건</button>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath}/resources/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath}/resources/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
    });
  </script>
</body>

</html>