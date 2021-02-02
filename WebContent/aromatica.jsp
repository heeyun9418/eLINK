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
					<a href="https://aromatica.co.kr/" target="blank"> aromatica </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off2.jpg" />
			</div>

			<div id="product">
				<p>BRAND IDENTITY</p>
				<span>우리는 생명과 환경을 지키는 지속 가능하고 효과적인 제품을 만들고, 지구 환경을 온전한 상태로
					되돌리기 위해 환경 보전과 복원에 적극적으로 나섭니다. </span>
				<p>FOUNDER STORY</p>
				<span>천연 유기농 화장품의 불모지였던 한국에서 안전한 화장품을 만들기 위해 그 어떤 타협도 없이
					아로마티카만의 길을 걸어온 것처럼, 앞으로 언제나 안전하고 건강하며 동시에 지속 가능한 아름다움을 위해 아로마티카가
					앞장서겠습니다. </span>
				<p>SUSTAINABLE CLEAN</p>
				<span>2016년, 아로마티카는 국내 제조 브랜드 최초로 미국 EWG VERIFIED™ 인증을
					획득하였습니다. EWG VERIFIED™ 인증은 가장 안전한 제품을 전해야 한다는 아로마티카 진심의 산물이며, 더 많은
					소비자가 안심하고 화장품을 구입할 수 있도록 늘 고민을 멈추지 않겠습니다. </span>
				<p>VEGAN BEAUTY</p>
				<span>아로마티카는 세계에서 가장 오래되고 권위 있는 채식주의 인증기관인 비건 소사이어티의 파트너로
					등록되어 있습니다. 우리는 생명 존중의 가치를 지키기 위해 동물 유래 원료를 사용하지 않으며, 식물성 천연 유기농 원료를
					처방합니다. </span>
				<p>AUTHENTICITY</p>
				<span><text style="font-weight:600">Sourcing of
					Natural Ingredients</text> - 지속개발 가능하고 안전한 원료를 구매하며, 원산지 생산 업체로부터 직접 구매하는
					것을 원칙으로 합니다.<br> <text style="font-weight:600">Expert
					in Research & Development</text> - 아로마티카는 자체 연구소를 통해 직접 연구 개발을 진행합니다. 자체
					연구소에서 특허받은 기술을 통해 합성향, 합성방부제 등의 유해물질을 철저히 배제하고 천연 에센셜 오일을 핵심으로 한 천연
					유기농 원료를 담아 가장 안전하고 효과적인 제품을 개발합니다.<br> <text
						style="font-weight:600">We Are Our Own Manufacturer</text> -
					아로마티카는 자사 제조공장에서 화장품을 100% 생산합니다. 또한 아로마티카는 에코서트(Ecocert) 유기농 화장품
					인증 및 국제 우수화장품 제조 및 품질경영시스템 인증(GMP ISO22716)을 받은 유기농 화장품 자사 제조공장에서
					엄격한 기준을 통해 안전한 제품을 생산합니다. 이는 곧, 안전한 천연 유기농 제품 생산을 위한 가장 까다로운 기준에
					부합하는 시설을 갖추었음을 의미합니다. </span>
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