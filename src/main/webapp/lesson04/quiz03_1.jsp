<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건올리기</title>
</head>
<body>
	<%-- 분기한 header, nav 가져오기 --%>
	<div id="wrap" class="container">
		<div>
			<h2>물건 올리기</h2>
		</div>
		<section>
			<div>
				<div> <%-- DB가져와서 사용자 이름 넣기 --%>
					<select name="">
						<option value=""></option>
					</select>
				</div>
				<div> <%-- 제목-> DB insert --%>
					<input type="text">
				</div>
				<div> <%-- 가격-> DB insert --%>
					<input type="text">
				</div>
			</div>
			<div> <%-- 내용-> DB insert --%>
				<textarea></textarea>
			</div>
			<div> <%-- 이미지-> DB insert --%>
				<input type="file">
			</div>
		</section>
		<button>저장</button> <%-- 저장을 누르는 순간 DB로 insert/ 리스트페이지 출력(quiz03.jsp) --%>
	</div>
</body>
</html>