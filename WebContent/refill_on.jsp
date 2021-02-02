<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = null;
if (session.getAttribute("id") != null)
	id = (String) session.getAttribute("id");
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>e LINK</title>
<link rel="shortcut icon" href="./image/favicon.ico">
<link rel="icon" href="./image/favicon.ico">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<link href="css/index.css" type="text/css" rel="stylesheet">
<link href="css/sub.css" type="text/css" rel="stylesheet">
<script src="javascript/jquery/jquery-1.12.3.js" type="text/javascript"></script>
</head>
<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>
	<div id="wrap">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="index.do"><img
					src="image/logo.gif" alt="logo" class="logo"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#alt" aria-controls="alt" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- navbar -->
				<div class="collapse navbar-collapse" id="alt">
					<div id="lnb">
						<ul id="nav-content" class="navbar-nav">
							<li class="ml-5"><a href="refill_on.do" class="wp">REFILL
									STATION</a></li>
							<li class="ml-5"><a href="up_on.do" class="wp">UPCYCLING</a></li>
							<li class="ml-5"><a href="resist.do" class="wp">RESISTRATION</a></li>
						</ul>
					</div>

					<%
						if (id == null) {
					%>
					<ul id="gnb_sm" class="navbar-nav">
						<li class="nav-item nav-link"><a href="login.do" class="wp">로그인</a>
						<li class="nav-item nav-link"><a href="join.do" class="wp">회원가입</a></li>
					</ul>
					<%
						} else {
					%>
					<ul class="navbar-nav" id="gnb">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown"><%=id%> 로그인</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="userCheck.do">내정보 보기</a>
								<%
									if (id.equals("admin")) {
								%>

								<a class="dropdown-item" href="memberList.do">회원관리</a>
								<%
									} else {
								%>
								<%
									}
								%>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="logout.do">로그아웃</a>
							</div></li>
					</ul>
					<%
						}
					%>
				</div>
			</nav>
		</header>
	</div>


	<!-- content -->
		<div id="cp1" class="cp1">
			<h1>REFILL STATION</h1>
		</div>
	<div id="wrap">
		<section>
			<ul id="snb">
				<li id="cp2"><a href="refill_on.do">online</a></li>
				<li><a href="refill_off.do">offline</a></li>
			</ul>
			<div id="list">
				<div class="div1">
					<div class="frame" onclick="location.href='amorepacific.do';">
						<div id="picture1_1_1" class="transform"></div>
					</div>
					<div class="txt">
						<h3>아모레퍼시픽</h3>
						<p>https://www.apgroup.com/int/ko/</p>
					</div>
				</div>
				<div class="div2">
					<div class="frame" onclick="location.href='aromatica.do';">
						<div id="picture1_1_2" class="transform"></div>
					</div>
					<div class="txt">
						<h3>아로마티카</h3>
						<p>https://aromatica.co.kr/</p>
					</div>
				</div>
				<div class="div3">
					<div class="frame" onclick="location.href='ecostore.do';">
						<div id="picture1_1_3" class="transform"></div>
					</div>
					<div class="txt">
						<h3>에코스토어</h3>
						<p>https://korea.ecostore.com/</p>
					</div>
				</div>
				<div class="div4">
					<div class="frame" onclick="location.href='sugarbubble.do';">
						<div id="picture1_1_4" class="transform"></div>
					</div>
					<div class="txt">
						<h3>슈가버블</h3>
						<p>http://www.sugarbubble.com/main/</p>
					</div>
				</div>
				<div class="div5">
					<div class="frame" onclick="location.href='refeely.do';">
						<div id="picture1_1_5" class="transform"></div>
					</div>
					<div class="txt">
						<h3>리필리</h3>
						<p>https://refeely.com/howtouse</p>
					</div>
				</div>
				<div class="div6">
					<div class="frame" onclick="location.href='almang.do';">
						<div id="picture1_1_6" class="transform"></div>
					</div>
					<div class="txt">
						<h3>알맹상점</h3>
						<p>https://almang.modoo.at/</p>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- footer -->
	<footer>
		<div class="footer1">
			<ul>
				<li><a href="#">이용약관</a></li>
				<li><a href="https://www.ftc.go.kr/www/bizCommList.do?key=232"
					target="blank">사업자정보확인</a></li>
				<li><a href="#">개인정보처리방침</a></li>
			</ul>
		</div>
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>
</html>