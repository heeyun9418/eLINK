<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = null;
if (session.getAttribute("id") != null)
	id = (String) session.getAttribute("id");
%>
<%
	String cookie = "";
String check = null;
Cookie[] cookies = request.getCookies(); //쿠키생성
if (cookies != null && cookies.length > 0)
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("id")) { // 내가 원하는 쿠키명 찾아서 값 저장
	cookie = cookies[i].getValue();
		} else if (cookies[i].getName().equals("checkbox")) {
	check = cookies[i].getValue();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<link href="./css/login.css" type="text/css" rel="stylesheet">
<title>e LINK</title>
<link rel="shortcut icon" href="./image/favicon.ico">
<link rel="icon" href="./image/favicon.ico">
</head>

<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>
	<div id="formlogo">
		<a href="index.do"><img src="image/logo.gif" id="logo" /></a>
	</div>
	<div class="card-title">
		<hr class="line">
	</div>

	<div class="card align-middle" id="loginform">
		<div class="card-body">
			<div class="card-title" id="title">
				<h2 class="card-title text-center">로 그 인</h2>
			</div>





			<form action="loginPro.do" method="post">
				<label for="inputEmail" class="sr-only">아이디를 입력하세요</label>
				<div class="input-group my-2 mb-1">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"> <img
							src="image/id.png" /></span>
					</div>
					<input type="text" id="id" class="form-control" name="id"
						value="<%=cookie%>" placeholder="아이디를 입력하세요" required="required"
						autofocus="autofocus">
				</div>

				<label for="inputPassword" class="sr-only">비밀번호를 입력하세요</label>
				<div class="input-group my-2 mb-1">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"> <img
							src="image/pw.png" /></span>
					</div>
					<input type="password" id="pw" class="form-control" name="pw"
						value="" placeholder="비밀번호를 입력하세요" required="required"><br>
				</div>
				<br>
				<div class="checkbox">
					<label><input name="checkbox" type="checkbox" value="Login"
						<%if (check != null) {
	out.println("checked='checked'");%>
						<%} else {
	out.println("");%> <%}%> id="saveId"> 아이디 저장</label>
				</div>

				<button id="btn-Yes" class="btn btn-lg btn-success btn-block"
					type="submit">로그인 하기</button>
			</form>
		</div>

		<div class="info_user">
			<ul class="list_user">
				<li><a href="join.do" class="link_join"> <small
						class="form-text text-muted">회원가입</small></a></li>
				<li><a href="#" class="link_join"> <small
						class="form-text text-muted">아이디/비밀번호 찾기</small></a></li>
			</ul>
			<br>
		</div>
	</div>

	<footer>
		<div class="footer2">
			<ul>
				<li>사업자번호 : 228-81-03754</li>
				<li>상호명 : (주)eLINK</li>
				<li>CEO : 정희윤 최지은</li>
				<li>통신판매업 신고 : 제2016-인천중구-0617호</li>
				<li>상담전화 : 053-427-3313</li>
				<li>사업장주소 : 대구광역시 달서구 달구벌대로 251 안길 15(이곡동 1224-2번지) (주)에코링크컴퍼니</li>
				<li>E-mail : eLINK@gmail.com</li>
			</ul>
		</div>
	</footer>

	<!-- Optional JavaScript -->
	<script src="javascript/jquery/jquery-1.12.3.js" type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>