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
<script src="javascript/jquery/jquery-1.12.3.js" type="text/javascript"></script>
<script src="javascript/script/script.js" type="text/javascript"></script>
</head>
<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>
	<div id="wrap">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="index.do"><img
					src="image/logo.gif" alt="logo" class="logo"></a>
				<button class="navbar-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="#alt" aria-controls="alt"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- navbar -->
				<div class="collapse navbar-collapse" id="alt">
					<div id="lnb">
						<ul id="nav-content" class="navbar-nav ml-auto">
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


		<!-- banner -->
		<div id="slide">
			<ul class="images">
				<li><img src="image/mama.png" alt="images(1)"></li>
				<li><img src="image/milky.png" alt="images(2)"></li>
				<li><img src="image/preitag.jpg" alt="images(3)"></li>
			</ul>
		</div>


		<!-- content -->
		<div id="intro" class="container-fluid">
			<div class="row">
				<div id="content" class="list-group">
					<a class="list-group-item list-group-item-action" href="#sec1">ABOUT
						US </a> <a class="list-group-item list-group-item-action" href="#sec2">MISSION
					</a> <a class="list-group-item list-group-item-action" href="#sec3">PHILOSOPHY
					</a>
				</div>

				<div data-bs-spy="scroll" data-bs-target="#list-example"
					class="scrollspy" data-bs-offset="0" class="scrollspy-example"
					tabindex="0" id="article">
					<div class="item1">
						<div class="left">
							<h2 id="sec1">
								건강한 자원의 순환과<br>지속 가능한 소비문화 회복
							</h2>
							<p>
								<u>e LINK는 국내 최초 제로웨이스트 라이프스타일 플랫폼</u>입니다. 쓰레기의 문제를 시장의 과도한
								편의주의, 위생주의에서 원인을 찾고 이에 대응하기 위해 건강했던 과거의 지점을 복원함으로써 시장 문화를 회복시키는
								역할을 합니다. 이를 위해 포장 폐기물 감소를 중심으로 다양한 쓰레기의 발생을 관찰하고 줄여 나가는 기준을 만들어
								나가며, 시장의 주체와 공유하고 협업합니다.
							</p>
						</div>
						<div class="right1">
							<p>지속가능한 생태계를 고려하는 원재료와 생산자를 선택하며,포장과 탄소발생을 최소화한 유통을 거쳐, 벌크
								진열로 소비자가 원하는 만큼 구매할 수 있도록 제공하고, 판매된 제품을 오랜 시간, 가능하면 수리하여 사용할 수
								있도록 돕고, 폐기 되었을 때의 건강한 순환을 고려합니다.</p>
							<p>
								이렇듯 e LINK는 <u>제품의 생애주기를 이해하고 생산, 유통, 판매, 사용, 폐기의 전과정에 기준을 확립</u>함으로써
								지속 가능한 환경이 자연스럽게 존재하던 과거와 소통하여&nbsp;<u>자원의 순환과 건강한 소비문화의 회복</u>에
								힘씁니다.
							</p>
						</div>
					</div>
					<div id="sec2" class="item2">
						<h2>MISSION</h2>
						<p>시장을 구성하는 개인, 기업, 정부가 지속 가능한 성장을 이룰 수 있도록</p>
						<p>건강한 자원의 순환과 소비문화 회복을 제시하는 조력자가 됩니다</p>
					</div>
					<div class="item3">
						<div class="left">
							<h2 id="sec3">PHILOSOPHY</h2>
							<p>e LINK는 ‘회복’을 통한</p>
							<p>문제해결 방법을 선택합니다</p>
						</div>
						<div class="right2">
							<h4>SOLVE</h4>
							<p>쓰레기의 문제가 없던 시절, 건강했던 지점을 탐색하고 발굴하여,</p>
							<p>현재에 걸맞게 적용함으로써 문제를 해결합니다.</p>
							<h4>CHOOSE</h4>
							<p>더 나은 기술 발전 또한 지지하되 과거의 건강했던 시장과 삶의 방식을</P>
							<P>조명하고 지원하는 범위 안에서 선택하기도 합니다.</p>
							<h4>BELIEVE</h4>
							<p>이렇게 우리는 세상의 문제가 회복될 수 있다고 믿고 모든 생명이</p>
							<p>지속가능해내야함을 기준으로 합니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- footer -->
	<footer>
		<div class="footer1">
			<ul>
				<li><a href="#" data-toggle="modal" data-target="#exapleModal">이용약관</a></li>
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