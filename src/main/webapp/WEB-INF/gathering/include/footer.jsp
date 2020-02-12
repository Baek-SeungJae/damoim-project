<%@page import="gathering.info.GatheringInfoVO"%>
<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/damoim/static/common/damoim.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style type="text/css">
</style>
</head>
<body class="">
<% MemberVO user = (MemberVO)session.getAttribute("user"); %>
<% GatheringInfoVO gathering = (GatheringInfoVO)request.getAttribute("gathering"); %>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12" style="background-color: black; height: 200px;">
				<div class="row">
					<div class="col-xl-1"></div>
					<div class="col-xl-3">
						<p> </p>
						<p> </p>
						<p> </p>
						<p style="color:white;"><%=gathering.getGath_major() %></p>
						<p style="color:white;"><%=gathering.getGath_opendate() %></p>
						<p style="color:white;"><%=gathering.getGath_chat() %></p>
					</div>
					<div class="col-xl-1"></div>
					<div class="col-xl-3"></div>
					<div class="col-xl-1"></div>
					<div class="col-xl-3"></div>
					<div class="col-xl-1"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>