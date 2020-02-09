<%@page import="gathering.info.GatheringInfoVO"%>
<%@page import="member.MemberVO"%>
<%@page import="gathering.join.ScheduleJoinVO"%>
<%@page import="java.util.List"%>
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
		('fonts/NanumGothic.woff') format(‘woff’),
		url('fonts/NanumGothic.ttf') format('truetype'),
		url('fonts/NanumGothic.svg') format('svg');
	src: local(※), url(NanumGothic.woff) format(‘woff’);
}

body {
	font-family: '나눔고딕', 'NanumGothic';
}

.card {
	width: 85%;
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
	width: 85%;
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
	font-size: 29px;
	font-weight: 500;
	padding-left: 10px;
	width: 120%;
	height: 120px;
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
	height: 29%;
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
	height: 79.5%;
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
	height:40px;
	border-radius: 5px 5px 5px 5px;
	cursor: default;
	background-color: white;
	border: solid 1.2px;
	margin-bottom: 25px;
	font-size: 26px;
	box-shadow: 2px 2px 2px 2px #999;
	cursor: pointer;
}
#create_btn_cal{
	text-align: center;
	width: 80%;
	height:40px;
	border-radius: 5px 5px 6px 0;
	cursor: default;
	background-color: white;
	border: solid 1.2px;
	margin-bottom: 25px;
	font-size: 26px;
	box-shadow: 2px 2px 2px 2px #999;
	cursor: pointer;
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
.btn-secondary {
	color: #fff;
	background-color: #3AC47D;
	border-color: #3AC47D;
	width: 200px;
	height: 41px;
	float: right;
	box-shadow: 0 0.125rem 0.625rem rgba(58, 196, 125, 0.4), 0 0.0625rem
		0.125rem rgba(58, 196, 125, 0.5);
	padding: .5rem 2rem;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	user-select: none;
	border: 1px solid transparent;
}

.btn {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	vertical-align: middle;
	user-select: none;
	border: 1px solid transparent;
	padding: .375rem .75rem;
	font-size: 1.25rem;
	line-height: 1;
	border-radius: .3rem;
	transition: color .15s, background-color .15s, border-color .15s,
		box-shadow .15s;
	margin-right: 80px;
	margin-bottom: 5px;
}
</style>
</head>
<body class="" onload="startTime()">
	<% List<ScheduleRegisterVO> moimlist = (List<ScheduleRegisterVO>)request.getAttribute("moim"); %> <!-- 모임 리스트 -->
	<% List<MemberVO> ranklist = (List<MemberVO>)request.getAttribute("list"); %> <!-- 멤버 랭킹 리스트 -->
	
	<% GatheringInfoVO gathering =(GatheringInfoVO)request.getAttribute("gathering");%> <!-- 모임정보 받아오는 -->
	<% MemberVO member = (MemberVO)request.getAttribute("member"); %> <!-- 멤버 정보(mem_id 받아오는) -->
	
	<% MemberVO user = (MemberVO)session.getAttribute("user"); %> <!-- 세션 받아오는 -->
	<% if(user!=null)request.setAttribute("sche_mem_mno", user.getMem_id());  %>

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
					<div class="col-xl-9">
					<a href="/damoim/gathering/sch_calendar.do?gath_no=<%=gathering.getGath_no() %>"
							onclick="window.open(this.href, '_blank', 'width=1400px,height=800px,toolbars=no,scrollbars=no'); return false;"><button
								id="create_btn_cal" type="submit">~~~~~~달력보시려면클릭하세요~~~~~</button></a>
					</div>
					<div class="col-xl-3">

						<% //로그인 성공한 사용자에게 보여줄 컨텐츠
					if(user!=null){ %>
						<a href="/damoim/gathering/sch_create.do?gath_no=<%=gathering.getGath_no() %>"
							onclick="window.open(this.href, '_blank', 'width=1150px,height=750px,toolbars=no,scrollbars=no'); return false;"><button
								id="create_btn" type="submit">모임생성</button></a>
						<% //로그인 안한 사용자에게 보여줄 컨텐츠
							}else{ %> <a href="/damoim/member/login.do">
							<button id="create_btn" type="submit">login먼저하셈ㅋ</button></a>
							<% } %>

					</div>
				</div>

				<br />

				<div>
					<h1 class="table-header">
						UPCOMING <span class="table-header_sub">EVENT</span>
					</h1>
					<div>
						<a
										href="/damoim/gathering/sch_moimAll.do?gath_no=<%=gathering.getGath_no() %>"
										onclick="window.open(this.href, '_blank', 'width=1500px,height=1000px,toolbars=no,scrollbars=no'); return false;">
										<button type="submit" class="btn btn-secondary">전체모임보기</button></a>
					</div>
				</div>
				<form action="/damoim/gathering/sch_join.do" method="post">
						<input type="hidden" name="gath_no" value="<%= gathering.getGath_no() %>"/>
					<div class="card-container">
						
						<br />
						<%
						if(moimlist.size()!=0){
						for(int i=0; i<2; i++){
							ScheduleRegisterVO row = moimlist.get(i);
						%>
						
						<div class="card-wrap">
							<div class="card">
								<div class="event"
									style="visibility: visible; animation-name: slideInUp;">
									<h2 class="date-header">
											<%= row.getSche_date()%> <span class="date-header_sub"> <%=row.getSche_date() %></span>
										</h2>
									<div class="place-header">
										<div>
											<a href="http://www.google.com" target="_blank"> <i
												class="fas fa-map-marker-alt"></i> <%=row.getSche_loc() %>
											</a><span class="place-header_sub"><%=row.getSche_fee() %>원</span>
										</div>

										<br /> <span style="font-size: 20px; font-weight: 300;">
											<%=row.getSche_context() %></span>
											
										

										<div class="row">
											<div class="col-xl-9"></div>
											<div class="col-xl-3">
												
												
												<a href="혜란님 페이지 주소"><button type="submit"
														class="btn-join" >참석하기~</button></a>
														
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br />
							<% 	
									}
						}
								%>
						
					</div>
				</form>
				<div>
					<h1 class="table-header">
						우수 <span class="table-header_sub">참석왕</span>
					</h1>
				</div>
			
				<form action="/gathering/sch_rank.do" method="post">
				<div class="rank-bottom">
					<div class="rank">
						<div class="rank-header">
							<% MemberVO rowlist = ranklist.get(0); %>
							<div class="rank-icon">
								<div class="icon">
									<a href="http://www.google.com" target="_blank"><img
										src="<%= rowlist.getMem_profile() %>"
										class="human1"></a>
								</div>
							</div>

							<div class="rank-header-main">
								<h5 class="rank-main-header"><%=rowlist.getMem_name() %></h5>
								<h6 class="rank-header-main-sub"><%=rowlist.getMem_msg() %></h6>
							</div>
						</div>
						
						<div class="rank-main">
							<h6 class="rank-main-title">활동 우수자</h6>
							<hr />
							<ul class="myList">
							<%
							if(ranklist.size()!=0){
							for(int i=1; i<6; i++){
								rowlist = ranklist.get(i);
							
							%>
								<li>
									<div class="row">
										<div class="col-md-4">
											<a href="http://www.google.com" target="_blank"><img
												src="<%=rowlist.getMem_profile() %>"
												class="human2"></a>
										</div>
										<div class="col-md-8" id="mypro">
											<h4><%=rowlist.getMem_name() %></h4>
											<h5><%=rowlist.getMem_msg() %></h5>
										</div>
									</div>
								</li>
								<br/>
								<% }} %>
								<br/>
							</ul>
						</div>
						<div class="rank-footer"></div>
					</div>
				</div>
				</form>
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