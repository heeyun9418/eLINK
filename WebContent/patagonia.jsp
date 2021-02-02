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
					<a href="http://www.patagonia.co.kr/shop/main/index.php"
						target="blank"> patagonia </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product5.png" />
			</div>

			<div id="product">
				<p>Our Reason for Being</p>
				<span>우리는 지구상의 모든 생명체가 멸종위기에 처해있다는 사실을 잘 알고 있습니다. 이에 대한 변화를
					만들어 내기 위해 사업을 이용하고, 자원을 투자하고, 목소리를 높이며, 때로는 상상력을 활용합니다. 파타고니아는
					등반장비를 만들던 작은 회사에서 출발해, 지금은 전 세계적으로 클라이밍, 서핑, 트레일러닝, 산악자전거, 스키-스노보드,
					플라이낚시 관련 제품을 판매합니다. 이들 스포츠는 모두 엔진이 존재하지 않는 조용한 스포츠입니다. 그리고 이들 스포츠의
					보상은 메달이나 순위, 관중의 환호가 아닌, 힘겹게 얻어낸 개인적인 영광의 순간과 자연과의 교감입니다. 이것이
					파타고니아가 추구하는 ‘알피니즘(Alpinism)’입니다. </span>

				<p>Core Values(핵심 가치)</p>
				<span>한 무리의 클라이머들과 서퍼들이 모여 파타고니아를 시작했던 사업 초기에는 모든 것이 단순
					명쾌했습니다. 지금은 사업의 외형이 그때와는 비교할 수 없을 만큼 커졌지만, 여전히 우리는 제품 디자인에 있어
					‘단순함’과 ‘기능성’을 핵심가치로 유지하고 있습니다.</span>

				<p>Build the best products(최고의 제품)</p>
				<span>파타고니아가 말하는 최고의 제품은 기능이 뛰어나야 하고, 수선이 용이해야 하며, 무엇보다 내구성이
					월등해야 합니다. 환경에 피해를 주지 않기 위해 우리가 할 수 있는 가장 직접적인 방법은 몇 세대에 걸쳐 입을 수 있는
					제품을 만드는 것, 또 재활용이 가능한 소재로 제품을 만드는 것입니다. 그런 의미에서 최고의 제품을 만드는 것은 곧
					지구를 되살리는 일이 될 수 있습니다.</span>

				<p>Cause no unnecessary harm(불필요한 환경 피해의 최소화)</p>
				<span>매장에 불을 밝히는 일부터 시작해 셔츠를 염색하는 과정까지, 우리가 하는 모든 사업행위가 환경에
					피해를 준다는 사실을 알고 있습니다. 대신 우리는 어떻게 변화할 수 있을지 끊임없이 고민하며, 방법을 찾아낸 부분이
					있다면 사회와 공유합니다. 그러나 이것 만으로는 결코 충분치 않다는 반성 아래, 환경에 피해를 주지 않는 것을 넘어
					환경에 이로움을 줄 수 있는 방법을 찾고 있습니다.</span>

				<p>Use business to protect nature(환경 보호를 위한 사업)</p>
				<span>지금 우리 사회가 마주하고 있는 환경위기에 대응하기 위해서는 강력한 리더십이 필요합니다. 문제의
					원인을 알아냈다면 행동해야 합니다. 우리는 기꺼이 위험을 감수하며, 자연과 생명의 안정과 온전함 그리고 아름다움을
					보호하기 위해 행동에 나섭니다.</span>

				<p>Not bound by convention(새로움)</p>
				<span>관습에 얽매이지 않고 새로운 길을 찾아내는 것. 그동안 파타고니아가 성공할 수 있었고, 앞으로
					즐겁게 사업을 해 나갈 수 있는 비결입니다.</span>
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