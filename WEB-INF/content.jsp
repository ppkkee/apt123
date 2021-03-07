<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap&subset=korean"
	rel="stylesheet">
	<link rel="stylesheet" href="css/common.css" />
	<link rel="stylesheet" href="css/content2.css" />
	<script src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	
	var apt123 = [ "사회적 거리를 두기 위한 2주간의 '잠시 멈춤'", "아파트 공지입니다.",
					"코로나 관련 입주민 주의 사항", "마스크 구매 안내 사항", "부재중 택배 관련 안내문" ];
	var anYangCityHall = [ "사회적 거리를 두기 위한 2주간의 '잠시 멈춤'",
			"교체 및 추가 설치 업체선정 공고 결과" ];
	var anYangGuOffice = [ "승강기 자가발전장치 지원 사업 안내", "부품 교체 업체 선정 입찰공고" ];

	var newDocument = [ "3/15 코로나 19 예방방법 및 주의사항",
			"3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.", "2/16 미세먼지 비상 저감 조치 안내",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var documented = [ "3/20 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.",
			"3/15 코로나 19 예방방법 및 주의사항", "2/16 미세먼지 비상 저감 조치 안내",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var returnNeedDocument = [ "3/15 코로나 19 예방방법 및 주의사항",
			"3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.", "2/16 미세먼지 비상 저감 조치 안내",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var newSituation = [ "3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.",
			"3/15 코로나 19 예방방법 및 주의사항", "2/16 미세먼지 비상 저감 조치 안내",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var announceSituation = [ "2/15 미세먼지 비상 저감 조치 안내",
			"3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.", "3/15 코로나 19 예방방법 및 주의사항",
			"2/16 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var preSituation = [ "2/16 미세먼지 비상 저감 조치 안내",
			"3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.", "3/15 코로나 19 예방방법 및 주의사항",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
	var notDownSituation = [ "3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다.",
			"3/15 코로나 19 예방방법 및 주의사항", "2/16 미세먼지 비상 저감 조치 안내",
			"2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내" ];
			
		$(document).ready(function(){
			getReady();	
			noticeContent("A");
			documentContent("new")
			situationContent("new");	
		});

		function getReady(){
			var date = new Date();
			console.log(date);
			var y = date.getFullYear();
			var m = date.getMonth() + 1;
			var d = date.getDate();
			console.log(d);
			var theDay = date.getDay();
			var today = $(".dayKorean").text();

			switch (theDay) {
			case 0:
				week = "일";
				break;
			case 1:
				week = "월";
				break;
			case 2:
				week = "화";
				break;
			case 3:
				week = "수";
				break;
			case 4:
				week = "목";
				break;
			case 5:
				week = "금";
				break;
			case 6:
				week = "토";
			}
			$(".dayKorean").text("(" + week + ")");
			$(".date").text(y + "." + m + "." + d);

			//-----------topNotice 롤링-------------------------------
			var sNum = 0;
			var obj = $(".noticeTodayText>li").clone();
			$(".noticeTodayText").append(obj);
			setInterval(function() {
				if (sNum == 3) {
					sNum = 0;
					$(".noticeTodayText").css("margin-top", 0);
				}
				sNum++;
				$(".noticeTodayText").stop().animate({
					"margin-top" : -sNum * 70 + "px"
				}, 1000)
			}, 3000)
		}
		function changeTab(elm) {
			if ($(elm).parent().hasClass('current') == true) {
				return;
			} else {
				$($(elm).parent().parent().find("li")).removeClass("current");
				$(elm).parent().addClass('current');
			}
		}
		
		function noticeContent(tapType) {
			// A: 전체, T: 아파트, S: 시도, G: 군구 

			var innerHtml = [];
			var htmlCnt = 0;
			var notiDate = new Array();

			if (tapType == 'A') {
				var num;
				for (var i = 0; i < apt123.length; i++) {
					notiDate[i] = apt123[i];
					num++;
				}
				for (var i = num; i < anYangCityHall.length; i++) {
					notiDate[i] = anYangCityHall[i];
					num++;
				}
				for (var i = num; i < anYangGuOffice.length; i++) {
					notiDate[i] = anYangGuOffice[i];
				}				
			} else if (tapType == 'T') {
				notiDate = apt123;
			} else if (tapType == 'S') {
				notiDate = anYangCityHall;
			} else if (tapType == 'G') {
				notiDate = anYangGuOffice;
			} else {
				var num;
				for (var i = 0; i < apt123.length; i++) {
					notiDate[i] = apt123[i];
					num++;
				}
				for (var i = num; i < anYangCityHall.length; i++) {
					notiDate[i] = anYangCityHall[i];
					num++;
				}
				for (var i = num; i < anYangGuOffice.length; i++) {
					notiDate[i] = anYangGuOffice[i];
				}
			}
			if (notiDate != null && notiDate.length > 0) {
				for (var i = 0; i < notiDate.length; i++) {
					innerHtml[htmlCnt++] = "<div class='tabContents'>";
					innerHtml[htmlCnt++] = "<p class='tabDate'>2020.03.16</p>";
					innerHtml[htmlCnt++] = "<p class='preNotice' style='border-color: #FFA200; color: #FFA200'>구청</p>";
					innerHtml[htmlCnt++] = "<p class='noticeSubject'>" + notiDate[i] + "</p>";
					innerHtml[htmlCnt++] = "<p class='newButton'>";
					innerHtml[htmlCnt++] = "<img src='images/new.png' alt='새로운글' />";
					innerHtml[htmlCnt++] = "</p>";
					innerHtml[htmlCnt++] = "</div>";
				}
			}
			$('#tabContent').empty();
			$('#tabContent').append(innerHtml.join(''));
		}

		function documentContent(tapType) {
			// new: newDocument, documented: documented, return: returnNeedDocument

			var innerHtml = [];
			var htmlCnt = 0;
			var notiDate = new Array();
				if (tapType == 'new') {
					notiDate = newDocument;
				} else if (tapType == 'documented') {
					notiDate = documented;
				} else if (tapType == 'return') {
					notiDate = returnNeedDocument;
				} else {
					notiDate = newDocument;
					notiDate.push(documented);
					notiDate.push(returnNeedDocument);
				}
				if (notiDate != null && notiDate.length > 0) {
					for (var i = 0; i < notiDate.length; i++) {
						innerHtml[htmlCnt++] = "<div class='tabContents'>";
						innerHtml[htmlCnt++] = "<p class='tabDate'>2020.03.16</p>";
						innerHtml[htmlCnt++] = "<p class='documentText'>" + notiDate[i] + "</p>";
						innerHtml[htmlCnt++] = "</div>";
					}
				}
				$('#documentTabContent').empty();
				$('#documentTabContent').append(innerHtml.join(''));
			

		}

		function situationContent(tapType) {
			// new newSituation / announce announceSituation/ pre preSituation /notDown notDownSituation

			var innerHtml = [];
			var htmlCnt = 0;
			var notiDate = new Array();
			

				if (tapType == 'new') {
					notiDate = newSituation;
				} else if (tapType == 'announce') {
					notiDate = announceSituation;
				} else if (tapType == 'pre') {
					notiDate = preSituation;
				} else if (tapType == 'notDown') {
					notiDate = notDownSituation;
				} else {
					notiDate = newSituation;
					notiDate.push(announceSituation);
					notiDate.push(preSituation);
					notiDate.push(notDownSituation);
				}
				if (notiDate != null && notiDate.length > 0) {
					for (var i = 0; i < notiDate.length; i++) {
						innerHtml[htmlCnt++] = "<div class='tabContents'>";
						innerHtml[htmlCnt++] = "<p class='tabDate'>2020.03.16</p>";
						innerHtml[htmlCnt++] = "<p class='documentSubject'>" + notiDate[i] + "</p>";
						innerHtml[htmlCnt++] = "</div>";
					}
				}
			$('#situationTabContent').empty();
			$('#situationTabContent').append(innerHtml.join(''));
		}
</script>

<style>
/* * { */
/* 	font-family: 'Nanum Gothic', sans-serif; */
/* } */

/* .center { */
/* 	width: 1230px; */
/* 	margin: 0 auto; */
/* } */
/* @media screen and (max-width:1230px) { */
/* 	.center{ */
/* 	width: 100%; */
/* 	padding:0 50px; */
/* 	box-sizing:border-box; */
/* 	} */
/* 	.frame{ */
/* 	width: 100%;} */
/* } */
</style>

</head>
<body>
	<div id="contents">
		<div class="center">
			<div class="topNotice frame">
				<div class="day">
					<span class="dayIcon"><img src="images/today.png" alt="오늘날짜" /></span>
					<div class="dayText">
						<span class="date">2020.03.10</span><span class="dayKorean">(수)</span>
					</div>
				</div>
				<div class="noticeTodayWrap">
					<ul class="noticeTodayText">
						<li style="cursor: pointer"><span class="noticeTodayIcon"><img
								src="images/icon_speakTop.png" alt="공지사항" /></span>현재 방송가능한 상황전파가 1개
							있습니다.</li>
						<li style="cursor: pointer"><span class="noticeTodayIcon"><img
								src="images/icon_speakTop.png" alt="공지사항" /></span>현재 방송가능한 상황전파가 2개
							있습니다.</li>
						<li style="cursor: pointer"><span class="noticeTodayIcon"><img
								src="images/icon_speakTop.png" alt="공지사항" /></span>현재 방송가능한 상황전파가 3개
							있습니다.</li>
					</ul>
				</div>
			</div>
			<div class="middle clearFix">
				<div class="noticeAll frame" id="tabDiv1">
					<div style="display: inline-table; width: 787px">
						<p class="tabTitle">
							<img class="tabImg" src="images/icon_notice.png"/> 공지사항 
						</p>
						<div class="search tabSearch">
							<input type="text" placeholder="검색어를 입력해주세요" /><img src="images/searchBtn.png" alt="검색" class="searchBtn" />
						</div>
					</div>

					<div>
						<div style="padding-left: 13px" class="tabWrap">
							<ul class="tab_Menu">
								<li class="tabMenu current tab1" style="cursor: pointer"><a
									onclick="noticeContent('A'), changeTab(this)">전체</a></li>
								<li class="tabMenu tab1" style="cursor: pointer"><a
									onclick="noticeContent('T'), changeTab(this)">아파트123</a></li>
								<li class="tabMenu tab1" style="cursor: pointer"><a
									onclick="noticeContent('S'), changeTab(this)">안양시청</a></li>
								<li class="tabMenu tab1" style="cursor: pointer"><a
									onclick="noticeContent('G'), changeTab(this)">만안구청</a></li>
							</ul>
							<div class="more">+더보기</div>
						</div>
						<div class="tabFrame">
							<div id="tabContent" class="tabPage">
								<div class='tabContents'></div>
							</div>
						</div>
					</div>
				</div>
				<div class="middleRight">
					<div class="profile frame">
						<p class="profilePic"></p>
						<p class="welcome">안녕하세요, 주지훈님!</p>
						<p class="loginTime">최근 접속 일시 2020.03.10 16:22</p>
						<p class="logOutButton">
							<a href="">로그아웃</a>
						</p>
					</div>
					<div class="nameCard frame">
						<p class="aptIcon">
							<img src="images/namecard_icon.png" alt="아파트이미지" />
						</p>
						<p class="aptTitle">새움아파트</p>
						<div class="nameCardTop clearFix">
							<p class="aptNum">
								<span class="namecardIcon"><img
									src="images/icon_group.png" alt="세대수" /></span><span
									class="nameCardText">864세대</span>
							</p>
							<p class="address">
								<span class="namecardIcon"><img
									src="images/placeholder.png" alt="주소" /></span><span
									class="nameCardText">경기도 안양시 만안구 안양천서로 93</span>
							</p>
						</div>
						<div class="nameSearch">
							<span class="namecardIcon"><img
								src="images/job-search.png" alt="담당자 검색" /></span>
							<div class="nSearch">
								<input type="text" placeholder="담당자 이름을 검색해주세요" /><img
									src="images/searchBtn.png" alt="검색" class="nSearchBtn"
									style="cursor: pointer" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom">
				<div class="document frame">
					<div style="display: inline-table; width: 603px">
						<p class="tabTitle">
							<img class="tabImg" src="images/icon_text.png">문서유통함 
						</p>
						<div class="search tabSearch">
							<input type="text" placeholder="검색어를 입력해주세요" /><img
								src="images/searchBtn.png" alt="검색" class="searchBtn" />
						</div>
					</div>

					<div>
						<div style="padding-left: 13px">
							<ul class="tab_Menu">
								<li class="tabMenu current tab2" style="cursor: pointer"><a
									onclick="documentContent('new'), changeTab(this)">새로 수신한 공문</a></li>
								<li class="tabMenu tab2" style="cursor: pointer"><a
									onclick="documentContent('documented'), changeTab(this)">접수된 공문</a></li>
								<li class="tabMenu tab2" style="cursor: pointer"><a
									onclick="documentContent('return'), changeTab(this)">회신필요 공문</a></li>
							</ul>
							<div class="more">+더보기</div>
						</div>
						<div class="tabFrame">
							<div id="documentTabContent" class="tabPage"></div>
						</div>
					</div>

				</div>
				<div class="broadcast frame">
					<div style="display: inline-table; width: 100%; min-width: 600px">
						<p class="tabTitle">
							<img class="tabImg" src="images/icon_speak.png">상황전파함 
						</p>
						<div class="search tabSearch">
							<input type="text" placeholder="검색어를 입력해주세요" /><img
								src="images/searchBtn.png" alt="검색" class="searchBtn" />
						</div>
					</div>

					<div>
						<div style="padding-left: 13px">
							<ul class="tab_Menu">
								<li class="situationTabMenu current newSitu" style="cursor: pointer"><a
									onclick="situationContent('new'),changeTab(this)">새로 수신한 방송</a></li>
								<li class="situationTabMenu" style="cursor: pointer"><a
									onclick="situationContent('announce'),changeTab(this)">방송예정</a></li>
								<li class="situationTabMenu" style="cursor: pointer"><a
									onclick="situationContent('pre'),changeTab(this)">미열람</a></li>
								<li class="situationTabMenu" style="cursor: pointer"><a
									onclick="situationContent('notDown'),changeTab(this)">미다운로드</a></li>
							</ul>
							<div class="more">+더보기</div>
						</div>
						<div class="tabFrame">
							<div id="situationTabContent" class="tabPage"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>