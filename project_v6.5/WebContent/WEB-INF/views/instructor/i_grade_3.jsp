<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/img/test1.png">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/img/test1.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>성적처리시스템</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/paper-dashboard.css?v=2.0.0"
	rel="stylesheet" />

</head>

<body>
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">

			<div class="logo text-center">
            	<a href="${pageContext.request.contextPath}/i/index" class="simple-text logo-normal">
               		<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png">
           		</a>
            </div>
            <div class="logo">
				<div class="logo-image-small">
					<a class="simple-text logo-mini">
					<img style="border-radius: 100%;" src="${pageContext.request.contextPath}/resources/img/avatar.png">
					</a>
				</div>
				<a class="simple-text logo-normal"> 강사 [${sessionScope.login.instructor_name}] </a>
			</div>
            


			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="${pageContext.request.contextPath}/i/profile?instructor_id=${sessionScope.login.instructor_id}"><i class="fa fa-gear"></i>
							개인 정보 관리
					</a></li>
					<li><a href="${pageContext.request.contextPath}/i/schedule?instructor_id=${sessionScope.login.instructor_id}">
							<i class="fa fa-calendar"></i>
							강의 스케쥴 조회
					</a></li>
					<li><a href="${pageContext.request.contextPath}/i/point?instructor_id=${sessionScope.login.instructor_id}"> <i
							class="nc-icon nc-pin-3"></i>
							배점 관리
					</a></li>
					<li><a href="${pageContext.request.contextPath}/i/grade?instructor_id=${sessionScope.login.instructor_id}">
						<i class="fa fa-list-ol"></i>
							성적 관리
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
							href="${pageContext.request.contextPath}/i/index">Home
							></a> <a class="navbar-brand"
							href="${pageContext.request.contextPath}i/grade">성적
							관리</a>
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
						<div class="card card-plain">
							<div class="card-header">
								<h4 class="card-title">강의 과목 정보</h4>
							</div>
							<div class="card-body">

								<table class="table text-center">
									<thead class=" text-primary">
										<tr>
											<th>개설<br>과목 번호</th>
											<th>과목명</th>
											<th>과목기간</th>
											<th>교재명</th>
											<th>강의실</th>
											<th>과정명</th>
											<th>과정기간</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="m" items="${info}">
										<tr>
											<td>${m.os_id}</td>
											<td>${m.subject_name}</td>
											<td>${m.os_start_date}~<br>${m.os_end_date}</td>
											<td><a href="#" title="Java레벨업" data-toggle="popover"
												data-placement="bottom" data-html="true"
												data-content='<img src="${pageContext.request.contextPath}/resources/img/header.jpg"><div class="text-center">저자 : 마이크 / 가격 : 5,000원 / 출판사 : 한빛미디어</div>'>
													SQL레벨업</a></td>
											<td>${m.room_name}</td>
											<td>${m.curriculum_name}</td>
											<td>${m.oc_start_date}~<br>${m.oc_end_date}</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-12">
						<div class="card card-plain">
							<div class="card-header">
								<h4 class="card-title">배점 정보</h4>
							</div>
							<div class="card-body">

								<table class="table text-center">
									<thead class=" text-primary">
										<tr>
											<th>시험번호</th>
											<th>출결배점</th>
											<th>필기배점</th>
											<th>실기배점</th>
											<th>시험일자</th>
											<th>시험문제</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="m" items="${point}">
										<tr>
											<td>${m.ex_id}</td>
											<td>${m.absence_point}</td>
											<td>${m.writtenExam_point}</td>
											<td>${m.practical_point}</td>
											<td>${m.ex_date}</td>
											<td><a href="">${m.question}</a></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">수강생 성적 정보</h4>
							</div>
							<div class="card-body">

								<table class="table text-center">
									<thead class=" text-primary">
										<tr>
											<th>수강생<br>번호
											</th>
											<th>이름</th>
											<th>전화번호</th>
											<th>수료<br>(예정)<br>/중도탈락
											</th>
											<th>수료<br>(예정)<br>/중도탈락일
											</th>
											<th>출결<br>점수</th>
											<th>필기<br>점수</th>
											<th>실기<br>점수</th>
											<th>총점</th>
											<th>성적<br>입력/삭제</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="m" items="${gList}">
										<tr>
											<td>${m.student_id}</td>
											<td>
											<a href="#" title="백규현" data-toggle="popover" data-placement="bottom" data-html="true"
                                                data-content='<img src="${pageContext.request.contextPath}/resources/img/header.jpg"><div class="text-center">백규현</div>'>
                                                   	${m.student_name}</a>
											</td>
											<td>${m.student_phone}</td>
											<td>${m.status_}</td>
											<td>${m.end_date}</td>
											<td>${m.absence_grade}</td>
											<td>${m.writtenExam_grade}</td>
											<td>${m.practical_grade}</td>
											<td>${m.total}</td>
											<td>
												<button type="button" class="btn btn-default btn-icon btnDel"
                                            data-toggle="modal" data-target="#insert" title="입력">
                                           <i class="fa fa-plus"></i></button>
												<button type="button" class="btn btn-default btn-icon btnDel"
                                            data-toggle="modal" data-target="#delete" title="삭제">
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
				</div>
			</div>
			<footer class="footer footer-black  footer-white "> </footer>
		</div>
	</div>

	<div id="insert" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">성적 정보 입력</h5>
				</div>
				<div class="modal-body">


					<form action="" method="post">

						<div class="form-group">
							<label for="id">이름:</label> <input type="text"
								class="form-control" id="name_" name="name_" readonly="readonly"
								placeholder="백규현" required>
						</div>
						<div class="form-group">
							<label for="pw">수강생번호:</label> <input type="text"
								class="form-control" id="stuNum" name="stuNum"
								readonly="readonly" placeholder="S04" required>
						</div>
						<div class="form-group">
							<label for="pw">출결배점:</label> <input type="number"
								class="form-control" id="ap" name="ap" placeholder="max 20"
								required>
						</div>
						<div class="form-group">
							<label for="pw">필기배점:</label> <input type="number"
								class="form-control" id="wp" name="wp" placeholder="max 40"
								required>
						</div>
						<div class="form-group">
							<label for="pw">실기배점:</label> <input type="number"
								class="form-control" id="pp" name="pp" placeholder="max 40"
								required>
						</div>


					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
				</div>
			</div>

		</div>
	</div>


	<div id="delete" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">성적 정보 삭제</h5>
				</div>
				<div class="modal-body">
					<b>S04 (백규현)</b>
					<p>성적 정보를 삭제하시겠습니까?</p>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">CANCEL</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
				</div>
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
				trigger : "hover"
			});
		});
	</script>
</body>

</html>