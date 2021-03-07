<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.tabWrapping {
	top: 193px;
	left: 339px;
	width: 787px;
	height: 439px;
	background: #FFFFFF 0% 0% no-repeat padding-box;
	opacity: 1;
	box-shadow: 0 0 10px 2px gray;
	border-radius: 5px 5px 5px 5px;
}

.tabTitle {
	top: 220px;
	left: 393px;
	width: 140px;
	height: 21px;
	float: left;
	font: Bold 20px NanumGothic;
	letter-spacing: 0;
	color: #222222;
	opacity: 1;
	margin: 27px 00px 27px 23px;
}

.tabImg {
	margin-right: 10px;
}

.tabSearch {
	top: 212px;
	left: 884px;
	width: 214px;
	height: 36px;
	background: #FFFFFF;
	border: 2px solid #E0E3E7;
	border-radius: 19px;
	opacity: 1;
	text-align: center;
	font: Regular 14px/17px NanumGothic;
	color: #4A494A;
	float: right;
	margin-top: 19px;
	margin-right: 26px;
	padding: 0;
}

.tab_Menu {
	margin: 0px;
	padding: 0px;
	list-style: none;
	border: none;
}

.tabMenu {
	top: 267px;
	left: 363px;
	width: 131px;
	height: 31px;
	border-radius: 5px 5px 0px 0px;
	border: none;
	opacity: 1;
	float: left;
	font-size: 14px;
	margin-left: 10px;
	background-color: #DEE3EB;
	opacity: 1;
	border-bottom: none;
}

.tabMenu a {
	top: 267px;
	display: inline-block;
	width: 130px;
	height: 26px;
	border: 1px solid #DEE3EB;
	border-radius: 5px 5px 0px 0px;
	opacity: 1;
	text-decoration: none;
	text-align: center;
	padding-top: 4px;
	color: black;
	border-bottom: none;
}

.tabMenu.current {
	background: white;
}

.tabPage {
	width: 900px;
	padding-top: 23px;
	float: left;
	width: 100%;
	border: none;
}

.tabFrame {
	width: 100%;
	height: 335px;
	box-shadow: rgb(187, 187, 187) 0px -10px 10px -5px;
	border: none;
}

.tabContents {
	margin: 0 0 28px 0;
	border-radius: 5px 5px 0px 0px;
	font-size: 14px;
	float: left;
	width: 100%;
	height: 16px;
	padding-left: 23px;
}

.preNotice {
	top: 332px;
	left: 363px;
	width: 46px;
	height: 20px;
	border: 1px solid #0297E0;
	border-radius: 10px;
	opacity: 1;
	font-size: 9px;
	text-align: center;
	vertical-align: middle;
	display: table;
	color: #0297E0;
	float: left;
	padding-top: 4px;
	margin-right: 20px;
}

.noticeSubject {
	float: left;
	top: 335px;
	left: 424px;
	width: 281px;
	height: 16px;
	text-align: left;
	font: Regular 14px/14px NanumGothic;
	letter-spacing: 0;
	color: #222222;
	opacity: 1;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden
}

.tabDate {
	float: right;
	width: 17%;
}

.documentWrap {
	top: 193px;
	left: 339px;
	width: 603px;
	height: 439px;
	background: #FFFFFF 0% 0% no-repeat padding-box;
	opacity: 1;
	box-shadow: 0 0 10px 2px gray;
	border-radius: 5px 5px 5px 5px;
}

.situationWrap {
	top: 193px;
	left: 339px;
	width: 603px;
	height: 439px;
	background: #FFFFFF 0% 0% no-repeat padding-box;
	opacity: 1;
	box-shadow: 0 0 10px 2px gray;
	border-radius: 5px 5px 5px 5px;
}

.documentDate {
	float: right;
	width: 20%;
}

.situationTabMenu {
	top: 267px;
	left: 363px;
	width: 103px;
	height: 31px;
	border-radius: 5px 5px 0px 0px;
	border: none;
	opacity: 1;
	float: left;
	font-size: 14px;
	margin-left: 10px;
	background-color: #DEE3EB;
	opacity: 1;
	border-bottom: none;
}

.situationTabMenu a {
	top: 267px;
	display: inline-block;
	width: 102px;
	height: 26px;
	border: 1px solid #DEE3EB;
	border-radius: 5px 5px 0px 0px;
	opacity: 1;
	text-decoration: none;
	text-align: center;
	padding-top: 4px;
	color: black;
	border-bottom: none;
}

.situationTabMenuNew {
	top: 267px;
	left: 363px;
	width: 126px;
	height: 31px;
	border-radius: 5px 5px 0px 0px;
	border: none;
	opacity: 1;
	float: left;
	font-size: 14px;
	margin-left: 10px;
	background-color: #DEE3EB;
	opacity: 1;
	border-bottom: none;
}

.situationTabMenuNew a {
	top: 267px;
	display: inline-block;
	width: 126px;
	height: 26px;
	border: 1px solid #DEE3EB;
	border-radius: 5px 5px 0px 0px;
	opacity: 1;
	text-decoration: none;
	text-align: center;
	padding-top: 4px;
	color: black;
	border-bottom: none;
}

.situationTabMenuNew.current {
	background: white;
	border-bottom: 1px solid white;
}

.situationTabMenu.current {
	background: white;
	border-bottom: 1px solid white;
}

.documentSubject {
	float: left;
	top: 335px;
	left: 424px;
	width: 257px;
	height: 16px;
	text-align: left;
	font: Regular 14px/14px NanumGothic;
	letter-spacing: 0;
	color: #222222;
	opacity: 1;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden
}
</style>







</head>

<body>

	<%
		String[] aptAll = {};
		String[] apt123 = {"사회적 거리를 두기 위한 2주간의 '잠시 멈춤'", "아파트 공지입니다.", "코로나 관련 입주민 주의 사항", "마스크 구매 안내 사항",
				"부재중 택배 관련 안내문"};
		String[] anYangCityHall = {"사회적 거리를 두기 위한 2주간의 '잠시 멈춤'", "교체 및 추가 설치 업체선정 공고 결과"};
		String[] anYangGuOffice = {"승강기 자가발전장치 지원 사업 안내", "부품 교체 업체 선정 입찰공고"};
		String[] newDocument = {"3/19 미세먼지 비상 저감 조치 안내 합니다", "3/15코로나 19 예방방법 및 주의사항",
				"2/16 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내"};
		String[] newNotice = {"3/16 미세먼지 비상 저감 조치 안내 메일을 보내드립니다", "3/15코로나 19 예방방법 및 주의사항",
				"2/16 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내", "2/15 미세먼지 비상 저감 조치 안내"};
	%>

	<div class="tabWrapping" id="tabDiv1">
		<div style="display: inline-table; width: 787px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_notice.png">공지사항
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="검색어를 입력해주세요" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu tab1">
					<li class="tabMenu current tab1"><a href="#tabContent01">전체</a></li>
					<li class="tabMenu tab1"><a href="#tabContent02">아파트123</a></li>
					<li class="tabMenu tab1"><a href="#tabContent03">안양시청</a></li>
					<li class="tabMenu tab1"><a href="#tabContent04">만안구청</a></li>
				</ul>
				<div align="right"
					style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+더보기</div>
			</div>
			<div class="tabFrame">
				<div id="tabContent01" class="tabPage1">
					<%
						for (int i = 0; i < anYangGuOffice.length; i++) {
					%>
					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice" style="border-color: #FFA200; color: #FFA200">구청</p>
						<p><%=anYangGuOffice[i]%></p>

					</div>
					<%
						} ;
					%>
					<%
						for (int i = 0; i < anYangCityHall.length; i++) {
					%>
					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice" style="border-color: #1CA67D; color: #1CA67D">시청</p>
						<p><%=anYangCityHall[i]%></p>

					</div>
					<%
						} ;
					%>
					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice">아파트</p>
						<p class="noticeSubject"><%=apt123[0]%></p>

						<br>
					</div>


				</div>

				<div id="tabContent02" class="tabPage1">
					<%
						for (int i = 0; i < apt123.length; i++) {
					%>
					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice">아파트</p>
						<p class="noticeSubject"><%=apt123[i]%></p>
						<br>
					</div>
					<%
						} ;
					%>
				</div>

				<div id="tabContent03" class="tabPage1">
					<%
						for (int i = 0; i < anYangCityHall.length; i++) {
					%>
					<div class="tabContents">
						<p class="tabDate" style="float: right;">2020.03.16</p>
						<p class="preNotice" style="border-color: #1CA67D; color: #1CA67D">시청</p>
						<p><%=anYangCityHall[i]%></p>
					</div>
					<%
						} ;
					%>

				</div>
				<div id="tabContent04" class="tabPage1">
					<%
						for (int i = 0; i < anYangGuOffice.length; i++) {
					%>
					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice" style="border-color: #FFA200; color: #FFA200">구청</p>
						<p><%=anYangGuOffice[i]%></p>
					</div>
					<%
						} ;
					%>

				</div>

			</div>

		</div>
	</div>


	<hr>


	<div class="documentWrap" id="tabDiv2">
		<div style="display: inline-table; width: 603px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_text.png">문서유통함
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="검색어를 입력해주세요" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu tab2">
					<li class="tabMenu current tab2"><a
						href="#documentTabContent01">새로 수신한 공문</a></li>
					<li class="tabMenu tab2"><a href="#documentTabContent02">접수된
							공문</a></li>
					<li class="tabMenu tab2"><a href="#documentTabContent03">회신필요
							공문</a></li>
				</ul>
				<div align="right"
					style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+더보기</div>
			</div>
			<div class="tabFrame">
				<div id="documentTabContent01" class="tabPage2">
					<%
						for (int i = 0; i < newDocument.length; i++) {
					%>
					<div class="tabContents">
						<p class="documentDate">2020.03.16</p>
						<p><%=newDocument[i]%></p>

					</div>
					<%
						} ;
					%>


				</div>

				<div id="documentTabContent02" class="tabPage2">

					<div class="tabContents">
						<p class="tabDate">2020.03.16</p>
						<p class="preNotice">아파트</p>
						<br>
					</div>

				</div>

				<div id="documentTabContent03" class="tabPage2">

					<div class="tabContents">
						<p class="tabDate" style="float: right;">2020.03.16</p>
						<p class="preNotice" style="border-color: #1CA67D; color: #1CA67D">시청</p>
					</div>

				</div>
			</div>

		</div>
	</div>


	<hr>

	<div class="situationWrap" id="tabDiv3">
		<div style="display: inline-table; width: 100%; min-width: 600px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_speak.png">상황전파함
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="검색어를 입력해주세요" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu tab3">
					<li class="situationTabMenuNew tab3 current"><a
						href="#situationTabContent01">새로 수신한 방송</a></li>
					<li class="situationTabMenu tab3"><a
						href="#situationTabContent02">방송예정</a></li>
					<li class="situationTabMenu tab3"><a
						href="#situationTabContent03">미열람</a></li>
					<li class="situationTabMenu tab3"><a
						href="#situationTabContent04">미다운로드</a></li>
				</ul>
				<div align="right"
					style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+더보기</div>
			</div>
			<div class="tabFrame">
				<div id="situationTabContent01" class="tabPage3">
					<%
						for (int i = 0; i < newNotice.length; i++) {
					%>
					<div class="tabContents">
						<p class="documentDate">2020.03.16</p>
						<p class="documentSubject"><%=newNotice[i]%></p>

					</div>
					<%
						} ;
					%>


				</div>

				<div id="situationTabContent02" class="tabPage3">

					<div class="tabContents">

						<p class="preNotice">아파트</p>
						<br>
					</div>

				</div>

				<div id="situationTabContent03" class="tabPage3">

					<div class="tabContents">
						<p class="preNotice" style="border-color: #1CA67D; color: #1CA67D">시청</p>
					</div>


				</div>
				<div id="situationTabContent04" class="tabPage3">

					<div class="tabContents">
						<p class="preNotice" style="border-color: #FFA200; color: #FFA200">구청</p>
					</div>


				</div>

			</div>

		</div>
	</div>


	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

	<script type="text/javascript">
	
	
		function tabSettingNotice() {

			// 탭 컨텐츠 hide 후 현재 탭메뉴 페이지만 show
			$('.tabPage1').hide();
			$($('.tab1.current').find('a').attr('href')).show();
			$('.tab1').click(
			function(event) {
				var className = event.target.className;  // 현재 선택된 class네임

				var selectedLiTag = (tagName.toString() == 'A') ? $(

				event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체

				var currentLiTag = $('li[class~=current]'); // 현재 current 클래스를 가진 탭

				var isCurrent = false;

				// 현재 클릭된 탭이 current를 가졌는지 확인

				isCurrent = $(selectedLiTag).hasClass('current');
				var div1LiTagList = $("#tabDiv1 li");

				for (var i = 0; i < div1LiTagList.length; i++) {
					if (div1LiTagList[i] != isCurrent) {
						$($(currentLiTag).find('a').attr('href')).hide();
						$(currentLiTag).removeClass('current');
						$(selectedLiTag).addClass('current');
						$($(selectedLiTag).find('a').attr('href')).show();
					}
				}

				return false;
			});
		}

		function tabSettingDocument() {
			$('.tabPage2').hide();

			$($('tab2.current').find('a').attr('href')).show();

			$('.tab2').click(

			function(event) {

				var tagName = event.target.tagName; // 현재 선택된 태그네임

				var selectedLiTag = (tagName.toString() == 'A') ? $(

				event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체

				var currentLiTag = $('li[class~=current]'); // 현재 current 클래스를 가진 탭

				var isCurrent = false;

				// 현재 클릭된 탭이 current를 가졌는지 확인

				isCurrent = $(selectedLiTag).hasClass('current');
				var div1LiTagList = $("#tabDiv2 li");

				for (var i = 0; i < div1LiTagList.length; i++) {
					if (div1LiTagList[i] != isCurrent) {
						$($(currentLiTag).find('a').attr('href')).hide();
						$(currentLiTag).removeClass('current');
						$(selectedLiTag).addClass('current');
						$($(selectedLiTag).find('a').attr('href')).show();
					}
				}

				return false;
			});
		}

		function tabSettingSituation() {
			$('.tabPage3').hide();

			$($('tab3.current').find('a').attr('href')).show();

			$('.tab3').click(

			function(event) {

				var tagName = event.target.tagName; // 현재 선택된 태그네임

				var selectedLiTag = (tagName.toString() == 'A') ? $(

				event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체

				var currentLiTag = $('li[class~=current]'); // 현재 current 클래스를 가진 탭

				var isCurrent = false;

				// 현재 클릭된 탭이 current를 가졌는지 확인

				isCurrent = $(selectedLiTag).hasClass('current');
				var div1LiTagList = $("#tabDiv3 li");

				for (var i = 0; i < div1LiTagList.length; i++) {
					if (div1LiTagList[i] != isCurrent) {
						$($(currentLiTag).find('a').attr('href')).hide();
						$(currentLiTag).removeClass('current');
						$(selectedLiTag).addClass('current');
						$($(selectedLiTag).find('a').attr('href')).show();
					}
				}

				return false;
			});
		}

		$(function() {// 탭 초기화 및 설정
			tabSettingNotice();
			tabSettingDocument();
			tabSettingSituation();
		});
	</script>




</body>

</html>