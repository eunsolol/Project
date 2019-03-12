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
					<li class="active"><a data-toggle="collapse" href="#basicinfo">
							<i class="fa fa-info"></i> 기초 정보 관리 <b class="caret"></b>
					</a>
						<div class="in collapse show" id="basicinfo">
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
								<li class="active"><a
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
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/main">Home ></a>
						<a class="navbar-brand">기초 정보 관리 ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/book">교재 관리</a>
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
									<h4 class="card-title">교재 관리</h4>
								</div>
								<button type="button" class="btn btn-default btn-icon"
									data-toggle="modal" data-target="#addBook" title="추가">
									<i class=" fa fa-plus"></i>
								</button>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>교재번호</th>
											<th>교재명</th>
											<th>ISBN</th>
											<th>수정/삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="b" items="${list}">
											<tr>
												<td>${b.book_id}</td>
												<td>
													<a href="#" rel="${b.isbn}" title="${b.book_name}" data-toggle="popover"
													data-content="">
													<span>${b.book_name}</span></a>
												<td>${b.isbn}</td>
												<td>
													<button type="button" class="btn btn-default btn-icon btnUpdate"
													data-toggle="modal" data-target="#updateBook" title="수정" value="${b.book_name}">
														<i class="fa fa-pencil-square-o"></i>
													</button>
													<button type="button"
														class="btn btn-default btn-icon btnDel"
														data-toggle="modal" data-target="#delBook" title="삭제" value="${b.book_id}"
														${b.deletable == 0 ? "":"disabled"}>
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
										<button type="button" class="btn btn-neutral btn-lg" disabled="disabled">총 ${totalcount}건</button>
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


	<!-- 교재등록 -->
	<div id="addBook" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">교재 등록</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/book/add" method="post">
					<div class="modal-body">
						<div class="form-group">
							<label>교재명</label>
							<input type="text" class="form-control" id="book_name" name="book_name"
								placeholder="max 20" required>
						</div>
						<div class="form-group">
							<label for="isbn">ISBN</label>
							<input type="text" class="form-control" id="isbn" name="isbn" placeholder="max 13" required>
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


	<!-- 교재 삭제 -->
	<div id="delBook" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">교재 삭제</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/book/del" method="post">
					<div class="modal-body">
							<input type="hidden" class="book_id" name="book_id">
							<b id="info"> </b>
							<p>교재를 삭제하시겠습니까?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
						<button type="submit" class="btn btn-primary">OK</button>
					</div>
				</form>
			</div>

		</div>
	</div>

	<!-- 교재 수정 -->
	<div id="updateBook" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">교재 수정</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/book/update" method="post">
					<div class="modal-body">
						<div class="form-group">
							<label>교재번호</label>
							<input type="text" class="form-control book_id" name="book_id" readonly="readonly" >
						</div>
						<div class="form-group">
							<label>교재명</label>
							<input type="text" class="form-control book_name" name="book_name" required>
						</div>
						<div class="form-group">
							<label>ISBN</label>
							<input type="text" class="form-control isbn" name="isbn" required>
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
			$("[data-toggle='popover']").popover({
				trigger : "focus",
				placement : "bottom",
				html : true
			});
			
			$(".btnUpdate").on("click", function(){
				var book_id = $(this).parents("td").siblings("td").eq(0).text();
				var isbn = $(this).parents("td").siblings("td").eq(2).text();
				$("#updateBook .book_id").val(book_id);
				$("#updateBook .book_name").val($(this).val());
				$("#updateBook .isbn").val(isbn);
			});
			$(".btnDel").on("click", function(){
				var book_id = $(this).val();
				var book_name = $(this).parents("td").siblings("td").eq(1).text();
				$("#delBook .book_id").val(book_id);
	      		$("#delBook #info").text(book_id + " (" + book_name + ")");
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
		});
	</script>

</body>
</html>