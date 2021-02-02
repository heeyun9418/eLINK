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
<link href="css/up_on.css" type="text/css" rel="stylesheet">
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
		
		<!-- content -->
		<section>
			<div id="cp">
				<div class="hr-sect">
					<a href="https://www.apgroup.com/int/ko/" target="blank">
						amorepacific </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off1.jpg" />
			</div>

			<div id="product">
				<p>PHILOSOPHY</p>
				<span>아모레퍼시픽의 아시안 뷰티(Asian Beauty)는 아름답고 건강하게 살고자 하는 인류의 영원한
					꿈을 실현해 줍니다. 아모레퍼시픽이 존재하는 단 하나의 이유는 누구도 접해보지 못한 더 아름답고 건강한 세상을 만드는
					것입니다. 우리만이 할 수 있는 아시안 뷰티(Asian Beauty)를 통해 더 아름다운 세상을 향한 원대한 여정을
					이어나가는 우리는, 아시안 뷰티 크리에이터(Asian Beauty Creator)로 기억될 것입니다. </span>
				<p>HERITAGE INGREDIENTS</p>
				<span>아모레퍼시픽 연구원은 오랜 시간 축적된 노하우와 독보적인 기술력으로 자연과 인간의 조화를 꿈꾸는
					아시안 뷰티 연구를 지속하고 있습니다. 자연에서 찾은 헤리티지 원료에 첨단 바이오 기술을 접목해 아시안 뷰티를 담은 혁신
					상품을 개발하고 아모레퍼시픽만의 특화된 신기술을 발굴하여, 소재 및 기술 연구의 새로운 영역 개척에 앞장서기 위해
					적극적인 노력을 기울이고 있습니다. </span>
				<p>MISSION & PRINCIPLES</p>
				<span>아모레퍼시픽그룹은 ‘아름다움과 건강으로 인류에 공헌하겠다’는 창업 정신을 품고, ‘사람을 아름답게,
					세상을 아름답게’하는 미의 여정을 한걸음 한걸음 내딛고 있습니다. 브랜드, 제품, 채널, 국가별로 하는 일은 모두
					다르지만 단 하나의 공동 목적인 ‘소명’과 일을 하면서 반드시 지켜야 할 ‘원칙’을 공유함으로써, 세상과의 약속을 지켜
					나가고자 합니다. </span>
				<p>R&D</p>
				<span>자연의 이치와 그것이 품고 있는 식물에 대한 깊은 이해를 첨단 기술과 접목하고, 이를 바탕으로
					최초와 최고를 지향하며 아시아의 미를 만들어가고 있는 아모레퍼시픽 기술연구원은 앞으로도 전 세계 고객에게 최고의 제품을
					전하기 위한 기술 혁신을 지속해나갈 것입니다. </span>
				<p>SUPPLY CHAIN MANAGEMENT</p>
				<span>아모레퍼시픽은 좋은 원료와 첨단기술로 생산된 최고의 제품을 만들어 고객과 아름다운 소통을 이어나가는
					데 자부심을 느끼고 있습니다. SCM의 목표는 우리만의 특별함을 지닌 더 지혜로운 생산 기술과 라인을 구축하고, 고객과의
					조화로운 소통을 지속하며, 그리고 기꺼이 이 길의 동반자가 되어준 여러 협력사들과 더 긴밀하게 상생할 수 있는 환경을
					조성하는 것입니다. 아모레퍼시픽은 앞으로도 고객을 위한 최고의 아름다움을 전하기 위해 혁신, 그리고 주도적인 도전 정신을
					바탕으로 탄력적인 생산물류 네트워크를 만들어낼 것입니다. </span>
				<p>SUSTAINABILITY</p>
				<span>아모레퍼시픽그룹은 ‘아름다움과 건강으로 인류에 공헌하겠다’는 창업 정신을 품고, ‘사람을 아름답게,
					세상을 아름답게’하는 미의 여정을 한걸음 한걸음 내딛고 있습니다. 브랜드, 제품, 채널, 국가별로 하는 일은 모두
					다르지만 단 하나의 공동 목적인 ‘소명’과 일을 하면서 반드시 지켜야 할 ‘원칙’을 공유함으로써, 세상과의 약속을 지켜
					나가고자 합니다. </span>
			</div>
			<a href="javascript:history.go(-1)" class="btn btn-outline-success" id="back">목록보기</a>
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