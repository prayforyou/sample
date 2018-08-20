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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
function add(){
	var radioValue=$('input[name="pd_no"]:checked').val();

	document.location.href='/myapp/hr/MenuSet2.do?pd_no='+radioValue;
}

function remove(){
	var radioValue=$('input[name="pd_no2"]:checked').val();
	
	document.location.href='/myapp/hr/MenuSet3.do?pd_no='+radioValue;
}
function back(){
	
	document.location.href='/myapp';
}
</script>
</head>

<body>
	<div class="container" style="width: 419px;">
		<h1>Registed Menu</h1>
		<div id="list-example" class="list-group">
			<c:forEach var="emp" items="${proList}">
				<label class="btn btn-secondary active">
				 <input type="radio"
					name="pd_no" value="${emp.pd_no}" autocomplete="off" checked>${emp.pd_nm}</label>
			</c:forEach>
		</div>
	</div>
	<div class="container" style="width: 225px;">
		<input type=button onclick="remove()" class="btn btn-primary btn-lg btn-block" value="ADD">
		<input type=button onclick="add()" class="btn btn-primary btn-lg btn-block" value="REMOVE">
	</div>
	<div class="container" style="width: 419px;">
		<h1>Not Registed Menu</h1>
		<div id="list-example2" class="list-group">
			<c:forEach var="emp2" items="${proList2}">
				<label class="btn btn-secondary active"> <input type="radio"
					name="pd_no2" value='${emp2.pd_no}' autocomplete="off" checked>${emp2.pd_nm}</label>
			</c:forEach>
		</div>
	</div>
	<div class="container" style="width: 225px;">
	<input type=button onclick="back()" class="btn btn-primary btn-lg btn-block" value="back">
	</div>
<hr>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>

</body>
</html>