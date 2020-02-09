<%@page import="member.MemberVO"%>
<%@page import="gathering.info.GatheringInfoVO"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.form-text {
	display: block;
	margin-top: .25rem;
}

.small, small {
	font-size: 80%;
	font-weight: 400;
}

.card-title {
	margin-bottom: 5px;
	padding-bottom: 10px;
	padding-left: 50px;
	color: #3AC47D;
}

.card-body {
	position: relative;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: .9rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	-webkit-font-smoothing: antialiased;
	flex: 1 1 auto;
	padding: 1.25rem;
	-webkit-box-flex: 1;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

h5 {
	font-family: Sarabun, sans-serif;
	font-weight: 300;
	font-size: 1.25rem;
	line-height: 1.2;
	color: inherit;
	margin-top: 0;
	display: block;
	margin-block-start: 1.67em;
	margin-block-end: 1.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px
}

.card {
	position: relative;
	-webkit-box-direction: normal;
	text-align: left;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.position-relative {
	position: relative !important;
}

.form-group {
	margin-bottom: 1rem;
}

.form-control {
	display: block;
	width: 100%;
	height: calc(2.25rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.input {
	overflow: visible;
	margin: 0;
	font-family: inherit;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	text-align: start;
	-webkit-appearance: textfield;
	-webkit-rtl-ordering: logical;
	cursor: text;
	font: 400 13.3333px Arial;
}

input[type="file" i] {
	-webkit-appearance: initial;
	background-color: initial;
	cursor: default;
	align-items: baseline;
	color: inherit;
	text-align: start !important;
	padding: initial;
	border: initial;
}

.label {
	cursor: default;
	display: block;
	margin: 0 0 .5rem;
	font-weight: 700;
	color: #495057;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: 30px;
	margin-left: 30px;
}

* {
	box-sizing: border-box;
}

html {
	-webkit-tap-highlight-color: transparent;
}

.col-xl-10 {
	-webkit-box-flex: 0;
	flex: 0 0 83.3333333333%;
	max-width: 83.3333333333%;
}

.col-xl-2 {
	-webkit-box-flex: 0;
	flex: 0 0 16.6666666667%;
	max-width: 16.6666666667%;
}

.col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5,
	.col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1,
	.col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4,
	.col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto,
	.col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2,
	.col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8,
	.col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11,
	.col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6,
	.col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1,
	.col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4,
	.col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
	position: relative;
	width: 100%;
	padding-right: 30px;
	padding-left: 30px;
}

.col-form-label {
	padding-bottom: calc(.375rem + 1px);
	margin-bottom: 0;
	font-size: inherit;
	line-height: 1.5;
	padding-top: calc(.375rem + 1px);
}

.btn
:not
 
(
:disabled
 
)
:not
 
(
.disabled
 
),
.wpcf7-submit
:not
 
(
:disabled
 
)
:not

	
(
.disabled
 
)
{
cursor
:
 
pointer
;


}
.btn-secondary {
	color: #fff;
	background-color: #3AC47D;
	border-color: #3AC47D;
	width: 120px;
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
}

button, select {
	text-transform: none;
}

button, input {
	overflow: visible;
}

button {
	margin: 0;
	font-family: inherit;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-indent: 0px;
	text-shadow: none;
	align-items: flex-start;
	font: 700 13.3333px Arial;
}

.form-control-file, .form-control-range {
	display: block;
	width: 100%;
}

.text-muted {
	color: #6c757d !important;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}
</style>
</head>

<body>
<% GatheringInfoVO gathering =(GatheringInfoVO)request.getAttribute("gathering");%>
<% MemberVO member = (MemberVO)session.getAttribute("member"); %> <!-- 세션 받아오는 -->
<% MemberVO user = (MemberVO)session.getAttribute("user"); %> <!-- 세션 받아오는 -->
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="card-body">
						<h5 class="card-title" style="font-weight: 400; font-size: 24px;">
							모임생성</h5>
						<form:form class="" action="/damoim/gathering/sch_create.do" method="post" commandName="scheduleRegisterVO">
							<input type="hidden" name="sche_gno" value="<%=gathering.getGath_no() %>"/>
							<input type="hidden" name="sche_master" value="<%=user.getMem_id() %>"/>
 							<div class="position-relative row form-group">
								<label for="text" class="col-xl-2">별칭</label>
								<div class="col-xl-10">
									<input name="sche_name" id="text" type="text"
										class="form-control" />
										<form:errors path="sche_name"/> </span>
								</div>
							</div>

							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">회비</label>
								<div class="col-xl-10">
									<textarea name="sche_fee" id="exampleText" class="form-control"></textarea>
								</div>
							</div>


							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">날짜</label>
								<div class="col-xl-10">
									<textarea name="sche_date" id="exampleText"
										class="form-control"></textarea>
								</div>
							</div>

							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">위치</label>
								<div class="col-xl-10">
									<textarea name="sche_loc" id="exampleText" class="form-control"></textarea>
									<form:errors path="sche_loc"/> </span>
								</div>
							</div>

							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">모임소개</label>
								<div class="col-xl-10">
									<textarea name="sche_context" id="exampleText"
										class="form-control"></textarea>
										<form:errors path="sche_context"/> </span>
								</div>
							</div>

							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">카카오톡URL</label>
								<div class="col-xl-10">
									<textarea name="sche_chat" id="exampleText"
										class="form-control"></textarea>
								</div>
							</div>
							
							<div class="position-relative row form-group">
								<label for="exampleText" class="col-xl-2 col-form-label">정원</label>
								<div class="col-xl-10">
									<textarea name="sche_limit" id="exampleText"
										class="form-control"></textarea>
										<form:errors path="sche_limit"/> </span>
								</div>
							</div>

							<!-- <div class="position-relative row form-group">
								<label for="exampleFile" class="col-xl-2 col-form-label">File</label>
								<div class="col-xl-10">
									<input name="file" id="exampleFile" type="file"
										class="form-control-file"> <small
										class="form-text text-muted"></small>
								</div>
							</div> -->

		
							<div class="position-relative row form-check">
								<div class="col-xl-12">
									<!--<a
										href="/damoim/gathering/sch_createFinish.do?gath_no=<%-- <%=gathering.getGath_no() %> --%>"
										onclick="window.open(this.href, '_self', 'width=600px,height=400px,toolbars=no,scrollbars=no'); return false;">-->
										<button type="submit" class="btn btn-secondary">Create</button><!-- </a> -->
								</div>
							</div>



						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>