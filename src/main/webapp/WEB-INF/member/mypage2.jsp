<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	<%
		MemberVO user = (MemberVO) session.getAttribute("user");
		String userid= (String)request.getAttribute("userid");
	%>
	<div class="container" style="background-color: lightgray; padding: 5% 0%; border-radius: 2rem;">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-10">
				<h2 class="">내 정보</h2>
			</div>
			<br/><br/><br/><br/>
		</div>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4>프로필 사진</h4>
			</div>
			<div class="col-md-6">	
				<form id="FILE_FORM" method="post" enctype="multipart/form-data" action="">
					<input type="file" name="file" id="file" class="border-primary rounded">
							<a class="btn border-primary rounded" href="javascript:uploadFile();">전송</a>
					 </form>
					 <script type="text/javascript">
						function uploadFile(){
							var form = $('#FILE_FORM')[0];
							var formData = new FormData(form);
							var url = 
							alert("함수");
							$.ajax({
								url:"/damoim/imageupload.do?type=member&value=${userid}",
								type:"POST",
								processData:false,
								contentType:false,	
								data: formData,
								success:function(result){
									alert("업로드성공");
								}
							});
						}
					</script>
			</div>
			<div class="col-md-2"></div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4 class="card-title">자기소개</h4>
			</div>
			<div class="col-md-4">	
				<input type="text" value=<%=user.getMem_msg()%> class="form-control">
			</div>
			<div class="col-md-4"></div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4>아이디</h4>
			</div>
			<div class="col-md-8">	
				<p class="lead"><%=user.getMem_id() %></p>
			</div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4>닉네임 </h4>
			</div>
			<div class="col-md-4">	
				<input type="text" value=<%=user.getMem_nickname()%> class="form-control">
			</div>
			<div class="col-md-4"></div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4 >생년월일</h4>
			</div>
			<div class="col-md-8">	
				<p class="lead"><%=user.getMem_birth()%></p>
			</div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4 class="">이름</h4>
			</div>
			<div class="col-md-4">	
				<p class="lead"><%=user.getMem_name() %></p>
			</div>
			<div class="col-md-4"></div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4>이메일</h4>
			</div>
			<div class="col-md-4">	
				<input type="text" value=<%=user.getMem_email() %> class="form-control">
			</div>
			<div class="col-md-4"></div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4>비밀번호</h4>
			</div>
			<div class="col-md-8">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="form19">비밀번호</label> <input type="password"
							class="form-control" id="form19" placeholder="••••">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="form20">비밀번호 재확인</label> <input type="password"
							class="form-control" id="form20" placeholder="••••">
					</div>
				</div>
			</div>
		</div>
		<hr class="w-75" style="border-color:#FF399B;"/>
		<div class="row">
			<div class="col-md-4" align="right">
				<h4 class="">휴대전화<br></h4>
			</div>
			<div class="col-md-4">	
				<input type="text" value=<%=user.getMem_phone()%> class="form-control">
			</div>
			<div class="col-md-4"> <button type="submit" class="btn btn-primary">인증번호 받기</button> </div>
		</div>
		<br/><br/>
		<div class="row">
			<div class="col-md-11" align="right">
				<a class="btn btn-primary" href="/damoim/main/home">수정완료</a>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
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