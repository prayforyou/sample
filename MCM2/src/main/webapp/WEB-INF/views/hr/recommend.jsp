<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function confirm(){
	document.location.href='/myapp/hr/confirm.do?startdate='+$('#startdate').val()+'&enddate='+$('#enddate').val();
}

$( document ).ready(function() {
    $( "#startdate" ).datepicker(
    		{dateFormat: 'yy-mm-dd'});
    $( "#enddate" ).datepicker(
    		{dateFormat: 'yy-mm-dd'});
});
function back(){
	
	document.location.href='/myapp';
}
</script>
</head>
<body>
	<h1>Menu 추천시스템</h1>
	<div class="container">
	<h2>기간  <input type="text" id="startdate" > ~ <input type="text" id="enddate"></h2>
	</div>
	<div class="container" style="width: 225px;">
	<input type=button onclick="confirm()" class="btn btn-primary btn-lg btn-block" value="CONFIRM">
	</div><br>
	<div class="container" style="width: 225px;">
	<input type=button onclick="back()" class="btn btn-primary btn-lg btn-block" value="back">
	</div>
			<c:forEach var="emp" items="${confirmList}">
				 ${emp.startdate}
			</c:forEach>
<!-- 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
		
</body>
</html>