<%@page import="member.MemberVO"%>
<%@page import="com.sun.rowset.internal.Row"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
   type="text/css">
<link rel="stylesheet" href="theme.css">
<link rel="stylesheet"
   href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<style type="text/css"></style>
<style type="text/css">
</style>
</head>

<body class="align-items-center">
<%-- 
 	<% ArrayList<MemberVO> list =(ArrayList<MemberVO>)request.getAttribute("list"); 
 	MoimListVO moim = (MoimListVO)request.getAttribute("moim");
 	%>
 	 --%>
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-2"></div>
         <div class="col-md-8" id="all">
            <div class="py-3">
               <div class="container">
                  <div class="row">
                     <div class="col-md-4 border border-dark col-6" style="">
                        <h4 class="my-3">moim.getSche_date()</h4>
                     </div>
                     <div class="col-md-4 border border-dark col-6" style="">
                        <h4 class="my-3"></h4>
                        <div class="row border-top border-dark">
                           <div class="col-md-6 border-right border-dark">
                              <h4 class="my-3">moim.getSche_loc()</h4>
                           </div>
                           <div class="col-md-6">
                              <h4 class="my-3">moim.getSche_fee()</h4>
                           </div>
                        </div>
                     </div>
                     <div
                        class="col-6 p-3 col-md-4 border-top border-bottom border-right border-dark"
                        style="">
                        <h4 class="my-3">참가</h4>
                     </div>
                  </div>
               </div>
            </div>
            <div class="py-0 align-items-center w-100">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="card text-center"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="w-100 py-0" style="">
               <div class="container">
                  <div class="row w-25">
                     <div class="col-md-12" style="">
                        <div class="card text-center"></div>
                        <h2 class="" style="">참석인원list.size()</h2>
                     </div>
                  </div>
                  <div class="row w-100">
                     <div class="w-100" style="">
                        <div class="table-responsive w-100 border border-primary"
                           style="">
                           <table class="table">
                              <thead>
                                 <tr>
                                    <th>사진</th>
                                    <th>참석자</th>
                                 </tr>
                              </thead>
                              <tbody>
                              <%-- 
                              <% if(list.size()!=0){
                              for(int i=0;i<list.size();i++){
                                 	  MemberVO row = list.get(i);%>
                            		<tr>
                                    	<td style="" class="w-25"><a
                                       	href="/damoim/gathering/info.do">
                                          	<img class="img-fluid d-block"
                                          src="<%=list.get(i).getMem_profile() %>"
                                          style="" width="100" height="100">
                                    </a></td>
                                    <td class="border"><%=list.get(i).getMem_name() %></td>
                                 </tr>
                               <%}} %>
                                --%>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="py-2 align-items-center w-100" style="">
               <div class="container">
                  <div class="row">
                     <div class="col-9 col-md-6 rounded"
                        style="background-image: linear-gradient(rgb(224, 224, 224), rgb(224, 224, 224)); background-position: left top; background-size: 100%; background-repeat: repeat;">
                        <h1 class="border border-primary"
                           style="background-image: linear-gradient(to bottom, white, white); background-position: top left; background-size: 100%; background-repeat: repeat;">오픈링크주소</h1>
                     </div>
                     <div class="col-md-5" style="">
                        <a class="btn btn-primary w-25" href="moim.getSche_chat()>" style=""><i
                           class="fa fa-download fa-fw"></i>복사</a>
                     </div>
                  </div>
               </div>
            </div>

            <div class="py-3 w-100">
               <div class="container">
                  <div class="row">
                     <div class="w-100 align-items-center col-md-12" style="">
                        <iframe width="100%" height="400"
                           src="https://maps.google.com/maps?q=seoul&amp;z=14&amp;output=embed"
                           scrolling="no" frameborder="0"></iframe>
                     </div>
                  </div>
               </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
               integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
               crossorigin="anonymous" style=""></script>
            <script
               src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
               integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
               crossorigin="anonymous" style=""></script>
            <script
               src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
               integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
               crossorigin="anonymous" style=""></script>
         </div>
         <div class="col-md-2"></div>
      </div>
   </div>
</body>

</html>