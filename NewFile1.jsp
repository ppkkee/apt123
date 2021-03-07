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

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

	<script type="text/javascript">
		var apt123 = [ "��ȸ�� �Ÿ��� �α� ���� 2�ְ��� '��� ����'", "����Ʈ �����Դϴ�.",
				"�ڷγ� ���� ���ֹ� ���� ����", "����ũ ���� �ȳ� ����", "������ �ù� ���� �ȳ���" ];
		var anYangCityHall = [ "��ȸ�� �Ÿ��� �α� ���� 2�ְ��� '��� ����'",
				"��ü �� �߰� ��ġ ��ü���� ���� ���" ];
		var anYangGuOffice = [ "�°��� �ڰ�������ġ ���� ��� �ȳ�", "��ǰ ��ü ��ü ���� ��������" ];

		var newDocument = [ "3/15�ڷγ� 19 ������ �� ���ǻ���",
				"3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.", "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var documented = [ "3/20 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.",
				"3/15�ڷγ� 19 ������ �� ���ǻ���", "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var returnNeedDocument = [ "3/15�ڷγ� 19 ������ �� ���ǻ���",
				"3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.", "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var newSituation = [ "3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.",
				"3/15�ڷγ� 19 ������ �� ���ǻ���", "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var announceSituation = [ "2/15 �̼����� ��� ���� ��ġ �ȳ�",
				"3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.", "3/15�ڷγ� 19 ������ �� ���ǻ���",
				"2/16 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var preSituation = [ "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.", "3/15�ڷγ� 19 ������ �� ���ǻ���",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];
		var notDownSituation = [ "3/16 �̼����� ��� ���� ��ġ �ȳ� ������ �����帳�ϴ�.",
				"3/15�ڷγ� 19 ������ �� ���ǻ���", "2/16 �̼����� ��� ���� ��ġ �ȳ�",
				"2/15 �̼����� ��� ���� ��ġ �ȳ�", "2/15 �̼����� ��� ���� ��ġ �ȳ�" ];

		
		
		$(document).ready(function(){
				noticeContent("A");
				documentContent("new")
				situationContent("new");
		});
		
		
		function changeTab(elm) {
			if ($(elm).parent().hasClass('current') == true) {
				return;
			} else {
				$($(elm).parent().parent().find("li")).removeClass("current");
				$(elm).parent().addClass('current');
			}
		}
		
		function noticeContent(tapType) {
			// A: ��ü, T: ����Ʈ, S: �õ�, G: ���� 

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
					innerHtml[htmlCnt++] = "<p class='preNotice' style='border-color: #FFA200; color: #FFA200'>��û</p>";
					innerHtml[htmlCnt++] = "<p>" + notiDate[i] + "</p>";
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
						innerHtml[htmlCnt++] = "<p class='documentDate'>2020.03.16</p>";
						innerHtml[htmlCnt++] = "<p>" + notiDate[i] + "</p>";
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
						innerHtml[htmlCnt++] = "<p class='documentDate'>2020.03.16</p>";
						innerHtml[htmlCnt++] = "<p>" + notiDate[i] + "</p>";
						innerHtml[htmlCnt++] = "</div>";
					}
				}
				$('#situationTabContent').empty();
				$('#situationTabContent').append(innerHtml.join(''));
			

		}
	</script>







	<div class="tabWrapping" id="tabDiv1">
		<div style="display: inline-table; width: 787px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_notice.png">��������
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="�˻�� �Է����ּ���" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu">
					<li class="tabMenu current tab1"><a
						onclick="noticeContent('A'), changeTab(this)">��ü</a></li>
					<li class="tabMenu tab1"><a
						onclick="noticeContent('T'), changeTab(this)">����Ʈ123</a></li>
					<li class="tabMenu tab1"><a
						onclick="noticeContent('S'), changeTab(this)">�Ⱦ��û</a></li>
					<li class="tabMenu tab1"><a
						onclick="noticeContent('G'), changeTab(this)">���ȱ�û</a></li>
				</ul>
				<div align="right"
					style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+������</div>
			</div>
			<div class="tabFrame">
				<div id="tabContent" class="tabPage1"
					style='height: 335px; overflow: auto;'>
					<div class='tabContents'></div>
				</div>
			</div>
		</div>
	</div>


	<hr>


	<div class="documentWrap">
		<div style="display: inline-table; width: 603px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_text.png">����������
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="�˻�� �Է����ּ���" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu">
					<li class="tabMenu current tab2"><a
						onclick="documentContent('new'), changeTab(this)">���� ������ ����</a></li>
					<li class="tabMenu tab2"><a
						onclick="documentContent('documented'), changeTab(this)">������ ����</a></li>
					<li class="tabMenu tab2"><a
						onclick="documentContent('return'), changeTab(this)">ȸ���ʿ� ����</a></li>
				</ul>
				<div align="right" style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+������</div>
			</div>
			<div class="tabFrame">
				<div id="documentTabContent" class="tabPage2"></div>
			</div>

		</div>
	</div>


	<hr>

	<div class="documentWrap">
		<div style="display: inline-table; width: 100%; min-width: 600px">

			<p class="tabTitle">
				<img class="tabImg" src="images/icon_speak.png">��Ȳ������
			</p>
			<div class="tabSearch">
				<input type="text"
					style="border: none; text-align: center; font-size: 14px; margin: 11.17px 0 10.83px 0"
					placeholder="�˻�� �Է����ּ���" /> <img class="tabImg"
					style="vertical-align: middle;" src="images/searchBtn.png" />
			</div>
		</div>

		<div>
			<div style="padding-left: 13px">
				<ul class="tab_Menu">
					<li class="situationTabMenuNew tab3 current"><a
						onclick="situationContent('new'),changeTab(this)">���� ������ ���</a></li>
					<li class="situationTabMenu tab3"><a
						onclick="situationContent('announce'),changeTab(this)">��ۿ���</a></li>
					<li class="situationTabMenu tab3"><a
						onclick="situationContent('pre'),changeTab(this)">�̿���</a></li>
					<li class="situationTabMenu tab3"><a
						onclick="situationContent('notDown'),changeTab(this)">�̴ٿ�ε�</a></li>
				</ul>


				<div align="right"
					style="font-size: 14px; margin-right: 27px; height: 33px; border: none">+������</div>
			</div>
			<div class="tabFrame">
				<div id="situationTabContent" class="tabPage3"></div>
			</div>
		</div>
	</div>

	<!-- <p class="preNotice" style="border-color: #1CA67D; color: #1CA67D">��û</p>
<p class="preNotice" style="border-color: #FFA200; color: #FFA200">��û</p> -->


</body>

</html>