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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function back() {

		document.location.href = '/myapp';
	}
</script>

</head>
<body>

<hr>
<hr>
<h1 align="center">메뉴 통계입니다.</h1>
<hr>
<hr>
	<div class="container" style="width: 700px;float: left; width: 45% ">
		<h1>판매금액순위</h1>
		<table class="table table-striped table-dark" style="width: 500px; ">
			<thead>
				<tr>
					<th scope="col">name</th>
					<th scope="col">amonut</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${AmountList}">
					<tr>
						<th>${emp.pd_nm}</th>
						<th>${emp.dfff}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="container" style="width: 700px ; float: right; width: 45%">
		<h1>판매량순위</h1>
		<table class="table table-striped table-dark" style="width:500px; ">
			<thead>
				<tr>
					<th scope="col">name</th>
					<th scope="col">quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${CountList}">
					<tr>
						<th>${emp.pd_nm}</th>
						<th>${emp.sdsd}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>1월</h3>
		<table class="table table-striped table-dark" style=width:58px; ">
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>

	<tbody>
	<c:forEach var="emp" items="${ JanList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>2월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${ FebList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>3월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${ MarList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container"
		style="width: 108px; height: 800px; float: left; width: 25%">
		<h3>4월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${ AprList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>5월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${MayList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>6월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${JunList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>7월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${JulList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>8월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${AugList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>9월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${SepList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>10월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${OctList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>11월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${NovList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>

	<div class="container" style="width: 108px; float: left; width: 25%">
		<h3>12월</h3>
		<table class="table table-striped table-dark" style=width:58px;>
<thead>
<tr>
	<th scope="col">Menu</th>
	<th scope="col">amount</th>
	<th scope="col">quantity</th>
  </tr>
</thead>

<tr>
<tbody>
	<c:forEach var="emp" items="${DecList}">
<tr>
	<th>${emp.pd_nm}</th>
	<th>${emp.dfff}</th>
	<th>${emp.sdsd}</th>
	</tr>
	</c:forEach>
	</tbody>
</table>
	</div>
	
<hr>
<hr>
	<div class="container" style="width: 225px;">
	<input type=button onclick="back()" class="btn btn-primary btn-lg btn-block" value="back">
	</div>
	
<hr>
<hr>



<!-- 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script> -->
		<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
</body>

</html>