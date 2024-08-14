<!-- 메인 화면의 레이아웃을 구성하는 템플릿 파일
header, menu, content, footer 4단으로 레이아웃을 구성한다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tiles Layout Main</title>
<script
	type="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="menu" />

	<div align="center">
		<tiles:insertAttribute name="content" />
	</div>

	<tiles:insertAttribute name="footer" />
</body>
</html>