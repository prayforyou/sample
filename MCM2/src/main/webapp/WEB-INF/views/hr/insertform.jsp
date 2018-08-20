<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>사원정보 입력</h1>
<form action="./insert" method="post">
<table border="1" class="table table-striped table-dark">
<tr>
	<th scope="row">EMPLOYEE_ID</th>
	<td><input type="number" name="employeeId" required></td>
</tr>
<tr>
	<th>FIRST_NAME</th>
	<td><input type="text" name="firstName"></td>
</tr>
<tr>
	<th>LAST_NAME</th>
	<td><input type="text" name="lastName" required></td>
</tr>
<tr>
	<th>EMAIL</th>
	<td><input type="text" name="email" required></td>
</tr>
<tr>
	<th>PHONE_NUMBER</th>
	<td><input type="text" name="phoneNumber"></td>
</tr>
<tr>
	<th>HIRE_DATE</th>
	<td><input type="date" name="hireDate" required></td>
</tr>
<tr>
	<th>JOB_ID</th>
	<td>
		<select name="jobId">
		<c:forEach var="job" items="${jobList}">
			<option value="${job.jobId}">${job.title}</option>
		</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>SALARY</th>
	<td><input type="number" name="salary"></td>
</tr>
<tr>
	<th>COMMISSION_PCT</th>
	<td><input type="number" name="commissionPct" step="0.1" min="0" max="0.99"></td>
</tr>
<tr>
	<th>MANAGER_ID</th>
	<td>
		<select name="managerId">
		<c:forEach var="manager" items="${managerList}">
			<option value="${manager.managerId}">${manager.firstName}</option>
		</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>DEPARTMENT_ID</th>
	<td>
		<select name="departmentId">
		<c:forEach var="department" items="${deptList}">
			<option value="${department.departmentId}">${department.departmentName}</option>
		</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="저장"> 
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</html>