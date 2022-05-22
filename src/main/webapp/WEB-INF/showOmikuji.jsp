<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="/css/main.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Omikuji!</title>
</head>
<body>

	<h1>Here's Your Omikuji!</h1>
	
	<h3 class="result-box">${result}</h3>
	
	<a class="back-btn" href="/omikuji">Back</a>

</body>
</html>