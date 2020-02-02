<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/damoim/static/common/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
<link href="/damoim/static/common/mdb/css/mdb.min.css" rel="stylesheet">
</head>
<body>
	<tiles:insertAttribute name="top"></tiles:insertAttribute>
	<br/><br/>
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<br/><br/>
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	
	<script type="text/javascript" src="/damoim/static/common/mdb/js/mdb.min.js"></script>
	
</body>
</html>