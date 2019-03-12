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
							<i class="nc-icon nc-diamond"></i>
							강사 계정 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/oc">
							<i class="nc-icon nc-pin-3"></i>
							개설 과정 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/os">
							<i class="nc-icon nc-bell-55"></i>
							개설 과목 관리
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/a/student">
							<i class="nc-icon nc-single-02"></i>
							수강생 관리
					</a></li>
					<li><a data-toggle="collapse" href="#grade"> <i
							class="fa fa-list-ol"></i>
								성적 조회 <b class="caret"></b>
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
							<i class="fa fa-gear"></i>
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
						<a class="navbar-brand"href="${pageContext.request.contextPath}/a/index">Home ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/instructor">강사 계정 관리</a>
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
								aria-haspopup="true" aria-expanded="false"> 
								<i class="fa fa-unlock-alt"></i>
								<span class="d-lg-none d-md-block"></span>
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
						<div class="card card-plain">
							<div class="card-header">
								<form class="form-inline">
									<div class="form-group">
										<h4 class="card-title">강사 정보</h4>
									</div>
								</form>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>강사 번호</th>
											<th>강사명</th>
											<th>전화번호</th>
											<th width="280px">강의 가능 과목</th>
											<th>등록일</th>
											<th>비밀번호 초기화</th>
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
												<button type="button" class="btn btn-default btn-icon resetInst" 
													data-toggle="modal" data-target="#resetInst" value="${i.instructor_id}" title="초기화"><i class="fa fa-undo"></i></button>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- 네비 -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">강의 스케줄 목록</h4>
							</div>

							<div class="card-body">
								<div class="nav-tabs-navigation">
									<div class="nav-tabs-wrapper">
										<ul id="tabs" class="nav nav-tabs" role="tablist">
											<li class="nav-item"><a class="nav-link active"
												data-toggle="tab" href="#ing" role="tab"
												aria-expanded="true">강의 중</a></li>
											<li class="nav-item"><a class="nav-link"
												data-toggle="tab" href="#due" role="tab"
												aria-expanded="true">강의 예정</a></li>
											<li class="nav-item"><a class="nav-link"
												data-toggle="tab" href="#pre" role="tab"
												aria-expanded="true">강의 종료</a></li>
										</ul>
									</div>
								</div>
								<div id="my-tab-content" class="tab-content text-center">
									<div class="tab-pane active" id="ing" role="tabpanel"
										aria-expanded="true">
										<div class="row">
											<div class="col-md-12">
												<table class="table text-center">
													<thead class=" text-primary">
														<tr>
															<th>개설 과목 번호</th>
															<th>과목명</th>
															<th>과목 기간</th>
															<th>교재명</th>
														</tr>
													</thead>
													<tbody>
												<c:forEach var="ing" items="${list2}">
														<tr>
															<td>${ing.os_id}</td>
															<td>${ing.subject_name}</td>
															<td>${ing.os_start_date} ~ ${ing.os_end_date}</td>
															<td>
																<a href="#" rel="${ing.isbn}" data-toggle="popover" title="${ing.book_name}"
																data-content="">
																<span>${ing.book_name}</span></a>
														</tr>
													</c:forEach>
													</tbody>
												</table>
												<hr>
												<form class="form-inline">
													<div class="form-group mr-auto"></div>
													<div>
														<button type="button" class="btn btn-neutral btn-lg"
															disabled="disabled">${count}</button>
													</div>
													<div class="btn-group btn-sm">
														<button type="button"
															class="btn btn-round btn-outline-primary">
															<i class="nc-icon nc-minimal-left"></i>
														</button>
														<button type="button" class="btn btn-round btn-primary">
															1</button>
														<button type="button"
															class="btn btn-round btn-outline-primary">
															<i class="nc-icon nc-minimal-right"></i>
														</button>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="due" role="tabpanel"
										aria-expanded="false">
										<div class="row">
											<div class="col-md-12">
												<table class="table text-center">
													<thead class=" text-primary">
														<tr>
															<th>개설 과목 번호</th>
															<th>과목명</th>
															<th>과목 기간</th>
															<th>교재명</th>
														</tr>
													</thead>
													<tbody>
												<c:forEach var="due" items="${list4}">
														<tr>
															<td>${due.os_id}</td>
															<td>${due.subject_name}</td>
															<td>${due.os_start_date} ~ ${due.os_end_date}</td>
															<td>
																<a href="#" rel="${due.isbn}" data-toggle="popover" title="${due.book_name}"
																data-content="">
																<span>${due.book_name}</span></a>
														</tr>
													</c:forEach>
													</tbody>
												</table>
												<hr>
												<form class="form-inline">
													<div class="form-group mr-auto"></div>
													<div>
														<button type="button" class="btn btn-neutral btn-lg"
															disabled="disabled">총 2건</button>
													</div>
													<div class="btn-group btn-sm">
														<button type="button"
															class="btn btn-round btn-outline-primary">
															<i class="nc-icon nc-minimal-left"></i>
														</button>
														<button type="button" class="btn btn-round btn-primary">
															1</button>
														<button type="button"
															class="btn btn-round btn-outline-primary">
															<i class="nc-icon nc-minimal-right"></i>
														</button>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="pre" role="tabpanel"
										aria-expanded="false">
										<div class="row">
											<div class="col-md-12">
												<table class="table text-center">
													<thead class=" text-primary">
														<tr>
															<th>개설 과목 번호</th>
															<th>과목명</th>
															<th>과목 기간</th>
															<th>교재명</th>
														</tr>
													</thead>
													<tbody>
												<c:forEach var="pre" items="${list3}">
														<tr>
															<td>${pre.os_id}</td>
															<td>${pre.subject_name}</td>
															<td>${pre.os_start_date} ~ ${pre.os_end_date}</td>
															<td>
																<a href="#" rel="${pre.isbn}" data-toggle="popover" title="${pre.book_name}"
																data-content="">
																<span>${pre.book_name}</span></a>
														</tr>
													</c:forEach>
													</tbody>
												</table>
												<hr>
												<form class="form-inline">
													<div class="form-group mr-auto"></div>
													<div>
														<button type="button" class="btn btn-neutral btn-lg"
															disabled="disabled">${count}</button>
													</div>
													<div class="btn-group btn-sm">
														<button type="button"
															class="btn btn-round btn-outline-primary">
															<i class="nc-icon nc-minimal-left"></i>
														</button>
														<button type="button" class="btn btn-round btn-primary">
															1</button>
														<button type="button"
															class="btn btn-round btn-outline-primary">
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


	<!-- 비밀번호 초기화 Modal -->
	<div id="resetInst" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">비밀번호 초기화</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/instructor/reset" method="POST">
					<div class="modal-body">
						<input type="hidden" class="instructor_id" name="instructor_id">
						<b id="info"> </b>
						<label>변경 비밀번호</label>
						<input type="password" name="instructor_pw" class="form-control" placeholder="password">
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
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
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
			
			$("a[rel]").on("mouseover", function(){
	    		var isbn = $(this).attr("rel");
	    		var s="a[rel="+isbn+"]";
	    		$.ajax({
	    			url: "${pageContext.request.contextPath}/a/book/info"
	    			,data: {isbn:isbn}
	    			,success: function(data_) {
	    				var array = data_.item;
	    				for (var i = 0; i < array.length; ++i) {
	    	                var item = array[i];
	    	                var title = item.title;
	    	                var publisher = item.publisher;
	    	                var author = item.author;
	    	                var priceStandard = item.priceStandard;
	    	                var coverLargeUrl = item.coverLargeUrl;
	    	            }
	    				var dataContent = "<img src='" + coverLargeUrl + "'><div><ul><li>저자 : " + author + "</li><li>가격 : " + priceStandard + "원 </li><li>출판사 : " + publisher + "</li></ul></div>";
	    				$(s).attr("data-content", dataContent);
	    		}});
	    	});
			
			$(".resetInst").on("click", function() {
				var instructor_id = $(this).parents("td").siblings("td").eq(0).text();
				var instructor_name = $(this).parents("td").siblings("td").eq(1).text();
				
				$("#resetInst .instructor_id").val($(this).val());
				$("#resetInst #info").text(instructor_id+" ("+ instructor_name + ")");
			});
      		$(".btnUpdate").on("click", function(){
      			$("#updateInst .instructor_id").val($(this).val());
      		});
			
		});
	</script>
</body>

</html>