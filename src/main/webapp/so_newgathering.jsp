<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<link href="../common/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
.container-fluid {
	padding-left: 0px;
	padding-right: 0px;
}

hr {
	border: solid 0.05rem rgb(165, 165, 165);
}
</style>
</head>
<body class="">
	<!-- 상단 head 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12">
				<h5 class="">
					<a href="http://70.12.115.80:8088/serverweb/project/homeupside4.jsp"><img id=minilogo alt="" src="http://70.12.115.80:8088/serverweb/projectimages/damoimlogo.png" style="width: 80px; height: 50px;">다모임</a>
				</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-12">
				<h1 class="display-2" style="text-align: center;">
					<img alt="" style="width: 12%;" src="./images/brush.png">스윗드로잉
				</h1>
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-xl-9"></div>
			<div class="col-xl-3">
				<ul class="nav nav-pills">
					<li class="nav-item" style="width: 33.3%; text-align: center;"><a href="http://70.12.224.117:8088/damoim/html/home.jsp" class="active nav-link">홈</a></li>
					<li class="nav-item" style="width: 33.3%; text-align: center;"><a href="http://70.12.224.117:8088/damoim/html/board.jsp" class="nav-link">게시판</a></li>
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
							<img class="d-block img-fluid w-100" src="./images/5.jpg">
							<div class="carousel-caption">
								<h5 class="m-0">Carousel</h5>
								<p>with indicators</p>
							</div>
						</div>
						<div class="carousel-item ">
							<img class="d-block img-fluid w-100" src="./images/5.jpg">
							<div class="carousel-caption">
								<h5 class="m-0">Carousel</h5>
								<p>with indicators</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid w-100" src="./images/5.jpg">
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
	<br />
	<br />
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2">왼쪽 여백</div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8" style="background-color: rgb(245, 245, 245); padding: 3%;">
				<div class="row">
					<div class="col-xl-1">
						<p class="lead oi oi-check" style="color: #FF399B;"></p>
					</div>
					<div class="col-xl-2">
						<p class="lead text-right">모임이름</p>
					</div>
					<div class="col-xl-9">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="내용을 입력해주세요.">
							<small class="form-text text-muted">모임주제와 어울리는 이름으로 입력하면 많은 사람들이 모임을 찾기 쉬워집니다.</small>
						</div>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-xl-1">
						<p class="lead oi oi-check" style="color: #FF399B;"></p>
					</div>
					<div class="col-xl-2">
						<p class="lead text-right">관심사</p>
					</div>
					<div class="col-xl-3">
						<label for="sel1">관심사:</label>
						<select class="form-control" id="sel1" name="sellist1">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<div class="col-xl-1"></div>
					<div class="col-xl-3">
						<label for="sel1">세부분류:</label>
						<select class="form-control" id="sel1" name="sellist1">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<div class="col-xl-2"></div>
				</div>
				<hr />
				<div class="row">
					<div class="col-xl-1">
						<p class="lead oi oi-check" style="color: #FF399B;"></p>
					</div>
					<div class="col-xl-2">
						<p class="lead text-right">장소</p>
					</div>
					<div class="col-xl-2" style="padding-top: 3px; padding-bottom: 3px;">
						<button type="button" class="btn btn-primary" onclick="#" style="font-size: 1vmax; background-color: #FF399B; border-color: #FF399B;">찾기</button>
					</div>
					<div class="col-xl-7">
						<input type="text" class="form-control" value="" readonly>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-xl-3">
						<p class="lead text-right">이름사용여부</p>
					</div>
					<div class="col-xl-9">
						<div class="form-check">
							<label class="form-check-label">
								<input type="radio" class="form-check-input" name="optradio">
								이름사용
							</label>
						</div>
						<div class="form-check">
							<label class="form-check-label">
								<input type="radio" class="form-check-input" name="optradio">
								별명사용
							</label>
						</div>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-xl-3">
						<p class="lead text-right">검색키워드</p>
					</div>
					<div class="col-xl-9">
						<div class="form-check">
							<label class="form-check-label">
								<input type="radio" class="form-check-input" name="optradio">
								이름사용
							</label>
						</div>
						<div class="form-check">
							<label class="form-check-label">
								<input type="radio" class="form-check-input" name="optradio">
								별명사용
							</label>
						</div>
					</div>
				</div>
				<hr />
			</div>
			<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
			<div class="col-xl-2">오른쪽 여백</div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
	<br />
	<br />
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12" style="background-color: black; height: 200px;">상단 head</div>
		</div>
	</div>
</body>
</html>