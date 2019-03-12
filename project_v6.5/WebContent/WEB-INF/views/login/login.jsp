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

<body style="background-color: #F4F3EF">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png">
			</div>
			<form method="post" action="">
				<div class="modal-body" style="padding: 40px 50px 10px;">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" id="userId" name="student_name" placeholder="아이디" required>
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" id="userPw" name="student_pw" placeholder="비밀번호" required>
					</div>
					
					<div class="neutral text-center">
						<div class="text-center form-check-radio form-check-inline">
							<label class="form-check-label">
								<input class="form-check-input" type="radio" name="loginOptions"  id="inlineRadio1" value="student"> 학생
								<span class="form-check-sign"></span>
							</label>
						</div>
						<div class="form-check-radio form-check-inline">
							<label class="form-check-label">
								<input class="form-check-input" type="radio" name="loginOptions" id="inlineRadio2" value="instructor"> 강사
								<span class="form-check-sign"></span>
							</label>
						</div>
						<div class="form-check-radio form-check-inline">
							<label class="form-check-label">
								<input class="form-check-input" type="radio" name="loginOptions" id="inlineRadio3" value="admin"> 관리자
								<span class="form-check-sign"></span>
							</label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary btn-round btn-block"> Login</button>
				</div>
			</form>
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
			$('[data-toggle="popover"]').popover();
			$(".neutral #inlineRadio1,#inlineRadio2").on("click",function(){
				$("#userId").attr("name",($(this).val()+"_name"));
				$("#userPw").attr("name",($(this).val()+"_pw"));
				$("form").attr("action", "${pageContext.request.contextPath}/login/"+$(this).val());
			});
			$(".neutral #inlineRadio3").on("click",function(){
				$("#userId").attr("name",($(this).val()+"_id"));
				$("#userPw").attr("name",($(this).val()+"_pw"));
				$("form").attr("action", "${pageContext.request.contextPath}/login/"+$(this).val());
			});
		});
	</script>
</body>

</html>