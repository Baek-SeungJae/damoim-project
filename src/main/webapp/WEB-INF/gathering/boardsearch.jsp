<%@page import="member.MemberVO"%>
<%@page import="gathering.info.GatheringInfoVO"%>
<%@page import="board.list.BoardListVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style type="text/css">
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
<script type="text/javascript">
	board_category = "${board_category}";
	gath_no = "${gath_no}";
	$(document)
			.ready(
					function() {
						if (board_category == "") {
							board_category = "all";
						}
						$("#board_category").val(board_category).attr(
								"selected", "selected");
						$("#board_category")
								.change(
										function() {
											location.href = "/damoim/gathering/board.do?gath_no="
													+ gath_no
													+ "&board_category="
													+ encodeURI($(this).val())
													+ "&pagenum=0";
										});
					});
</script>
</head>
<body class="">
	<%
		ArrayList<BoardListVO> list = (ArrayList<BoardListVO>) request.getAttribute("boardlist");
		int listsize = list.size();
		int articlecount = (int) request.getAttribute("boardlistcount");
		String gath_no = (String) request.getParameter("gath_no");
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		String category = request.getParameter("board_category");
		//GatheringInfoVO vo = (GatheringInfoVO) request.getAttribute("vo");
	%>
	<% MemberVO user = (MemberVO)session.getAttribute("user"); %>
	<% boolean memchk = (boolean)request.getAttribute("memchk"); %>
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2"></div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8">
				<div class="row">
					<div class="col-xl-6">
						<h1><%="게시판"%></h1>
						<br /> <select class="form-control w-50" name="board_category"
							id="board_category">
							<option value="all">전체게시물</option>
							<option value="B01">11</option>
							<option value="B02">22</option>
							<option value="B03">33</option>
						</select> <br />
					</div>
					<div class="col-xl-6"></div>
					<!-- 게시물 시작 -->
					<div class="table-responsive">
						<table class="table" style="font-size: 1vmax">
							<thead>
								<tr>
									<th width="10%" style="text-align: center">분류</th>
									<th width="50%">제목</th>
									<th width="15%" style="text-align: center">작성자</th>
									<th width="15%" style="text-align: center">작성일</th>
									<th width="10%" style="text-align: center">조회수</th>
								</tr>
							</thead>
							<tbody id="mydatalist">
								<%
									if (listsize > 10) {
										int forsize = 10 + pagenum * 10;
										if (forsize >= Math.floor(listsize)) {
											forsize = listsize;
										}
										for (int i = 0 + pagenum * 10; i < forsize; i++) {
											BoardListVO row = list.get(i);
											String path = "";
											if(user!=null){
												if(memchk){
													path = "/damoim/gathering/article.do?gath_no="+gath_no+"&board_no="+row.getBoard_no()+"&pagenum=0";
												} else {
													path = "";
												}
											} else {
												path="/damoim/member/login.do";
											}
											
								%><tr>
									<td style="text-align: center"><%=row.getBoard_category()%></td>
									<td><a href="<%=path%>"><%=row.getBoard_title()%></a></td>
									<td style="text-align: center"><%=row.getBoard_nickname()%></td>
									<td style="text-align: center"><%=row.getBoard_date()%></td>
									<td style="text-align: center"><%=row.getBoard_hit()%></td>
								</tr>
								<%
									}
									} else {
										for (int i = 0 + pagenum * 10; i < listsize; i++) {
											BoardListVO row = list.get(i);
								%><tr>
									<td style="text-align: center"><%=row.getBoard_category()%></td>
									<td><a
										href="/damoim/gathering/article.do?gath_no=<%=gath_no%>&board_no=<%=row.getBoard_no()%>&pagenum=0"
										style="color: red;"><%=row.getBoard_title()%></a></td>
									<td style="text-align: center"><%=row.getBoard_nickname()%></td>
									<td style="text-align: center"><%=row.getBoard_date()%></td>
									<td style="text-align: center"><%=row.getBoard_hit()%></td>
								</tr>
								<%
									}
									}
								%>
							</tbody>
						</table>
					</div>
					<!-- 게시물 끝 -->
					<div class="col-xl-10"></div>
					<div class="col-xl-2">
						<a class="btn btn-primary btn-block"
							href="/damoim/gathering/newarticle.do?gath_no=<%=gath_no%>&board_category=<%=category%>&state=0">글쓰기</a>
					</div>
					
					<div class="col-xl-12">
					<% if(listsize>=50){%>
					<% if(pagenum<=2){ %>
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item <%if(pagenum==0){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=0%>">1</a>
							</li>
							<li class="page-item <%if(pagenum==1){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=1%>">2</a>
							</li>
							<li class="page-item <%if(pagenum==2){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=2%>">3</a>
							</li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=3%>">4</a>
							</li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=4%>">5</a>
							</li>
							<li class="page-item"><a class="page-link" href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=5%>">Next</a>
							</li>
						</ul>
					<%} else if(pagenum>=(Math.ceil(listsize)/10.0)-3){ %>
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" 
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum-3%>">Previous</a></li>
							<li class="page-item <%if(pagenum==(int)Math.ceil(listsize/10.0)-5){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=(int)Math.ceil(listsize/10.0)-5%>"><%=(int)Math.ceil(listsize/10.0)-4%></a>
							</li>
							<li class="page-item <%if(pagenum==(int)Math.ceil(listsize/10.0)-4){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=(int)Math.ceil(listsize/10.0)-4%>"><%=(int)Math.ceil(listsize/10.0)-3%></a>
							</li>
							<li class="page-item <%if(pagenum==(int)Math.ceil(listsize/10.0)-3){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=(int)Math.ceil(listsize/10.0)-3%>"><%=(int)Math.ceil(listsize/10.0)-2%></a>
							</li>
							<li class="page-item <%if(pagenum==(int)Math.ceil(listsize/10.0)-2){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=(int)Math.ceil(listsize/10.0)-2%>"><%=(int)Math.ceil(listsize/10.0)-1%></a>
							</li>
							<li class="page-item <%if(pagenum==(int)Math.ceil(listsize/10.0)-1){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=(int)Math.ceil(listsize/10.0)-1%>"><%=(int)Math.ceil(listsize/10.0)%></a>
							</li>
							<li class="page-item disabled"><a class="page-link" 
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=5%>">Next</a>
							</li>
						</ul>
					<%} else{ %>
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" 
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum-3%>">Previous</a></li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum-2%>"><%=pagenum-1%></a>
							</li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum-1%>"><%=pagenum%></a>
							</li>
							<li class="page-item active"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum%>"><%=pagenum+1%></a>
							</li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum+1%>"><%=pagenum+2%></a>
							</li>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum+2%>"><%=pagenum+3%></a>
							</li>
							<li class="page-item"><a class="page-link" 
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=pagenum+3%>">Next</a>
							</li>
						</ul>
					<%}}else{ %>
						<ul class="pagination justify-content-center">
						<%for(int i=0; i<listsize/10+1; i++){ %>
							<li class="page-item <%if(pagenum==i){%><%="active"%><%} %>"><a class="page-link"
								href="/damoim/gathering/boardsearch.do?gath_no=G001&pagenum=<%=i%>"><%=i+1%></a>
							</li>
					<%}%></ul><%} %>
					</div>
					<div class="col-xl-2"></div>
					<div class="col-xl-8">
						<div class="row">
							<form class="form-inline" method="get" action="/damoim/gathering/boardsearch.do?">
								<input type="hidden" name="gath_no" value="<%=gath_no%>">
								<input type="hidden" name="pagenum" value="0">
								<div class="col-xl-1"></div>
								<div class="col-xl-3">
									<select class="form-control w-100" id="sel1" name="date">
										<option value = all>전체기간</option>
										<option value = day>1일</option>
										<option value = week>1주</option>
										<option value = month>1개월</option>
										<option value = halfyear>6개월</option>
										<option value = year>1년</option>
									</select>
								</div>
								<div class="col-xl-3">
									<select class="form-control w-100" id="sel2" name="tag">
										<option value = title>제목</option>
										<option value = content>내용</option>
									</select>
								</div>
								<div class="col-xl-5">
									<div class="input-group w-100">
										<input type="text" class="form-control 2-100"
											id="inlineFormInputGroup" placeholder="Search" name="search">
										<div class="input-group-append">
											<button class="btn btn-primary" type="submit">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-xl-2"></div>
					<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
				</div>
			</div>
			<div class="col-xl-2"></div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
</body>
</html>