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
					<li>
						<a data-toggle="collapse" href="#basicinfo">
						<i class="fa fa-info"></i>
						기초 정보 관리 <b class="caret"></b>
						</a>
					<div class="collapse" id="basicinfo">
						<ul class="nav">
							<li><a
								href="${pageContext.request.contextPath}/a/curriculum"> <span
									class="sidebar-mini-icon">C</span> <span
									class="sidebar-normal"> 과정 관리</span>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/a/subject"> <span
									class="sidebar-mini-icon">S</span> <span
									class="sidebar-normal"> 과목 관리</span>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/a/classroom"> <span
									class="sidebar-mini-icon">R</span> <span
									class="sidebar-normal"> 강의실 관리</span>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/a/book"> <span
									class="sidebar-mini-icon">B</span> <span
									class="sidebar-normal"> 교재 관리</span>
							</a></li>
						</ul>
					</div>
				</li>
               <li>
	               <a href="${pageContext.request.contextPath}/a/instructor"> <i class="nc-icon nc-diamond"></i>
	               	강사 계정 관리
	               </a></li>
               <li><a href="${pageContext.request.contextPath}/a/oc"> <i class="nc-icon nc-pin-3"></i>
                     	개설 과정 관리
               </a></li>
               <li class="active"><a href="${pageContext.request.contextPath}/a/os"> <i
                     class="nc-icon nc-bell-55"></i>
                     개설 과목 관리
               </a></li>
               <li ><a href="${pageContext.request.contextPath}/a/student"> <i
                     class="nc-icon nc-single-02"></i>
                     수강생 관리
               </a></li>
               <li>
					<a data-toggle="collapse" href="#grade">
					<i class="fa fa-list-ol"></i>
					성적 조회 <b class="caret"></b>
					</a>
					<div class="collapse " id="grade">
						<ul class="nav">
							<li>
								<a href="${pageContext.request.contextPath}/a/grade/oc">
								<span class="sidebar-mini-icon">OC</span>
								<span class="sidebar-normal"> 개설 과정명 기준</span>
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/a/grade/student">
								<span class="sidebar-mini-icon">S</span>
								<span class="sidebar-normal"> 수강생 기준</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
               <li><a href="${pageContext.request.contextPath}/a/profile"> <i
                     class="fa fa-gear"></i>
                     관리자 계정 관리
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
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/index">Home ></a>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/a/os">개설 과목 관리</a>
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
							<div class="card-header text-right">
								<div class="pull-left">
									<h4 class="card-title">개설 과목 목록</h4>
								</div>
								<button type="button" class="btn btn-default btn-icon"
								data-toggle="modal" data-target="#addOS" title="개설과목추가">
									<i class="fa fa-plus"></i></button>
							</div>

							<div class="card-body">
								<table class="table text-center">
									<thead class="text-primary">
										<tr>
											<th>개설<br>과목<br>번호</th>
											<th>과목명</th>
											<th>과목기간</th>
											<th width="100px">교재명</th>
											<th>강사명</th>
											<th width="160px">과정명</th>
											<th>과정기간</th>
											<th>강의실</th>
											<th>수정/삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${list}">
											<tr>
												<td>${m.os_id}</td>
												<td hidden="hidden">${m.subject_id}</td>
												<td>${m.subject_name}</td>
												<td><span>${m.os_start_date}</span>~<br><span>${m.os_end_date}</span></td>
												<td hidden="hidden">${m.book_id}</td>
												<td>
													<a href="#" rel="${m.isbn}" data-toggle="popover" title="${m.book_name}"
													data-content="">
													<span>${m.book_name}</span></a>
												</td>
												<td hidden="hidden">${m.instructor_id}</td>
												<td>
													<a href="#" title="${m.instructor_name}" data-toggle="popover"
													data-content="<img src='${pageContext.request.contextPath}/resources/pictures/
													${m.i_file_name == null ? "avatar.png" : "" }${m.i_file_name}'>">
													<span>${m.instructor_name}</span></a> </td>
												<td hidden="hidden">${m.oc_id}</td>
												<td>${m.curriculum_name}</td>
												<td><span>${m.oc_start_date}</span>~<br><span>${m.oc_end_date}</span></td>
												<td>${m.room_name}</td>
												<td>
													<button type="button" class="btn btn-default btn-icon btnUpdate"
														data-toggle="modal" data-target="#updateOS" title="수정" value="${m.os_id}">
														<i class="fa fa-pencil-square-o"></i>
													</button>
													<button type="button"
														class="btn btn-default btn-icon btnDel" data-toggle="modal"
														data-target="#delOS" title="삭제" value="${m.os_id}" ${m.deletable == 0 ? "":"disabled"}>
														<i class="fa fa-trash-o"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<hr>
								<form class="form-inline" action="${pageContext.request.contextPath}/a/os" method="post">
									<div class="form-group mr-auto">
										<select class="form-control" id="key" name="key" style="height: auto">
											<option value="all">개설 과목 전체</option>
											<option value="os_id">개설 과목 번호</option>
											<option value="subject_name">개설 과목명</option>
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
										<button type="button" class="btn btn-neutral btn-lg" disabled="disabled">총 ${count}건</button>
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

	<!-- 개설 과목 추가  Modal -->
	<div id="addOS" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<div class="modal-header">
					<h5 class="modal-title">개설 과목 추가</h5>
				</div>

				<form action="${pageContext.request.contextPath}/a/os/add" method="post">
					<div class="modal-body">
						<div class="form-group">
							<label>개설과정번호 | 과정명 | 강의실명 | 과정시작일 | 과정종료일</label>
							<select class="form-control" name="oc_id" style="height: auto" required>
								<option value="">-</option>
								<c:forEach var="m" items="${ocList}">
									<option value="${m.oc_id}">${m.oc_id} | ${m.curriculum_name} | ${m.room_name} | ${m.oc_start_date} | ${m.oc_end_date}</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과목번호 | 과목명</label>
								<select class="form-control" name="subject_id" style="height: auto" required>
									<option value="">-</option>
									<c:forEach var="m" items="${sList}">
										<option value="${m.subject_id}">${m.subject_id} | ${m.subject_name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-6 form-group pl-1">
								<label>강사번호 | 강사명</label>
								<select class="form-control" name="instructor_id" style="height: auto" required>
									<option value="">-</option>
									<c:forEach var="m" items="${iList}">
										<option value="${m.instructor_id}">${m.instructor_id} | ${m.instructor_name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과목시작일</label>
								<input type="date" class="form-control" name="os_start_date" required>
							</div>
							<div class="col-6 form-group pl-1">
								<label>과목종료일</label>
								<input type="date" class="form-control" name="os_end_date" required>
							</div>
						</div>
						
						<div class="form-group">
							<label>교재번호 | 교재명</label>
							<select class="form-control" name="book_id" style="height: auto">
								<option value="">-</option>
								<c:forEach var="m" items="${bList}">
									<option value="${m.book_id}">${m.book_id} | ${m.book_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
	
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
						<button type="submit" class="btn btn-primary">OK</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	
	<!-- 개설 과목 수정  Modal -->
	<div id="updateOS" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">개설 과목 수정</h5>
				</div>
				<div class="modal-body">
				
					<form action="" method="post">
						<div class="form-group">
							<label>개설 과목 번호</label>
							<input type="text" class="form-control os_id" name="os_id" readonly="readonly">
						</div>
						
						<div class="form-group">
							<label>개설과정번호 | 과정명 | 강의실명 | 과정시작일 | 과정종료일</label>
							<select class="form-control oc_id" name="oc_id" style="height: auto" required>
								<option value="">-</option>
								<c:forEach var="m" items="${ocList}">
									<option value="${m.oc_id}">${m.oc_id} | ${m.curriculum_name} | ${m.room_name} | ${m.oc_start_date} | ${m.oc_end_date}</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과목번호 | 과목명</label>
								<select class="form-control subject_id" name="subject_id" style="height: auto" required>
									<option value="">-</option>
									<c:forEach var="m" items="${sList}">
										<option value="${m.subject_id}">${m.subject_id} | ${m.subject_name}</option>
									</c:forEach>
								</select>
							</div>
							
							<div class="col-6 form-group pl-1">
								<label>강사번호 | 강사명</label>
								<select class="form-control instructor_id" name="instructor_id" style="height: auto" required>
									<option value="">-</option>
									<c:forEach var="m" items="${iList}">
									<option value="${m.instructor_id}">${m.instructor_id} | ${m.instructor_name}</option>
								</c:forEach>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-6 form-group pr-1">
								<label>과목시작일</label>
								<input type="date" class="form-control os_start_date" name="os_start_date" required>
							</div>
							<div class="col-6 form-group pl-1">
								<label>과목종료일</label>
								<input type="date" class="form-control os_end_date" name="os_end_date" required>
							</div>
						</div>
						
						<div class="form-group">
							<label>교재번호 | 교재명</label>
							<select class="form-control book_id" name="book_id" style="height: auto" required>
								<option value="null">-</option>
								<c:forEach var="m" items="${bList}">
									<option value="${m.book_id}">${m.book_id} | ${m.book_name}</option>
								</c:forEach>
							</select>
						</div>
					</form>
					
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
					<button type="submit" class="btn btn-primary">OK</button>
				</div>
			</div>

		</div>
	</div>

	<!-- 개설 과목 삭제 Modal -->
	<div id="delOS" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">개설 과목 삭제</h5>
				</div>
				<form action="${pageContext.request.contextPath}/a/os/del" method="post">
					<div class="modal-body">
						<input type="hidden" class="os_id" name="os_id">
						<b id="info"> </b>
						<p>개설과목을 삭제하시겠습니까?</p>
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
	<!--  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
	<!-- Chart JS -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath}/resources/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
	<script>
    $(document).ready(function() {
    	
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

    	
    	$('[data-toggle="popover"]').popover({
    		trigger : "focus",
			placement : "bottom",
			html : true
		});
    	
    	
    	$("#next").on("click", function(){
			var pageNum = parseInt($("#pageNum_").val())+1;
			window.location.assign("${pageContext.request.contextPath}/a/os?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
		})
		
		$("#preious").on("click", function(){
			var pageNum = parseInt($("#pageNum_").val())-1;
			window.location.assign("${pageContext.request.contextPath}/a/os?key="+'${key}'+"&value="+'${value}'+"&pageNum_=" + pageNum);
		})
		
		if('${pageNum}' == 1){
			$("#preious").attr("disabled", "disabled");
		}
		
		if('${pageNum}' == '${lastPage}'){
			$("#next").attr("disabled", "disabled");
		}
		
		$("#key option[value='${key}']").attr("selected", "selected");
		$("#value").val('${value}');
        
      	$(".btnDel").on("click", function(){
      		var os_id = $(this).parents("td").siblings("td").eq(0).text();
			var subject_name = $(this).parents("td").siblings("td").eq(1).text();
			var os_date = $(this).parents("td").siblings("td").eq(2).text()
			$("#delOS .os_id").val(os_id);
      		$("#delOS #info").text(os_id + " (" + subject_name + " | " + os_date + ")");
      	});
      	
      	$(".btnUpdate").on("click", function(){
			var oc_id = $(this).parents("td").siblings("td").eq(8).text();
			var subject_id = $(this).parents("td").siblings("td").eq(1).text();
			var instructor_id = $(this).parents("td").siblings("td").eq(6).text();
			var book_id = $(this).parents("td").siblings("td").eq(4).text();
			if(book_id==""){book_id = null};
			var os_start_date = $(this).parents("td").siblings("td").eq(3).find("span").eq(0).text();
			var os_end_date = $(this).parents("td").siblings("td").eq(3).find("span").eq(1).text();
			
      		$("#updateOS .os_id").val($(this).val());
      		$("#updateOS .oc_id option[value="+oc_id+"]").attr("selected", "selected");
      		$("#updateOS .subject_id option[value="+subject_id+"]").attr("selected", "selected");
      		$("#updateOS .instructor_id option[value="+instructor_id+"]").attr("selected", "selected");
      		$("#updateOS .book_id option[value="+book_id+"]").attr("selected", "selected");
      		$("#updateOS .os_start_date").val(os_start_date);
      		$("#updateOS .os_end_date").val(os_end_date);
      	});
    });
    
  </script>
</body>

</html>