<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
</head>
<body>
	<%
		double number = Integer.valueOf((request.getParameter("number")));
		String[] unitArr = request.getParameterValues("unit");
		
	%>

	<div>
		<h1>길이 변환 결과</h1>
		<h3><%= number %>cm</h3>
		<hr>
		<h2>
		<%
			if (unitArr != null) {
				String resultUnit;
				double result = 0;
				for (String unit : unitArr){
					if (unit.equals("인치")){
						result = number / 2.54;
						resultUnit = "in";
					} else if (unit.equals("야드")){
						result = number / 91.44;
						resultUnit = "yd";
					} else if (unit.equals("피트")){
						result = number/30.48;
						resultUnit = "ft";
					} else {
						result = number/100;
						resultUnit = "m";
					}
					out.println(result +" " +resultUnit + "<br>");
				}
			}
		%>
		</h2>
	</div>
</body>
</html>