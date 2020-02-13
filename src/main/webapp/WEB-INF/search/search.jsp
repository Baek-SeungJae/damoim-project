<%@page import="interest.interest_majorVO"%>
<%@page import="gathering.info.GatheringInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>
<body>
	<%List<GatheringInfoVO> searchlist = (List<GatheringInfoVO>)request.getAttribute("searchList"); %>
	<% List<interest_majorVO> majorlist = (List<interest_majorVO>) request.getAttribute("majorlist");%> 
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form class="form-inline" action="/damoim/search/search.do" method="post">
					<div class="input-group">
						<input type="text" class="form-control" name="gath_major" placeholder="검색어 입력 또는 선택">
						<div class="input-group-append">
							<button class="btn btn-primary" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
<%-- 		<%
			int size = majorlist.size();
			int start = 0;
			for (int i = start; i < size; ++i) {
		%>
		<div class="my-2">
			<div class="container">
				<div class="row">
					<%
						for (int j = 0; j < 3; ++j) {
								if(start == size){
									break;
								}
								interest_majorVO major = majorlist.get(start);
								++start;
					%>
					<div class="col-md-4">
						<label><input type="checkbox" name="mem_mjno"
							value=<%=major.getMajor_mjno()%>> <%=major.getMajor_name()%></label>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<%
			}
		%> --%>
	
				<div class="py-5 bg-primary">
					<div class="container">
						<div class="row">
							<div class="p-4 col-lg-8">
							<% if(searchlist != null) {
							for(int i=0; i<searchlist.size();i++){
								GatheringInfoVO con = searchlist.get(i); 
								%>
							
								<h4 class="mb-3 text-white"><%=con.getGath_name() %></h4>
								<div class="blockquote text-muted">
									<p class="mb-0"><%=con.getGath_info() %></p>
									<p class="mb-0"><%=con.getGath_intro() %></p>
									<div class="blockquote-footer"></div>
								</div>
								<a class="btn btn-info" href="/damoim/gathering/home.do?gath_no=<%=con.getGath_no()%>">참가하기 </a>
							</div>
							<div class="col-md-4 align-self-center">
								<img class="img-fluid d-block" src="/damoim/gathering/images/<%= con.getGath_no() %>_main.png">
								<%} 
								}%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>