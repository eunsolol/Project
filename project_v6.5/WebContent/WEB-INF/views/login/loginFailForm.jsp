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
			<form method="post" action="${pageContext.request.contextPath}/index">
				<div class="modal-body" style="padding: 0px 50px 10px;">
					<h4 class="text-center">로그인에 실패하였습니다.</h4>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary btn-round btn-block">로그인 페이지로 이동</button>
				</div>
			</form>
		</div>

	</div>
</body>
</html>