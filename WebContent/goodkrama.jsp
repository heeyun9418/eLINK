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
					<a href="https://goodkrama.com/" target="blank">goodkrama</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product4.png" />
			</div>

			<div id="product">
				<p>ABOUT US</p>
				<span>굿크러마는 전통적인 직조 기술과 현대적인 디자인을 혼합하여 여성과 남성을위한 다재다능하고 계절을
					초월한 의류를 디자인합니다. 우리는 투명한 커뮤니케이션, 순환 공급망 및 공정 거래 생산을 믿습니다. 우리는 윤리와
					미학이 상호 배타적이지 않음을 보여주기 위해 우주에 기여하는 장인 정신과 제작자를 응원합니다. 크러마는 캄보디아와 지역을
					상징하는 체크 무늬 패턴이있는 전통적인 실크 또는면 스카프입니다. 모든 사람들이 수백 가지 방식으로 사용하는 크러마는
					기능과 미학 사이의 균형을 구체화합니다.</span>

				<p>폐기물 감소 / Reducing textile waste</p>
				<span>폐기 된 직물, 부스러기등의 대부분은 완벽하게 사용할 수 있으며 매립지에서 더 잘 보입니다. 우리는
					지역 공장의 섬유 폐기물을 재활용하여 의류를 만드는 데 사용합니다. 기존 직물을 사용함으로써 새로운 직물을 생산하는 데
					필요한 자원을 아틀리에로 운반하는 데 필요한 배출량을 제거하고 있습니다.</span>

				<p>지원 / Supporting a living wage</p>
				<span>캄보디아 공장은 주로 외국인 소유이며 저비용 및 저 숙련 근로자의 대규모 풀을 활용합니다. 생활
					임금을 지원하고 우리가 현대의 노예라고 생각하는 것을 막습니다. 우리의 생산 파트너는 생활 임금 이상, 건강 혜택 및
					무엇보다도 기술 성장 및 개발을위한 교육 및 기회를받습니다. 우리는 위험에 처한 지역 사회에 직업 재봉 교육을 제공하는
					NGO를 지원합니다. 조립 라인에서 일하는 것이 아니라 전체 의류를 만드는 방법을 교육합니다.</span>

				<p>장인정신 / Appreciating local craftsmanship</p>
				<span>크러마에서 볼 수 있듯이 캄보디아는 수천 년 전으로 거슬러 올라가는 직물 직조의 강력한 유산을
					가지고 있습니다. 우리는 가정 기반 고용 및 공정 거래 관행을 통해 농촌 직물 커뮤니티와 협력하여 이러한 장인 정신을
					강화하기 위해 노력합니다.</span>

				<p>영향력 / Sharing our Impact</p>
				<span>우리는 지속 가능하다고 믿으며 그것을 증명할 데이터가 있습니다. 우리는 공급망의 각 단계와 우리가
					소비하는 물, 에너지 및 폐기물을 면밀히 추적합니다. 우리의 수치를 현재 산업 표준과 비교한 다음 각 제품 페이지의 관련
					정보 그래픽으로 변환하여 우리를 제품을 선택할 때마다 이러한 리소스에서 얼마나 절약하고 있는지 정확히 알 수 있습니다.</span>

				<p>순환 / Striving for Circularity</p>
				<span>제품 디자인에서 포장에 이르기까지 우리는 낭비를 피하고 재사용 및 재활용 가능한 모든 것을
					선호합니다. 우리는 직물 스크랩을 모두 보관하여 재활용 할 수있는 창의적인 방법을 찾습니다. 우리는 순환성이 앞으로
					나아가는 유일한 방법이라고 믿으며 루프를 닫는 새로운 방법을 지속적으로 모색합니다.</span>
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