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
					<a href="https://pleatsmama.com/" target="blank"> pleatsmama</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product6.png" />
			</div>

			<div id="product">
				<p>지속가능한 라이프스타일</p>
				<span>플리츠마마는 환경과 자신에 대한 올바른 태도를 지키며 살아가는 의식있는 소비자(conscious
					consumer)들을 위해 친환경 소재를 사용하여 쓰레기가 발생하지 않는 제작방법으로 패셔너블한 제품을 만들며 아름답고
					지속 가능한 삶의 방식을 제안하기 위해 2017년 11월에 시작된 브랜드입니다. </span>

				<p>리사이클 / Recycle</p>
				<span>16개의 페트병이 가방이 되다! 페트병과 같은 플라스틱은 분해되기까지 100년이 넘게
					걸립니다.가급적 플라스틱을 만들지 않는것이 좋지만 지구에 탄생한 플라스틱을 재활용하여 가급적 오랫동안 사용하는 것도
					우리의 몫입니다. 플리츠마마는 페트병 재활용 원사를 활용하여 이산화탄소 배출 및 쓰레기 매립량을 획기적으로 줄이고 석유
					자원을 절약하는데 동참합니다.</span>

				<p>최소한의 포장 / Low Impact Package</p>
				<span>포장까지 빈틈없이 최소한으로 플리츠마마는 환경에 미치는 영향을 최소화 하기위해 제품 포장에도 세심한
					주의를 기울이고 있습니다. 낱개 포장시 자가접착식 완충포장제를 활용하여 폴리백, 배송용 별도 박스, 별도 완충재 등의
					사용을 최소화하여 과대 포장 및 포장용 쓰레기 배출을 줄이려 노력합니다.</span>

				<p>제로웨이스트 / Zerowaste</p>
				<span>자투리 하나도 남기지 말자! 플리츠마마의 모든 가방은 고급 니트공법을 활용하여 제작됩니다.
					일괄적으로 직조된 원단을 재단하여 봉제하는 과정이 아니라 하나하나 성형하여 편직하기 때문에 재단으로 인하여 버려지는
					자투리 원단이 발생하지 않습니다.</span>

				<p>제주로 부터 / From JEJU</p>
				<span>플리츠마마는 효성TNC, 제주도와의 MOU 체결 국내 최초로 100% 제주 폐페트병 재생원사를
					활용하고 있습니다. 특히 세계 최초 100% 리사이클 스판덱스 상용화에도 성공하였습니다. *리젠제주 : 국내 최초
					100% 제주 폐페트병 리사이클 폴리에스터 *크레오라리젠 : 세계 최초 100% 리사이클 스판덱스</span>

				<p>반영구적인 플리츠 / Permanent Pleats</p>
				<span>전세계 최초 니트 플리츠 리얼 에코백 플리츠마마의 니트백은 재생원사를 활용한 것 뿐만 아니라
					복원력이 우수한 독창적 플리츠로 디자인 등록 및 특허를 획득하였습니다. 플리츠마마의 독특한 주름 디자인은 고온열처리 또는
					화학처리에 의한 인위적 주름이 아니라 원단을 편직하여 구조적으로 구성한 주름으로 시간이 지나도 세탁 후에도 본래의
					주름형태를 유지합니다.</span>
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