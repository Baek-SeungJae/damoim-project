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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style type="text/css">
.container-fluid {
	padding-left: 0px;
	padding-right: 0px;
}
</style>
<script type="text/javascript">
	board_category = "${board_category}";
	gath_no="${gath_no}";
	$(document).ready(function() {
						if (board_category == "") {
							board_category = "all";
						}
						$("#board_category").val(board_category).attr(
								"selected", "selected");
						$("#board_category")
								.change(
										function() {
											location.href = "/damoim/gathering/board.do?gath_no="+gath_no+"&board_category="
													+ encodeURI($(this).val())+"&pagenum=0";
										});
					});
</script>
</head>
<body class="">
	<%
		ArrayList<BoardListVO> list = (ArrayList<BoardListVO>) request.getAttribute("boardlist");
		int listsize=list.size();
		int articlecount = (int) request.getAttribute("boardlistcount");
		String gath_no = (String) request.getParameter("gath_no");
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		String category = request.getParameter("board_category");
		//GatheringInfoVO vo = (GatheringInfoVO) request.getAttribute("vo");
	%>
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2"></div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8">
				<div class="row">
					<div class="col-xl-6">
						<h1><%="게시판"%></h1>
						<br />
						<select class="form-control w-50" name="board_category"
								id="board_category">
								<option value="all">전체게시물</option>
								<option value="B01">11</option>
								<option value="B02">22</option>
								<option value="B03">33</option>
							</select>
						</form>
						<br />
					</div>
					<div class="col-xl-6"></div>
					<!-- 게시물 시작 -->
					<div class="table-responsive">
						<table class="table" style="font-size: 1vmax">
							<thead>
								<tr>
									<th width="10%" style="text-align: center">분류</th>
									<th width="55%">제목</th>
									<th width="10%" style="text-align: center">작성자</th>
									<th width="15%" style="text-align: center">작성일</th>
									<th width="10%" style="text-align: center">조회수</th>
								</tr>
							</thead>
							<tbody id="mydatalist">
								<%
									if (listsize >10) {
										for (int i = 0 + pagenum * 10; i < 10 + pagenum * 10; i++) {
											BoardListVO row = list.get(i);
								%><tr>
									<td style="text-align: center"><%=row.getBoard_category()%></td>
									<td><a href="/damoim/gathering/article.do?gath_no=<%=gath_no%>&board_no=<%=row.getBoard_no()%>"
										style="color: red;"><%=row.getBoard_title()%></a></td>
									<td style="text-align: center"><%=row.getBoard_mno()%></td>
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
									<td><a href="/damoim/gathering/article.do?gath_no=<%=gath_no%>&board_no=<%=row.getBoard_no()%>"
										style="color: red;"><%=row.getBoard_content()%></a></td>
									<td style="text-align: center"><%=row.getBoard_mno()%></td>
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
							href="/damoim/gathering/newarticle.do?gath_no=<%=gath_no %>&board_category=<%=category%>">글쓰기</a>
					</div>
					<div class="col-xl-12">
						<ul class="pagination justify-content-center">
							<%
								if (articlecount > 100) {
							%>
							<li class="page-item active"><a class="page-link"
								href="/damoim/gathering/board.do?gath_no=<%=gath_no%>&board_category=<%=category%>&pagenum=<%=0%>">
									<span>«</span>
							</a></li>
							<%
								for (int i = 0; i < 10; i++) {
							%>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/board.do?gath_no=<%=gath_no%>&board_category=<%=category%>&pagenum=<%=i%>"><%=i + 1%></a></li>
							<%
								}
							%>
							<li class="page-item active"><a class="page-link"
								href="/damoim/gathering/board.do?gath_no=<%=gath_no%>&board_category=<%=category%>&pagenum=<%=articlecount/10-1 %>">
									<span>»</span>
							</a></li>
							<%
								} else {
									if(list!=null){
									for (int i = 0; i < articlecount / 10; i++) {
							%>
							<li class="page-item"><a class="page-link"
								href="/damoim/gathering/board.do?gath_no=<%=gath_no%>&board_category=<%=category%>&pagenum=<%=i%>"><%=i + 1%></a></li>
							<%
								}
							%>
							<%
								}}
							%>
						</ul>

					</div>
					<div class="col-xl-2"></div>
					<div class="col-xl-8">
						<div class="row">
							<form class="form-inline" method="post">
								<div class="col-xl-1"></div>
								<div class="col-xl-3">
									<select class="form-control w-100" id="sel1" name="range">
										<option>전체기간</option>
										<option>1일</option>
										<option>1주</option>
										<option>1개월</option>
										<option>6개월</option>
										<option>1년</option>
									</select>
								</div>
								<div class="col-xl-3">
									<select class="form-control w-100" id="sel1" name="tag">
										<option>제목만</option>
										<option>글작성자</option>
										<option>댓글내용</option>
										<option>댓글작성자</option>
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