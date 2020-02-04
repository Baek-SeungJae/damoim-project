<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style type="text/css">
.container-fluid{
	padding-left: 0px;
	padding-right: 0px;
}
</style>
</head>
<body class="">
	<% String gath_no = (String)request.getParameter("gath_no");%>
	<!-- 상단 head 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12">
				<h5 class="">
					<a href=""><img id=minilogo alt="" src="/damoim/images/damoimlogo.png" style="width: 80px; height: 50px;">다모임</a>
				</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-12">
				<h1 class="display-2" style="text-align: center;">
					<img alt="" style="width: 12%;" src="/damoim/gathering/images/1_title.png">스윗드로잉
				</h1>
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-xl-9"></div>
			<div class="col-xl-3">
				<ul class="nav nav-pills">
					<li class="nav-item" style="width: 33.3%; text-align: center;"><a href="/damoim/gathering/home.do?gath_no=<%=gath_no %>" class="nav-link">홈</a></li>
					<li class="nav-item" style="width: 33.3%; text-align: center;"><a href="/damoim/gathering/board.do?gath_no=<%=gath_no %>&board_bno=<%="B02" %>" class="nav-link">게시판</a></li>
					<li class="nav-item" style="width: 33.3%; text-align: center;"><a href="http://70.12.230.200:8088/damoim/NewStart/main.html" class="nav-link">일정</a></li>
				</ul>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col-xl-12">
				<div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" style="height: 300px;">
						<div class="carousel-item active">
							<img class="d-block img-fluid w-100" src="/damoim/gathering/images/1_carousel_1.jpg">
							<div class="carousel-caption">
								<h5 class="m-0">Carousel</h5>
								<p>with indicators</p>
							</div>
						</div>
						<div class="carousel-item ">
							<img class="d-block img-fluid w-100" src="/damoim/gathering/images/1_carousel_1.jpg">
							<div class="carousel-caption">
								<h5 class="m-0">Carousel</h5>
								<p>with indicators</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid w-100" src="/damoim/gathering/images/1_carousel_1.jpg">
							<div class="carousel-caption">
								<h5 class="m-0">Carousel</h5>
								<p>with indicators</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 상단 head 끝 -->
	</body>
</html>