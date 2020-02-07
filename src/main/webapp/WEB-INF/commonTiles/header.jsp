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
</style>
</head>

<body>
	<%	// session(or request)은 컨테이너가 기본으로 만들어주는 변수
	MemberVO user = (MemberVO)session.getAttribute("user"); %>
	<div class="py-5" style="">
		<div class="container">
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
						<img alt="" src="../static/images/damoimlogo.png">다모임
					</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1"></div>
				<div class="col-md-1">
				<%  // 처음 접속한 사용자에게 보여줄 컨텐츠
						if(user == null){ %>
					<img alt=""
						src="./images/saramicon.jpeg" width=50px; height=30px;>
				</div>
				<div class="col-md-1">
					<a href="/damoim/member/login.do">로그인</a>
				</div>
				
				<%	// 로그인 성공한 사용자에게 보여줄 컨텐츠
						}else{ %>
				<!-- logout과 프로필사진은 로그인이 된 후에만 처리되어야 한다.  -->
				<a href="/damoim/member/mypage"><img class="img-circle"
						src="/member/images/<%= user.getMem_profile() %>" width=50px; height=30px;></a>
				<div class="col-md-1">
					<a href="/damoim/member/logout.do">로그아웃</a>
				</div>
				
			<%} %>
				<div class="col-md-1">
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
					<li class="nav-item"><a href="./bigmain.jsp"
						class="active nav-link">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="#">별점순</a></li>
					<li class="nav-item"><a href="#" class="nav-link disabled">조회수순</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link disabled">회원수순</a>
					</li>
					<li class="nav-item"><a href="#" class="nav-link disabled">회원수순</a>
					</li>
				</ul>
				<div class="col-md-2"></div>
			</div>