<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<style type="text/css">
/* @media (min-width: 1200px) */
.container {
	max-width: 100%;
}

.container {
	width: 100%;
	padding-right: 0;
	padding-left: 0;
	margin-right: 0;
	margin-left: 0;
}

h1 {
	text-align: center;
}

h5 {
	color: green;
}
:root{
--primary: #FF399B;
}
.btn-primary {
background-color: #FF399B;
border-color: #FF399B;
}
.btn-primary.disabled, .btn-primary:disabled{
background-color: #FF399B;
border-color: #FF399B;
}
.btn-outline-primary {
color: #FF399B;
border-color: #FF399B;
}
.btn-outline-primary:hover{
background-color: #FF399B;
border-color: #FF399B;
}
.btn-outline-primary.disabled, .btn-outline-primary:disabled {
color: #FF399B;
}
.show > .btn-outline-primary.dropdown-toggle {
background-color: #FF399B;
border-color: #FF399B;
}
.dropdown-item.active, .dropdown-item:active {
background-color: #FF399B;
}
.custom-control-input:checked ~ .custom-control-label::before {
border-color: #FF399B;
background-color: #FF399B;
}
.custom-checkbox .custom-control-input:indeterminate ~ .custom-control-label::before {
border-color: #FF399B;
background-color: #FF399B;
}
.custom-range::-webkit-slider-thumb {
background-color: #FF399B;
}
.custom-range::-moz-range-thumb{
background-color: #FF399B;
}
.custom-range::-ms-thumb{
background-color: #FF399B;
}
.nav-pills .show > .nav-link {
background-color: #FF399B;
}
.page-item.active .page-link{
background-color: #FF399B;
border-color: #FF399B;
}
.badge-primary{
background-color: #FF399B;
}
.progress-bar{
background-color: #FF399B;
}
.list-group-item.active{
background-color: #FF399B;
border-color: #FF399B;
}
.bg-primary{
background-color: #FF399B !important;
}
.border-primary{
border-color: #FF399B !important;
}
.text-primary{
color: #FF399B !important;
}
</style>
</head>

<body>
	<%	// session(or request)은 컨테이너가 기본으로 만들어주는 변수
	MemberVO user = (MemberVO)session.getAttribute("user"); %>
			<div class="row">
				<div class="col-md-12">
					<h5 class="">
						<a href="/damoim/member/guide">다모임가이드</a>
					</h5>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h1 class="display-2">
						<a href="/damoim/main/home.do"><img alt="" src="../static/images/damoimlogo.png">다모임</a>
					</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6"></div>
				<%  // 처음 접속한 사용자에게 보여줄 컨텐츠
						if(user == null){ %>
				<div class="col-md-2">
					<img alt=""
						src="./images/saramicon.jpeg" width=50px; height=30px;>
				</div>
				<div class="col-md-2">
					<a href="/damoim/member/login.do">로그인</a>
				</div>
				
				<%	// 로그인 성공한 사용자에게 보여줄 컨텐츠
						}else{ %>
				<!-- logout과 프로필사진은 로그인이 된 후에만 처리되어야 한다.  -->
				<div class="col-md-2">
				<a href="/damoim/member/mypage"><img class="img-circle"
						src="/member/images/<%= user.getMem_profile() %>" width=50px; height=30px;></a>
						</div>
				<div class="col-md-2">
					<a href="/damoim/member/logout.do">로그아웃</a>
				</div>
				
			<%} %>
				<div class="col-md-2">
					<a href="/damoim/member/reg.do">회원가입</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2"></div>
				<ul class="nav nav-pills">
					<li class="nav-item"><a href="/damoim/main/home.do" class="active nav-link">홈</a></li>
					<%  // 처음 접속한 사용자에게 보여줄 컨텐츠
						if(user == null){ %>	
						<li class="nav-item"><a class="nav-link" href="#">별점순</a></li>
					<%	// 로그인 성공한 사용자에게 보여줄 컨텐츠
						}else{ %>
						<li class="nav-item"><a class="nav-link" href="/damoim/myhome/myhome.do">내모임</a>
					</li>
					<%} %>
					
					<li class="nav-item"><a href="#" class="nav-link disabled">조회수순</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link disabled">회원수순</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link disabled">회원수순</a>
					</li>
				</ul>
				<div class="col-md-2"></div>
				<form class="form-inline" action="/damoim/search/search.do" method="post">
					<div class="input-group">
						<input type="text" class="form-control" name="gath_major" placeholder="대분류">
						<div class="input-group-append">
							<button class="btn btn-primary" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					<div class="input-group">
						<input type="text" class="form-control" name="gath_minor" placeholder="소분류">
						<div class="input-group-append">
							<button class="btn btn-primary" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>