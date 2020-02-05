<%@page import="board.list.BoardListVO"%>
<%@page import="java.util.List"%>
<%@page import="gathering.info.GatheringInfoVO"%>
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
	<% GatheringInfoVO gathering = (GatheringInfoVO)request.getAttribute("gathering"); %>
	<% List<BoardListVO> boardlist = (List<BoardListVO>)request.getAttribute("boardlist"); %>
	<% String gath_no= request.getParameter("gath_no"); %>
	<!-- 메인화면 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2"></div>
			<!-- 왼쪽여백 끝 중앙 컨텐츠 시작 -->
			<div class="col-xl-8">
				<div class="row">
					<div style="width: 100%; height: auto;">
						<div style="background-color: black; opacity: 0.5; width: 100%; height: auto; position: absolute; top: 0; left: 0; z-index: 2;">
							<img class="img-fluid d-block" src="/damoim/gathering/images/1_main.png" style="visibility: hidden;">
						</div>
						<img class="img-fluid d-block" src="/damoim/gathering/images/<%= gath_no %>_main.png" style="">
					</div>
					<!-- 메인화면 텍스트 시작 -->
					<div class="col-xl-12 text-white" style="position: absolute; top: 0; left: 0; z-index: 3;">
						<p class="lead my-4 mx-4" style="font-weight: bolder; font-size: 1.8vmax;">
								<%= gathering.getGath_info() %>
							<br />
						</p>
						<div style="font-size: 1.4vmax; padding-left: 5%;">FAQ</div>
						<p class="" style="padding-left: 10%; font-size: 1.1vmax;">
							<br />
							<%= gathering.getGath_intro() %>
							<br />
						</p>
					</div>
					<!-- 메인화면 텍스트 끝 -->
				</div>
				<br />
				<br />
				<hr />
				<br />
				<br />
				<!-- 게시물 시작 -->
				<div class="table-responsive" style="padding-left: 5%; padding-right: 5%; background-color: white;">
					<table class="table" style="font-size: 1vmax">
						<thead>
							<tr>
								<th width="10%">#</th>
								<th width="55%">내용</th>
								<th width="10%">작성자</th>
								<th width="15%">작성일</th>
								<th width="10%">조회수</th>
							</tr>
						</thead>
						<tbody>
							<%if(boardlist!=null){
								int size = 6;
								if(boardlist.size()<6)
									size = boardlist.size();
									for (int i = 0; i <size; i++) {
										BoardListVO row = boardlist.get(i);
								%><tr>
									<td><%=row.getBoard_no()%></td>
									<td><a href="/damoim/gathering/article.do"
										style="color: red;"><%=row.getBoard_content()%></a></td>
									<td><%=row.getBoard_mno()%></td>
									<td><%=row.getBoard_date()%></td>
									<td><%=row.getBoard_hit()%></td>
								</tr>
								<%
									}
							}
							%>
						</tbody>
					</table>
				</div>
				<!-- 게시물 끝 -->
				<br />
				<hr style="width: 100%;" />
				<br />
				<br />
				<div class="row" style="margin-bottom: 3%;">
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_1.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_1.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_2.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_2.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_3.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_3.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_4.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_4.jpg"></a>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_5.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_5.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_6.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_6.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_7.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_7.jpg"></a>
					</div>
					<div class="col-xl-3">
						<a href="/damoim/gathering/images/<%= gath_no %>_image_8.jpg"><img class="img-thumbnail" src="/damoim/gathering/images/<%= gath_no %>_image_8.jpg"></a>
					</div>
				</div>
			</div>
			<!-- 중앙컨텐츠 끝 오른쪽 여백시작 -->
			<div class="col-xl-2"></div>
		</div>
	</div>
	<!-- 메인화면 끝 -->
</body>
</html>