<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="">
          <ul class="nav nav-pills" style="">
            <li class="nav-item w-25" > <a class="nav-link disabled" href="#"><b>1. 본인인증</b></a> </li>
            <li class="nav-item w-25" style=""> <a href="#" class="active nav-link"><b>2. 정보입력</b></a> </li>
            <li class="nav-item w-25"> <a href="#" class="nav-link disabled"><b>3. 정보확인</b></a> </li>
            <li class="nav-item-25"> <a href="#" class="nav-link disabled"><b>4. 가입완료</b></a> </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row" style="">
        <div class="mx-auto col-lg-6 col-10">
          <h1>O my friend</h1>
          <p class="mb-3">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.</p>
          <form class="text-left" style="">
            <div class="form-group"> <label for="form16">아이디</label> <input type="text" class="form-control" id="form16" placeholder="4글자 이상">
              <div class="form-group"><label class="text-danger">아이디가 이미 존재합니다.</label></div>
            </div>
            <div class="form-group"> <label for="form17">닉네임</label> <input type="text" class="form-control" id="form17" placeholder="4글자 이상"> </div>
            <div class="form-row">
              <div class="form-group col-md-6"> <label for="form19">비밀번호</label> <input type="password" class="form-control" id="form19" placeholder="••••"> </div>
              <div class="form-group col-md-6"> <label for="form20">비밀번호 재확인</label> <input type="password" class="form-control" id="form20" placeholder="••••"> </div>
            </div>
            <div class="form-group"> <label for="form17">이름</label> <input type="text" class="form-control" id="form17" placeholder="2글자 이상"> </div>
            <div class="form-group"> <label for="form17">생년월일</label> </div>
            <div class="row">
              <div class="col-md-4" style="">
                <div class="form-group row">
                  <div class="col-10 border-dark"><input type="text" class="form-control" id="form16" placeholder="월"></div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="btn-group">
                  <button class="btn dropdown-toggle btn-light" data-toggle="dropdown">월</button>
                  <div class="dropdown-menu">
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">1</a><a class="dropdown-item" href="#">2</a><a class="dropdown-item" href="#" style="">3</a><a class="dropdown-item" href="#">4</a><a class="dropdown-item" href="#">5</a><a class="dropdown-item" href="#">6</a><a class="dropdown-item" href="#">7</a><a class="dropdown-item" href="#">8</a><a class="dropdown-item" href="#">9</a><a class="dropdown-item" href="#">10</a><a class="dropdown-item" href="#">11</a><a class="dropdown-item" href="#">12</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group row">
                  <div class="col-10"><input type="text" class="form-control" id="form16" placeholder="일"></div>
                </div>
              </div>
            </div>
            <div class="form-group" style="opacity: 0.5;"> <label for="form18">이메일</label> <input type="email" class="form-control border-dark" id="form18"> </div>
            <div class="form-group" style="opacity: 0.5;"> <label for="form18">휴대전화</label> <input type="email" class="form-control border-dark" id="form18" placeholder="전화번호 입력"> </div>
            <button type="submit" class="btn btn-primary">인증번호 받기</button>
            <div class="form-group" style="opacity: 0.5;"> <label for="form18"></label> <input type="email" class="form-control border-dark" id="form18" placeholder="인증번호 입력하세요"> </div>
            <div class="form-group">
              <div class="form-check"> <input class="form-check-input" type="checkbox" id="form21" value="on"> <label class="form-check-label" for="form21"> I Agree with <a href="#">Term and Conditions</a> of the service </label> </div>
              <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 pl-5"></div>
                <div class="col-md-4"></div>
              </div>
            </div>
            <!-- <button type="submit" class="btn btn-secondary"><b>다 음</b></button> -->
            <button type="button" class="btn btn-secondary" onclick="location.href='http://70.12.115.55:8088/serverweb/webproject/reg3.jsp' "><b>다 음</b></button>
            
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>