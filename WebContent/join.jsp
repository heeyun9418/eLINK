<%@page
	import="java.sql.*, javax.naming.*, javax.sql.*, java.util.ArrayList, vo.Bbs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
if (id != null) {
	response.sendRedirect("main.jsp");
}
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="./javascript/script/join.js" type="text/javascript"></script>
<link href="./css/join.css" type="text/css" rel="stylesheet">
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

	<div class="card align-middle" id="joinform">
		<div class="card-body">
			<h2 class="card-title text-center">회 원 가 입</h2>
			<form action="joinPro.do" method="post" name="joinForm">
				<div class="form-group">
					<label>ID</label> <input type="text" class="form-control"
						placeholder="아이디(한글, 특수문자는 입력불가)" name="id" id="id"
						required="required" />
					<div class="form-group" id="LoginCheck">
						<span></span>
					</div>
				</div>

				<div class="form-group">
					<label>PASSWORD</label> <input type="password" class="form-control"
						placeholder="비밀번호" id="pwd1" name="pw" required="required" /><br>
					<input type="password" class="form-control" placeholder="비밀번호 확인"
						id="pwd2" required="required" />
				</div>
				<div class="alert alert-success" id="alert-success">비밀번호가
					일치합니다</div>
				<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
					않습니다</div>

				<div class="form-group">
					<label>NAME</label> <input type="text" class="form-control"
						placeholder="이름" id="name" name="name" required="required" />
				</div>

				<div class="form-group">
					<label>PHONE</label> <input type="text" class="form-control"
						placeholder="전화번호" id="phone" name="phone" required="required" />
				</div>

				<div class="form-group">
					<label>EMAIL</label> <input type="email" class="form-control"
						placeholder="이메일" id="email" name="email" required="required" />
				</div>

				<button id="btn-join" class="btn btn-lg btn-success btn-block"
					type="button" onclick='join()'>회원가입 하기</button>

				<div class="footer1">
					<ul>
						<li><a href="#"><small class="form-text text-muted">이용약관</small></a></li>
						<li><a href="#"><small class="form-text text-muted">개인정보취급방침</small></a></li>
						<li><a href="#"><small class="form-text text-muted">개인정보처리방침</small></a></li>
					</ul>
				</div>
			</form>
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

	<!-- jQuery, Popper.js, and Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>
</html>