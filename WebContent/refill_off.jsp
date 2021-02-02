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
<link href="css/sub_off.css" type="text/css" rel="stylesheet">
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
				<li><a href="refill_on.do">online</a></li>
				<li id="cp2"><a href="refill_off.do">offline</a></li>
			</ul>
			<div id="list">
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d792.4918301890978!2d127.08235492922478!3d37.39060509873947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b588aa0bdb517%3A0xf5744b6803cf15f2!2z6rK96riw64-EIOyEseuCqOyLnCDrtoTri7nqtawg7Jq07KSR64-ZIO2MkOq1kOuhnDMz67KI6ri4!5e0!3m2!1sko!2skr!4v1607582187298!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>동그라미필러리</h3>
						<p>경기도 성남시 분당구 판교로 33번길 9 1층</p>
						<small>010-7374-3447</small><br> <br> <span>동그라미리필러리는
							일회용 플라스틱 사용을 줄일 수 있는 친환경 용품을 판매하는 제로웨이스트 가게입니다.</span>
					</div>
				</div>
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3337.6180439037466!2d126.25959361514938!3d33.22410838083935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c619bdeabddeb%3A0xa58eaaf451b491ee!2z7ZW465Oc66mU7J2065OcIOudvOydtO2UhA!5e0!3m2!1sko!2skr!4v1610078800960!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>핸드메이드 라이프</h3>
						<p>제주특별자치도 서귀포시 대정읍 상모로 256</p>
						<small>010-3622-2629</small><br> <br> <span>핸드메이드
							라이프는 환경과 인간의 아름다운 공생을 위해 오래 사용할 수 있는 좋은 물건을 소개하고 만들며, 더 적게 소비하는
							삶의 방식을 연구하고 함께 만들어가는 곳입니다. </span>
					</div>
				</div>
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.147308957293!2d126.92628021527008!3d37.57514877979634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c98f5f56c93f1%3A0xe963015f4c9845d4!2z67O07YuA7Yyp7Yag66as!5e0!3m2!1sko!2skr!4v1610078937344!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>보틀팩토리</h3>
						<p>서울특별시 서대문구 연희동 708번지 1층</p>
						<small>T. 02-3144-0703</small><br> <br> <span>보틀팩토리는
							일회용품을 사용하지 않는 카페입니다. 패키지 디자이너였던 대표가 한 번만 사용되고 버려지는 일회용 컵에 문제의식을
							가지고 오픈했습니다.</span>
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