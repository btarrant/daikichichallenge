<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Challenge</title>
</head>
<body>

	<h1>Send an Omikuji!</h1>
	
	<form action="">
	
		<div>
			<label for="">Pick any number from 5 to 25</label>
			<input type="number" />
		</div>
		
		<div>
			<label for="">Enter the name of any city</label>
			<input type="text" />
		</div>
		
		<div>
			<label for="">Enter the name of any real person</label>
			<input type="text" />
		</div>
		
		<div>
			<label for="">Enter professional endeavor or hobby</label>
			<input type="text" />
		</div>
		
		<div>
			<label for="">Say something nice to someone</label>
			<textarea name="" id="" cols="30" rows="10"></textarea>	
		</div>
	
	</form>
		
</body>
</html> 