<%@page import="gathering.schedule.ScheduleRegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/cfae7cf239.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<style>
@font-face {
	font-family: 'NanumGothic';
	src: url('fonts/NanumGothic.eot');
	src: url('fonts/NanumGothic.eot?#iefix') format(‘embedded-opentype’),
		url('fonts/NanumGothic.woff') format(‘woff’),
		url('fonts/NanumGothic.ttf') format('truetype'),
		url('fonts/NanumGothic.svg') format('svg');
	src: local(※), url(NanumGothic.woff) format(‘woff’);
}

body {
	font-family: '나눔고딕', 'NanumGothic';
}

.card {
	width: 80%;
	margin: 0 auto;
}

.table-header {
	margin-left: 30px;
	margin-top: 5px;
	font-size: 58px;
	font-weight: bolder;
	color: #E76642;
}

.table-header_sub {
	width: 80%;
	margin: 0 auto;
	font-size: 36px;
	font-weight: 400px;
	color: #7C7C7C;
}

.date-header {
	width: 80%;
	margin: 0 auto;
	font-size: 32px;
	font-weight: 600;
	line-height: 26px;
	letter-spacing: 0;
	margin-bottom: 18px;
	text-transform: uppercase;
}

.date-header_sub {
	width: 80%;
	margin: 0 auto;
	font-size: 24px;
	font-weight: 300;
	padding-left: 30px;
}

.place-header {
	width: 80%;
	margin: 0 auto;
	font-size: 32px;
	font-weight: 600;
}

.place-header_sub {
	width: 80%;
	margin: 0 auto;
	font-size: 27px;
	font-weight: 400;
	padding-left: 30px;
}

.rank {
	width: 80%;
	margin: 0 auto;
}

.rank-header {
	height: 235px;
	background-color: #343A40;
	color: white;
	text-align: center;
	border-radius: 5px;
	border-width: 2px;
	border-style: outset;
}

.rank-main-header {
	margin-top: 5px;
	font-size: 27px;
	font-weight: bolder;
}

.rank-icon {
	padding-top: 9px;
}

.rank-main {
	background-color: #A3A3A3;
	color: black;
	text-align: left;
	border-radius: 6px;
	border-width: 3px;
	border-style: outset;
}

.rank-footer {
	height: 70px;
	text-align: center;
	background-color: #E3E3E3;
}

.btn-icon {
	background-color: #17A2B8;
	margin-bottom: 20px;
}

.rank-bottom {
	border-radius: 6px;
	width: 90%;
	background-color: #E3E3E3;
	margin: 0 auto;
	box-shadow: 2px 2px 2px 2px #999;
	background-color: #E3E3E3;
}

.rank-main-title {
	padding-top: 20px;
	margin-left: 10px;
	font-size: 19px;
}

.list {
	font-weight: 500;
	list-style: none;
}

.card {
	margin-top: 20px;
	background-size: 385px auto !important;
	background-position: right -204px bottom -9px;
	padding: 30px 15px;
	margin: 15px 0;
	margin-left: 15px;
	visibility: visible;
	animation-name: slideInUp;
	border-radius: 10px;
	border-style: outset;
	border-width: 1.5px;
	background-color: lightgray;
}

.card-wrap {
	width: 78%;
	margin: 0 auto;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	border-radius: 5px;
	border-style: outset;
	border-width: 2px;
	box-shadow: 3px 3px 3px 3px #999;
	background: repeating-linear-gradient(-45deg, #444, #444 10px, #888 0, #888 20px);
}

.card-container {
	margin-top: 20px;
	width: 100%;
	height: 33%;
	max-width: 1340px;
	margin: 0 auto;
	box-sizing: border-box;
	max-width: 1340px;
}

.btn-join {
	display: flex;
	box-sizing: border-box;
	text-align: center;
	height: 100px;
	font-size: 23px;
	font-weight: 500;
	padding-left: 10px;
	width: 100%;
	border-radius: 8px;
}

.fas {
	width: 40px;
	heigth: 40px;
}

.container-calendar {
	margin: 0;
	/* background-color: #010712;
	background-image:
		url(https://static.pexels.com/photos/1526/dark-blur-blurred-gradient.jpg);
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat; */
	height: 35%;
	width: 100%;
}

.container-cal {
	width: 100%;
	height: 100%;
	position: relative;
	perspective: 1000px;
	margin: 0 auto;
	/* left: calc(15% - 2px);
	top: calc(10vh - 20px); */
}

.card_cal {
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	transition: transform 1s ease;
	cursor: pointer;
}

.back, .front {
	border-radius: 6px;
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
}

.contentfront {
	width: 100%;
	height: 102%;
	float: left;
	transform: translatez(60px);
	backface-visibility: hidden;
	transform-style: preserve-3d;
}

.contentback {
	width: 100%;
	height: 100%;
	float: left;
	transform: translatez(-60px);
	backface-visibility: hidden;
	transform-style: preserve-3d;
}

.back {
	transform: rotateY(180deg);
	background-color: #232227;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden;
}

.front {
	text-transform: uppercase;
	background-color: #232227;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden;
}

.date {
	height: 80.7%;
	width: 20%;
	float: right;
	background-color: #E76642;
	border-radius: 0 0 6px 0;
	text-align: right;
	padding: 10px 30px;
	box-sizing: border-box;
	transform-style: preserve-3d;
}

.datecont {
	height: 100%;
	transform: translatez(60px) scale(.9);
}

#date {
	font-size: 80px;
	color: #ECECE7;
	font-family: 'Montserrat', sans-serif;
	font-weight: 500;
	float: right;
}

#day {
	float: right;
	font-size: 30px;
	color: #232227;
	font-family: 'Montserrat', sans-serif;
	font-weight: 600;
}

#month {
	float: right;
	font-size: 22.5px;
	color: #232227;
	font-family: 'Montserrat', sans-serif;
	font-weight: 420;
}

.date i {
	color: #ECECE7;
	position: absolute;
	bottom: 10px;
	right: 0;
}

.date i:hover {
	color: #232227;
	transition: .3s ease;
}

.month {
	height: 100px;
	width: 75%;
	float: left;
	padding: 20px 30px;
	box-sizing: border-box;
	margin: 0 auto;
	margin-left: 8px;
}

.month table {
	width: 107%;
	height: 60%;
	text-align: center;
}

.orangeTr {
	color: #E76642;
}

.whiteTr {
	color: #ECECE7;
}

.whiteTr th:hover {
	color: #E76642;
	transition: .3s ease;
}

.month tr {
	height: 84px;
}

.month th {
	width: 14%;
	font-size: 32px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 510;
}

.flipped {
	transform: rotateY(-180deg);
	/*height:400px;
  width:200px;
  left:calc(50% - 100px);
  top:calc(50vh - 200px);*/
}

.backcontainer {
	backface-visibility: hidden;
	transform-style: preserve-3d;
	width: calc(100% - 60px);
	height: calc(100% - 40px);
	float: left;
	margin-left: 30px;
	margin-top: 20px;
	border-left: solid lightgray 5px;
	background-color: lightgray;
	transform: translatez(-60px) scale();
}

#create_btn {
	text-align: center;
	width: 100%;
	border-radius: 5px 5px 6px 0;
	cursor: default;
	background-color: white;
	border: solid 1.2px;
	margin-bottom: 20px;
}

a.create_link:active {
	width: 200px;
	height: 100px;
	background-color: #FFF;
	cursor: default;
}

.create_button_text {
	width: 100px;
	height: 60px;
	color: #ECECE7;
	font-size: 27px;
	font-style: inherit;
	color: #ECECE7;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

.year {
	width: 100%;
	margin: 0 auto;
	height: 130px;
	background-color: #FF8B51;
	text-align: center;
	border-radius: 6px 6px 0 0;
}

.calrow {
	font-size: 40px;
	padding-top: 21px;
	border-radius: 6px 6px 0 0;
}

#btnPrev, #btnNext {
	width: 70px;
	height: 60px;
	font-size: 40px;
	font-weight: 500;
	background-color: lightgray;
}

.menubar {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 28px;
	font-weight: 700;
	color: white;
	padding-left: 20px;
	margin-top: 10px;
}

.menubar ul {
	background: #FF8B51;
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: #FF8B51;
	color: white;
	display: block;
	font-size: 39px;
	font-weight: 450;
	line-height: 50px;
	margin: 0px;
	margin-top: 5px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: #FF8B51;
	display: none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: rgb(109, 109, 109);
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 14px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}

.menubar p {
	clear: left;
}

.menubar_top {
	border-radius: 6px 6px 0 0;
	width: 100%;
	height: 17px;
	background-color: #232227;
	float: right;
}

.human1 {
	width: 25.5%;
}

.human2 {
	width: 50%;
}

.col-md-6 {
	float: left;
}

#mypro {
	text-align: left;
	width: 500px;
	margin-top: 32px;
	margin-left: 0px;
}

.rank-list {
	width: 50%;
	/*display:inline;*/
}

ul.myList li {
	/* float: left; */
	list-style: none;
}
</style>
</head>
<body class="" onload="startTime()">
	<%-- <% ScheduleRegisterVO user = (ScheduleReigsterVO)session.getAttribute("user"); %> --%>
	<%-- <% ArrayList<ScheduleRegisterVO> list = (ArrayList<ScheduleRegisterVO>)request.getAttribute("scheduleRegister"); %> --%>
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2">왼쪽 여백</div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8">
				<h1 class="table-header">
					THIS <span class="table-header_sub">EVENT</span>
				</h1>
				<div class="row">
					<div class="col-xl-9"></div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/sch_create.do"
							onclick="window.open(this.href, '_blank', 'width=1100px,height=600px,toolbars=no,scrollbars=no'); return false;"><button
								id="create_btn" type="submit">모임생성</button></a>
					</div>
				</div>

				<div class="container-calendar">
					<div class="container-cal">
						<div class="card_cal">
							<div class="front">
								<div class="contentfront">
									<div class="year">
										<div class="menubar_top"></div>
										<div class="calrow">
											<div class="menubar">
												<ul>
													<li><a href="#" id="Y">2020</a>
														<ul>
															<li><a href="#">2018</a></li>
															<li><a href="#">2019</a></li>
															<li><a href="#">2020</a></li>
														</ul></li>

													<li><a href="#" id="M">02</a>
														<ul>
															<li><a href="#">01</a></li>
															<li><a href="#">02</a></li>
															<li><a href="#">03</a></li>
															<li><a href="#">04</a></li>
															<li><a href="#">05</a></li>
															<li><a href="#">06</a></li>
															<li><a href="#">07</a></li>
															<li><a href="#">08</a></li>
															<li><a href="#">09</a></li>
															<li><a href="#">10</a></li>
															<li><a href="#">11</a></li>
															<li><a href="#">12</a></li>

														</ul></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="month">
										<table>
											<tr class="orangeTr">
												<th>M</th>
												<th>T</th>
												<th>W</th>
												<th>T</th>
												<th>F</th>
												<th>S</th>
												<th>S</th>
											</tr>
											<tr class="whiteTr">
												<th></th>
												<th>1</th>
												<th>2</th>
												<th>3</th>
												<th>4</th>
												<th>5</th>
												<th>6</th>
											</tr>
											<tr class="whiteTr">
												<th>7</th>
												<th>8</th>
												<th>9</th>
												<th>10</th>
												<th>11</th>
												<th>12</th>
												<th>13</th>
											</tr>
											<tr class="whiteTr">
												<th>14</th>
												<th>15</th>
												<th>16</th>
												<th>17</th>
												<th>18</th>
												<th>19</th>
												<th>20</th>
											</tr>
											<tr class="whiteTr">
												<th>21</th>
												<th>22</th>
												<th>23</th>
												<th>24</th>
												<th>25</th>
												<th>26</th>
												<th>27</th>
											</tr>
											<tr class="whiteTr">
												<th>28</th>
												<th>29</th>
												<th>30</th>
												<th>31</th>
												<th></th>
												<th></th>
												<th></th>
											</tr>
										</table>
									</div>
									<div class="date">
										<div class="datecont">
											<div id="date"></div>
											<div id="day"></div>
											<div id="month"></div>
										</div>

									</div>
								</div>
							</div>
							<div class="back">
								<div class="contentback">
									<div class="backcontainer">
										<div
											style="font-size: 50px; text-align: center; margin: 0 auto;">
											일정을 추가해보세요 ~</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<script type="text/javascript">
					let cardElement = document.querySelector(".card_cal");

					cardElement.addEventListener("click", flip);

					function flip() {
						cardElement.classList.toggle("flipped")
					}

					function startTime() {
						var weekday = new Array();
						weekday[0] = "Sunday";
						weekday[1] = "Monday";
						weekday[2] = "Tuesday";
						weekday[3] = "Wednesday";
						weekday[4] = "Thursday";
						weekday[5] = "Friday";
						weekday[6] = "Saturday";
						var month = new Array();
						month[0] = "January";
						month[1] = "February";
						month[2] = "March";
						month[3] = "April";
						month[4] = "May";
						month[5] = "June";
						month[6] = "July";
						month[7] = "August";
						month[8] = "September";
						month[9] = "October";
						month[10] = "November";
						month[11] = "December";
						var today = new Date();
						var h = today.getHours();
						var m = today.getMinutes();
						var s = today.getSeconds();
						var d = today.getDate();
						var y = today.getFullYear();
						var wd = weekday[today.getDay()];
						var mt = month[today.getMonth()];

						m = checkTime(m);
						s = checkTime(s);
						document.getElementById('date').innerHTML = d;
						document.getElementById('day').innerHTML = wd;
						document.getElementById('month').innerHTML = mt + "/"
								+ y;

						var t = setTimeout(startTime, 500);
					}
					function checkTime(i) {
						if (i < 10) {
							i = "0" + i
						}
						;
						return i;
					}
				</script>

				<br />

				<div>
					<h1 class="table-header">
						UPCOMING <span class="table-header_sub">EVENT</span>
					</h1>
				</div>
				<form action="/damoim/gathering/join.do">
					<div class="card-container">
						<div class="card-wrap" style="border-radius: 5px;">
							<div class="card">
								<div class="event"
									style="visibility: visible; animation-name: slideInUp;">
									<a href="/damoim/gathering/moim.do"><h2 class="date-header">
											moim.getSche_date <span class="date-header_sub">moim.getSche_date()</span>
										</h2></a>
									<div class="place-header">
										<div>
											<a href="http://www.google.com" target="_blank"> <i
												class="fas fa-map-marker-alt"></i> moim.getSche_loc()
											</a> <span class="place-header_sub">moim.getSche_fee()</span>
										</div>
										<div class="row">
											<div class="col-xl-9"></div>
											<div class="col-xl-3">
												<a href="혜란님 페이지 주소"><button type="submit"
														class="btn-join">참석하기</button></a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<br />
						<div class="card-wrap">
							<div class="card">
								<div class="event"
									style="visibility: visible; animation-name: slideInUp;">
									<div class="" style=""></div>
									<a href="/damoim/gathering/moim.do"><h2 class="date-header">
											moim.getSche_date()<span class="date-header_sub">moim.getSche_date()</span>
										</h2></a>
									<div class="place-header">
										<div>
											<a href="http://www.google.com" target="_blank"> <i
												class="fas fa-map-marker-alt"></i> moim.getSche_loc()
											</a><span class="place-header_sub">moim.getSche_fee()</span>
										</div>

										<div class="row">
											<div class="col-xl-9"></div>
											<div class="col-xl-3">
												<a href="혜란님 페이지 주소"><button type="submit"
														class="btn-join">참석하기</button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br />
					</div>
				</form>
				<div>
					<h1 class="table-header">
						우수 <span class="table-header_sub">참석왕</span>
					</h1>
				</div>
				<div class="rank-bottom">
					<div class="rank">
						<div class="rank-header">
							<div class="rank-icon">
								<div class="icon">
									<a href="http://www.google.com" target="_blank"><img
										src="/damoim/gathering/images/ksh_ranklistman_1.jpg"
										class="human1"></a>
								</div>
							</div>

							<div class="rank-header-main">
								<h5 class="rank-main-header">백승재</h5>
								<h6 class="rank-header-main-sub">최강의 3조 조장</h6>
							</div>
						</div>
						<div class="rank-main">
							<h6 class="rank-main-title">활동 우수자</h6>
							<hr />
							<ul class="myList">
								<li>
									<div class="row">
										<div class="col-md-6">
											<a href="http://www.google.com" target="_blank"><img
												src="/damoim/gathering/images/ksh_ranklistman_2.jpg"
												class="human2"></a>
										</div>
										<div class="col-md-6" id="mypro">
											<h3>김현정</h3>
											<h4>web developer</h4>
										</div>
									</div>
								</li>
								<br />
								<li>
									<div class="row">
										<div class="col-md-6">
											<a href="http://www.google.com" target="_blank"><img
												src="/damoim/gathering/images/ksh_ranklistman_3.jpg"
												class="human2"></a>
										</div>
										<div class="col-md-6" id="mypro">
											<h3>김서연</h3>
											<h4>UI Designer</h4>
										</div>
									</div>
								</li>
								<br />
								<li>
									<div class="row">
										<div class="col-md-6">
											<a href="http://www.google.com" target="_blank"><img
												src="/damoim/gathering/images/ksh_ranklistman_4.jpg"
												class="human2"></a>
										</div>
										<div class="col-md-6" id="mypro">
											<h3>신승환</h3>
											<h4>Java Programmer</h4>
										</div>
									</div>
								</li>
								<br />
								<li>
									<div class="row">
										<div class="col-md-6">
											<a href="http://www.google.com" target="_blank"><img
												src="/damoim/gathering/images/ksh_ranklistman_5.jpg"
												class="human2"></a>
										</div>
										<div class="col-md-6" id="mypro">
											<h3>곽혜란</h3>
											<h4>Group ArchitectUI</h4>
										</div>
									</div>
								</li>
								<br />
								<li>
									<div class="row">
										<div class="col-md-6">
											<a href="http://www.google.com" target="_blank"><img
												src="/damoim/gathering/images/ksh_ranklistman_6.jpg"
												class="human2"></a>
										</div>
										<div class="col-md-6" id="mypro">
											<h3>김성현</h3>
											<h4>Markets Planner</h4>
										</div>
									</div>
								</li>
								<br />
							</ul>
						</div>
						<div class="rank-footer"></div>
					</div>
				</div>
			</div>
			<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
			<div class="col-xl-2">오른쪽 여백</div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>