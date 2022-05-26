<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <link rel="apple-touch-icon" href="./img/favicon.ico">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="https://www.samsungdisplay.co.kr">
    <meta name="title" content="삼성디스플레이">
    <meta name="description" content="삼성디스플레이의 기업정보,제품정보,미디어,커뮤니티">
    <meta name="keywords" content="삼성디스플레이,HD,퀀텀">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.samsungdisplay.co.kr">
    <meta property="og:title" content="삼성디스플레이">
    <meta property="og:description" content="삼성디스플레이의 기업정보,제품정보,미디어,커뮤니티">
    <meta property="og:image" content="./img/logo-square-letter.png">
    <title>삼성 Display</title>
    <!-- 기본 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트/폰트 모듈 연결 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
    @font-face {
        font-family: 'scB';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    } 
    @font-face {
        font-family: 'ROKAF';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSlabSerifBold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }   
    </style>
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <!-- <link rel="stylesheet" href="./css/reset.css"> -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="sub_common.css">
    <style>
    #page2 .tit_box { text-align:right; }    
    .sec_tit { font-size: 42px;    font-weight: 700;    line-height: 1.64;
    letter-spacing: -0.03em; padding-top: 2em; padding-bottom: 1em; }
    .tb1 { display:table; width: 100%; border-collapse: collapse; margin-bottom: 28px; }
    .tb1 tr { display:table-row; }
    .tb1 td, .tb1 th { display:table-cell; border-bottom:1px solid #666; 
    line-height: 3.6; }
    .tb1 tr:first-child th, .tb1 tr:first-child td { border-top:1px solid #666; }
    .tb1 th { background-color: #f6f5f4; width: 200px; font-weight:600; color:#222; }
    .tb1 td { color:#666; font-weight: 400; padding-left: 2em; }
    .para1 { padding-top: 2em; padding-bottom: 1em;  line-height: 2; font-size:18px; }
    .para2 { padding-top: 2em; padding-bottom: 1em;  line-height: 2; font-size:18px; 
    font-weight: 700; }
    
    .col_grid_lst { clear:both; }
    .col_grid_lst li { float: left; margin-right:53px; margin-bottom:53px; }
    .col_grid_lst li:nth-child(4n) { margin-right: 0; }
    .col_grid_box, .col_grid_cate_box { width: 280px; height: 280px; 
    background-repeat: no-repeat; background-position:center center; color:#fff; 
    box-sizing: border-box; }
    .col_grid_box { font-size: 20px; text-align: center; padding-top:2.4em; }
    .col_grid_cate_box { background-color: #0551a0; font-size:32px; line-height:280px;
    text-align: center; }
    .col_grid_box.item1 { background-image: url("./img/oled_list01.jpg"); }
    .col_grid_box.item2 { background-image: url("./img/oled_list02.jpg"); }
    .col_grid_box.item3 { background-image: url("./img/oled_list03.jpg"); }
    .col_grid_box.item4 { background-image: url("./img/oled_list04.jpg"); }
    .col_grid_box.item5 { background-image: url("./img/oled_list05.jpg"); }
    .col_grid_box.item6 { background-image: url("./img/oled_list06.jpg"); }
    .col_grid_box.item7 { background-image: url("./img/qd_list01.jpg"); }
    .col_grid_box.item8 { background-image: url("./img/qd_list02.jpg"); }

    .year_lst { clear:both; width: 1200px; }
    .year_lst li { width: 600px; float:left; padding:3.6em; min-height:520px;
    box-sizing: border-box; overflow-x:hidden; }
    .year_lst li:nth-child(2n+1) { clear:both; }
    .year_lst li img { display:block;  }
    .year_lst li:nth-child(4n) img { float:right; }
    .month_para { padding-top: 0.8em; padding-bottom:0.8em; font-size:16px; 
    padding-left:3em; text-indent:-2em; }
    .month_para::first-letter { font-weight:700; }

    .sec_img { clear:both; display:block; width: 1280px; margin:14px auto; }
    .thumb_lst { clear:both; width: 1200px; overflow:hidden; margin-top: 50px; }
    .thumb_lst li { float:left; padding-top:3em; width: 560px; margin-right: 80px;
    padding-bottom: 2.4em; min-height:150px; background-repeat: no-repeat;
    background-position: right center; box-sizing:border-box; border-top:1px solid #999; }
    .thumb_lst li.item1 { background-image: url("./img/f01-loc-01.jpg"); }
    .thumb_lst li.item2 { background-image: url("./img/f01-loc-02.jpg"); }
    .thumb_lst li.item3 { background-image: url("./img/f01-loc-03.jpg"); }
    .thumb_lst li.item4 { background-image: url("./img/f01-loc-04.jpg"); }
    .thumb_lst li.item5 { background-image: url("./img/f01-loc-07.jpg"); }
    .thumb_lst li.item6 { background-image: url("./img/f01-loc-08.jpg"); }
    .thumb_lst li.item7 { background-image: url("./img/f01-loc-09.jpg"); }
    .thumb_lst li.item8 { background-image: url("./img/f01-loc-10.jpg"); }

    .thumb_lst li:nth-child(2n) { margin-right: 0; }
    .thumb_txt_box { float:left; max-width:70%; }
    .thumb_tit { font-size:26px; color:#0f0f0f; line-height: 1; font-weight: 700; 
    letter-spacing:-0.1em; padding-bottom: 0.5em; }
    .thumb_com { font-size:16px; color:#666; font-weight: 300; padding-bottom: 2em; }
    .thumb_tel { font-size:20px; color:#666; font-weight: 300; }

    .tb2 { display:table; width: 100%; border-collapse: collapse; margin-bottom: 28px; }
    .tb2 tr { display:table-row; }
    .tb2 td, .tb2 th { display:table-cell; border-bottom:1px solid #666; 
    line-height: 3.6; }
    .tb2 tr th { border-top:1px solid #666; }
    .tb2 th { background-color: #f6f5f4; font-weight:600; color:#222; }
    .tb2 td { color:#666; font-weight: 400; padding-left: 2em; }
    .tb2 th:first-child, .tb2 tr td:first-child { width:70px; text-align:center;}
    .tb2 th:last-child, .tb2 tr td:last-child { width:110px; text-align: center; 
    padding-left: 0; }
    .page_nation { clear:both; text-align: center; padding-top:0.5em; padding-bottom:4em; }
    </style>
</head>
<body>
    <div class="wrap">
        <header id="hd">
        	<%@ include file="nav.jsp" %> 
        </header>
        <div id="content">
            <div class="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./img/company1.jpg" alt="기업개요">
                        <div class="tit_box">
                            <h2 class="sub_tit">기업 개요</h2>
                            <p class="sub_com">삼성디스플레이는 앞선 기술력을 바탕으로 세계 디스플레이 시장을 선도하고 있으며,<br>
                                끊임없는 기술혁신을 통해 상상 속에서만 가능했던 제품을 현실로 만드는 회사입니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">기업정보</li>
                                <li class="item3">
                                    <select name="sel" id="sel1" class="sel">
                                        <option value="company.html#page1" selected>기업개요</option>
                                        <option value="company.html#page2">CEO 인사말</option>
                                        <option value="company.html#page3">연혁</option>
                                        <option value="company.html#page4">사업장 정보</option>
                                        <option value="company.html#page5">전자공고</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sec_tit">기업 정보</h2>
                            <table class="tb1">
                                <tbody>
                                    <tr>
                                        <th>기업명</th>
                                        <td>삼성디스플레이</td>
                                        <th>대표이사</th>
                                        <td>최주선</td>
                                    </tr>
                                    <tr>
                                        <th>설립일</th>
                                        <td>2012.04.03</td>
                                        <th>업종</th>
                                        <td>디스플레이 패널</td>
                                    </tr>
                                    <tr>
                                        <th>본사소재</th>
                                        <td>경기도 용인시 기흥구 삼성로1</td>
                                        <th>종업원수</th>
                                        <td>22,4444</td>
                                    </tr>
                                </tbody>
                            </table>
                            <p class="para1">
                                삼성디스플레이는 2012년 OLED와 LCD의 합병으로 사업의 시너지를 극대화했으며, 독보적인 기술을 바탕으로 스마트폰, 노트북, 모니터, TV 등에 프리미엄 디스플레이 제품을 공급하고 있습니다. 세계 최초로 플렉서블 OLED와 폴더블 디스플레이를 양산하는 등 상상 속에만 존재하던 디스플레이를 현실로 만들어 가고 있습니다. 그리고 대형 디스플레이 시장의 판도를 뒤집을 QD 디스플레이라는 새로운 도전을 시작하고 있습니다.
                            </p>
                            <p class="para1">
                                삼성디스플레이는 자연을 그대로 담아내는 뛰어난 화질, 더욱 가볍고 얇은 디스플레이를 만드는 기술로 고객이 필요로 하는 토털 솔루션을 제공하고 있습니다. 다양한 디자인 혁신과, 120Hz 고주사율, 그리고 저전력 구동으로 5G 시대에 가장 알맞은 디스플레이, 고객의 건강까지 고려하는 블루라이트 저감 기술 등 압도적인 초격차 기술 개발로 고객에게 새로운 가치를 제공합니다.
                            </p>
                            <p class="para1">
                                글로벌 1위로서 시장을 이끌어 온 삼성디스플레이는 앞선 기술과 제품, 그리고 고객의 신뢰를 바탕으로 앞으로도 디스플레이 리더로서의 역할을 다할 것입니다.
                            </p>
                        </div>
                        <div class="page_wrap">
                            <h2 class="sec_tit">사업 영역</h2>
                            <ul class="col_grid_lst">
                                <li class="col_grid_cate">
                                    <div class="col_grid_cate_box">
                                        <h3 class="col_grid_cate_tit">OLED</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item1">
                                        <h3 class="col_grid_tit">스마트폰</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item2">
                                        <h3 class="col_grid_tit">태블릿</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item3">
                                        <h3 class="col_grid_tit">노트북</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box">
                                        <h3 class="col_grid_tit"></h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item4">
                                        <h3 class="col_grid_tit">IT</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item5">
                                        <h3 class="col_grid_tit">웨어러블</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item6">
                                        <h3 class="col_grid_tit">Automotive</h3>
                                    </div>
                                </li>
                                <li class="col_grid_cate">
                                    <div class="col_grid_cate_box">
                                        <h3 class="col_grid_cate_tit">QD</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item7">
                                        <h3 class="col_grid_tit">TV</h3>
                                    </div>
                                </li>
                                <li>
                                    <div class="col_grid_box item8">
                                        <h3 class="col_grid_tit">모니터</h3>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section class="page" id="page2">
                    <figure class="sub_ban">
                        <img src="./img/company2_1.jpg" alt="CEO 인사말">
                        <div class="tit_box">
                            <h2 class="sub_tit">CEO 인사말</h2>
                            <p class="sub_com">인간의 삶에 가치를 더하고 인류의 삶에 공헌하는 글로벌 초일류기업으로 항상 여러분과 함께 하겠습니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">기업정보</li>
                                <li class="item3">
                                    <select name="sel" id="sel2" class="sel">
                                        <option value="company.html#page1">기업개요</option>
                                        <option value="company.html#page2" selected>CEO 인사말</option>
                                        <option value="company.html#page3">연혁</option>
                                        <option value="company.html#page4">사업장 정보</option>
                                        <option value="company.html#page5">전자공고</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sec_tit">무한한 확장성을 가진 디스플레이 기술로 세상을 바꾸고 우리의 삶에<br> 새로운 가치를 더하겠습니다.</h2>
                            <p class="para2">안녕하세요. 삼성디스플레이 대표이사 최주선입니다.</p>
                            <p class="para1">‘디스플레이’는 기술을 넘어 사람과 사람, 사람과 세상을 연결하는 ‘창’입니다. 4차 산업혁명이라는 거대한 물결 속에서 5G 이동통신을 기반으로 하는 IoT가 현실이 되면 우리를 둘러싼 세상은 아주 빠른 속도로 변화할 것입니다.</p>
                            <p class="para1">흑백에서 컬러TV로, CRT에서 평판 디스플레이로, 피처폰에서 스마트폰으로 진화했을 때처럼 기술의 변화가 우리의 생활방식과 사회의 문화를 완전히 바꾸어 놓을 것입니다. 그때가 되면 인터넷을 통해 연결된 세상을 보다 생생하게 경험할 수 있도록 모든 제품, 모든 공간에 삼성디스플레이의 최첨단 미래 기술이 함께할 것입니다.</p>                                
                            <p class="para1">보다 큰 화면과 실제처럼 선명하고 생동감 넘치는 화질, 어떤 정형화된 형태가 아닌 새로운 디자인의 디스플레이가 우리의 시선이 닿는 모든 곳에서 새로운 세상을 보여줄 것입니다. 삼성디스플레이는 앞으로도 기술로 세상을 바꾸고 기술로 삶에 새로운 가치를 더하는 글로벌 초일류 기업으로 더 높이 성장하겠습니다.</p>
                            <p class="para1">감사합니다.</p>
                        </div>
                    </div>
                </section>
                <section class="page" id="page3">
                    <figure class="sub_ban">
                        <img src="./img/company3.jpg" alt="연혁">
                        <div class="tit_box">
                            <h2 class="sub_tit">연혁</h2>
                            <p class="sub_com">세계 디스플레이 역사의 한 가운데 삼성디스플레이가 있습니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">기업정보</li>
                                <li class="item3">
                                    <select name="sel" id="sel3" class="sel">
                                        <option value="company.html#page1">기업개요</option>
                                        <option value="company.html#page2">CEO 인사말</option>
                                        <option value="company.html#page3" selected>연혁</option>
                                        <option value="company.html#page4">사업장 정보</option>
                                        <option value="company.html#page5">전자공고</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <ul class="year_lst">
                                <li><img src="./img/2021_1.jpg" alt="2021"></li>
                                <li>
                                    <p class="month_para">
                                        2월 -RBA(Responsible Business Alliance) 가입<br>
                                        글로벌 안전 인증 회사인 UL로부터 우수한 <br>'야외 시인성(Sunlight Visibility)' 인증                                        
                                    </p>
                                    <p class="month_para">
                                        4월 -갤럭시 노트20 패널 환경성적표지 인증 획득
                                    </p>
                                    <p class="month_para">
                                        5월 -'초고해상도 산화물 TFT 개발' 국책과제 주관기업 선정<br>
                                        삼성 노트북 OLED, 우수한 게임 화질로 SGS 인증
                                    </p>
                                    <p class="month_para">
                                        6월 -2021 지속가능경영 보고서 발간
                                    </p>
                                    <p class="month_para">
                                        7월 -가락바위 저수지 친환경 '생태 식물섬' 조성
                                    </p>
                                    <p class="month_para">                                        8월 -편광판 기능을 내재화한 'Eco² OLED™' 적용
                                        10월 -디스플레이 업계 최초 'ISO 22301' 인증 획득
                                    </p>
                                    <p class="month_para">11월 -QD Display 제품 양산·출하</p>
                                </li>
                                <li>
                                    <p class="month_para">2월 -폴더블용 UTG 기술 상용화<br>
                                        세계 최초 27인치 QHD Real 1ms 게이밍 모니터 개발
                                    </p>
                                    <p class="month_para">
                                        7월 -QD 설비 반입 시작
                                    </p>
                                    <p class="month_para">8월 -어댑티브 프리퀀시(Adaptive Frequency)
                                        <br>기술 상용화</p>
                                    <p class="month_para">9월 -세계 최소 곡률 1.4R 폴더블 OLED 상용화<br>
                                        폐기물 매립 제로(Zero Waste to Landfill)<br>
                                        최우수 등급 'Platinum' 획득<br>
                                        '2019 동반성장지수 평가' 최우수 명예 기업 선정</p>
                                    <p class="month_para">10월 -폴더블 패널 환경성적표지 인증 획득</p>
                                    <p class="month_para">12월 -충남도-아산시와 물 자원 보호 위한 협약 체결</p>
                                </li>
                                <li>
                                    <img src="./img/2020_1.jpg" alt="2020">
                                </li>
                                <li>
                                    <img src="./img/2019_1.jpg" alt="2019">
                                </li>
                                <li>
                                    <p class="month_para">1월 -세계 최초 UHD 해상도 15.6인치 노트북용<br>
                                        OLED 디스플레이 개발</p>
                                    <p class="month_para">
                                        2월 -15.6'' UHD OLED 양산<br>
                                        32:9 49인치 듀얼 QHD 커브드 모니터 개발
                                    </p>
                                    <p class="month_para">3월 -갤럭시 S10 디스플레이 'Excellent A+' 등급 획득</p>
                                    <p class="month_para">4월 -폴더블 디스플레이 양산·출하</p>
                                    <p class="month_para">
                                        5월 -세계 최초 55인치 QUHD TV 개발<br>
                                        (65" 136ppi, 55" 160ppi)<br>
                                        27인치 FHD 240Hz 1500R 커브드 모니터 개발
                                    </p>
                                    <p class="month_para">8월 -갤럭시 노트10/노트10+, 디스플레이 'Excellent A+' 등급 획득<br>UL, 홀(Hole) 디스플레이 업계 최고 인정
                                    </p>
                                    <p class="month_para">10월 -제10회 디스플레이의 날 은탑산업훈장 수상</p>
                                    <p class="month_para">11월 -삼성기술상 우수상 수상 (Hole in Display 제품 양산)<br>폐기물 매립제로 GOLD 인증 획득
                                    </p>
                                    <p class="month_para">12월 -세계 최초 23.6" 1000R Curved 고곡률 모니터 개발<br>무역의 날 국무총리상 수상</p>
                                </li>
                                <li>
                                    <p class="month_para">1월 -65인치 UHD 비디오월 생산</p>
                                    <p class="month_para">2월 -갤럭시 S8 패널 환경성적표지 인증 획득</p>
                                    <p class="month_para">3월 -갤럭시 S9 디스플레이 'Excellent A+' 등급 획득</p>
                                    <p class="month_para">5월 -삼성국제기능경기대회 종합우승</p>
                                    <p class="month_para">6월 -세계 최초 8K 120Hz TV 양산<br>82인치 (9월) / 65인치, 75인치 (6월)
                                    </p>
                                    <p class="month_para">7월 -언브레이커블 패널 미국 UL 인증 획득<br>31.5인치 UHD 1800R 커브드 모니터 개발
                                    </p>
                                    <p class="month_para">8월 -AMOLED 누적생산량 20억대 돌파</p>
                                    <p class="month_para">9월 -차량용 E미러 양산</p>
                                    <p class="month_para">10월 -UHD 65인치 비디오월 생산<br>디스플레이의 날 국무총리표창 유공자 포상</p>
                                    <p class="month_para">11월 -삼성기술상 우수상 수상 (폴더블 디스플레이 개발)</p>
                                </li>
                                <li><img src="./img/2018_1.jpg" alt="2018"></li>
                                <li><img src="./img/2017_1.jpg" alt="2017"></li>
                                <li>
                                    <p class="month_para">1월 -세계 최초 Full Screen AMOLED 양산</p>
                                    <p class="month_para">3월 -SDV V3 설비 반입식</p>
                                    <p class="month_para">5월 -세계 최초 9.1인치 스트레처블 OLED 개발<br>SID 2017 디스플레이 산업상(DIA) 수상<br>무안경 3D OLED 개발</p>
                                    <p class="month_para">6월 -32:9 Curved 모니터 패널 양산<br>세계 최초 차량용 OLED 패널 개발</p>
                                    <p class="month_para">7월 -스마트폰용 트렌치 디스플레이 양산</p>
                                    <p class="month_para">8월 -갤럭시 노트8 디스플레이 'Excellent A+' 등급 획득</p>
                                    <p class="month_para">10월 -디스플레이의 날 유공자 포상 산업포장 수상</p>
                                </li>
                                <li>
                                    <p class="month_para">1월 -세계 최초 쿼드 엣지 디스플레이 양산</p>
                                    <p class="month_para">2월 -AMOLED 누적 생산량 10억대 돌파</p>
                                    <p class="month_para">3월 -세계 최초 1800R 커브드 모니터 개발</p>
                                    <p class="month_para">6월 -스마트폰용 OLED 점유율 97.7% 달성</p>
                                    <p class="month_para">7월 -녹색기업 현판 제막식<br>내장형 Y-OCTA 세계 최초 양산</p>
                                    <p class="month_para">8월 -갤럭시 노트7 디스플레이메이트 역대최고 화질등급 인증<br>크레파스, 공정위 '상생협력' 모범 사례 선정</p>
                                    <p class="month_para">9월 -자원순환 선도기업 대상, 대통령상수상</p>
                                    <p class="month_para">10월 -디스플레이의 날 유공자 포상, 대통령 표창</p>
                                    <p class="month_para">12월 -65인치 이상 초대형 LCD 패널 시장 점유율 1위</p>
                                </li>
                                <li><img src="./img/2016_1.jpg" alt="2016"></li>
                                <li><img src="./img/2015_1.jpg" alt="2015"></li>
                                <li>
                                    <p class="month_para">2월 -세계 최초 듀얼 엣지 디스플레이 양산
                                    <p class="month_para">3월 -세계 최초 3000R 커브드 TV 개발<br>세계 최초 31.5인치 1800R 모니터 양산</p>
                                    <p class="month_para">4월 -업계 최초 CESI(중국전자표준화연구소)<br>곡면디스플레이 성능 테스트 통과<br>A3라인 가동</p>
                                    <p class="month_para">6월 -55인치 미러 OLED 세계 최초 개발,<br>55인치 투명 OLED 세계 최초 개발</p>
                                    <p class="month_para">7월 -SDV 2동 건설 착수</p>
                                    <p class="month_para">9월 -스마트와치용 원형 OLED 양산</p>
                                    <p class="month_para">10월 -세계 최초 상하좌우 Frameless 모니터 개발<br>세계 최초 2000R 커브드 모니터 개발</p>
                                    <p class="month_para">12월 -2015 대한민국 자원봉사대상 행정자치부장관표창 수상</p></p>
                                </li>
                                <li>
                                    <p class="month_para">2월 -세계 최초 65인치 UHD 커브드 양산<br>세계 최초 웨어러블 기기용<br>플렉시블 디스플레이 양산</p>
                                    <p class="month_para">4월 -제7회 삼성기능경기대회 종합우승<br>커브드 TV 풀라인업 구축(48/55/65인치)</p>
                                    <p class="month_para">5월 -5.68인치 FHD 커브드 AMOLED 'SID 금상' 수상</p>
                                    <p class="month_para">6월 -세계 최초 QHD-AMOLED 디스플레이 양산</p>
                                    <p class="month_para">8월 -세계 최초 커브드 엣지 디스플레이 양산</p>
                                    <p class="month_para">9월 -A3 설비 반입식</p>
                                    <p class="month_para">10월 -적록색약자를 위한 ‘Vision Aid’ 기술 개발</p>
                                </li>
                                <li><img src="./img/2014_1.jpg" alt="2014"></li>
                                <li><img src="./img/2013_1.jpg" alt="2013"></li>
                                <li>
                                    <p class="month_para">1월 -85인치 UHD TV 패널 양산,<br>세계 최초 55인치 커브드 OLED 개발</p>
                                    <p class="month_para">5월 -세계 최초 5인치 풀HD 슈퍼AMOLED 개발</p>
                                    <p class="month_para">6월 -ZPD(Zero Pixel Defect) 대형 OLED TV 양산 출하</p>
                                    <p class="month_para">7월 -AMOLED 누적 생산량 4억대 돌파<br>중국 소주모듈법인(SSM) 설립</p>
                                    <p class="month_para">9월 -31.5인치 UHD 모니터 양산<br>98인치 UHD 대형 상업용 디스플레이(LFD) 양산<br>세계 최초 플렉서블 디스플레이 양산</p>
                                    <p class="month_para">10월 -SSL법인 TFT-LCD 8세대 라인 가동<br>YOUM On-Cell Touch AMOLED 양산</p>
                                    <p class="month_para">12월 -소주, 천진, 동관법인 ISO50001 인증 획득</p>
                                </li>
                                <li>
                                    <p class="month_para">1월 -55인치 슈퍼AMOLED TV<br>'CES 최고 혁신상' 수상<br>세계 최초 46인치 투명 LCD 양산</p>
                                    <p class="month_para">3월 -아우디 콘셉트카 7.67인치<br>WXGA(1280Ｘ768) OCTA 표준 패널 공급</p>
                                    <p class="month_para">7월 -삼성디스플레이 설립 (SMD, S-LCD 합병)<br>AMOLED 누적 생산 2억대 돌파<br>제1회 삼성디스플레이파트너협회(SDP) 창립총회 개최</p>
                                </li>
                                <li><img src="./img/2012_1.jpg" alt="2012"></li>
                                <li><img src="./img/2011_1.jpg" alt="2011"></li>
                                <li>
                                    <p class="month_para">3월 -세계 최초 22인치 투명 TFT-LCD 양산</p>
                                    <p class="month_para">5월 -세계 최초 5.5세대 AMOLED라인 가동,<br>SSL법인 LCD FAB 착공</p>
                                    <p class="month_para">6월 -SU Materials(삼성-우베코산) 합작법인 설립<br>AMOLED 누적 판매 1억 대 돌파<br>세계 최대 규모 AMOLED 라인 본격 가동</p>
                                    <p class="month_para">9월 -세계 최초 HD Super AMOLED 개발</p>
                                    <p class="month_para">11월 -중소형 디스플레이 세계1위<br>(점유율 20% 돌파)</p>
                                    <p class="month_para">12월 -천진법인(SDT) 2동 양산 개시</p>
                                </li>
                                <li>
                                    <p class="month_para">1월 -세계 최초 3D TV용 240Hz TFT-LCD 양산,<br>세계 최초 14인치 투명 AMOLED 개발</p>
                                    <p class="month_para">2월 -TFT-LCD 누적 판매 5억대 돌파</p>
                                    <p class="month_para">3월 -43인치 슈퍼와이드 TFT-LCD 양산(PID용)</p>
                                    <p class="month_para">5월 -세계 최초 터치일체형 9.7인치 AMOLED 양산<br>세계 최초 19인치 투명 AMOLED 개발</p>
                                    <p class="month_para">6월 -세계 최초 Super AMOLED 개발</p>
                                    <p class="month_para">11월 -세계 최초 70인치 산화물 반도체(Oxide)<br>TFT-LCD 개발,<br>세계 최초 4.5인치 플렉서블 AMOLED 개발</p>
                                    <p class="month_para">12월 -세계 최초 Super PLS 개발<br>AMOLED '대한민국 100대 기술' 선정</p></p>
                                </li>
                                <li>
                                    <img src="./img/2010_1.jpg" alt="2010">
                                </li>
                            </ul>   
                        </div>
                    </div>
                </section>
                <section class="page" id="page4">
                    <figure class="sub_ban">
                        <img src="./img/company4.jpg" alt="사업장 정보">
                        <div class="tit_box">
                            <h2 class="sub_tit">사업장 정보</h2>
                            <p class="sub_com">삼성디스플레이의 사업장, 글로벌 네트워크, 연구소 정보입니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">기업정보</li>
                                <li class="item3">
                                    <select name="sel" id="sel4" class="sel">
                                        <option value="company.html#page1">기업개요</option>
                                        <option value="company.html#page2">CEO 인사말</option>
                                        <option value="company.html#page3">연혁</option>
                                        <option value="company.html#page4" selected>사업장 정보</option>
                                        <option value="company.html#page5">전자공고</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sec_tit">국내외 사업장</h2>
                            <img src="./img/f01.jpg" alt="국내외사업장" class="sec_img">
                            <ul class="thumb_lst">
                                <li class="item1">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit ">기흥캠퍼스(본사)</h3>
                                        <p class="thumb_com">경기도 용인시 기흥구 삼성로 1</p>
                                        <p class="thumb_tel">+82 31 5181 1114</p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">아산1캠퍼스</h3>
                                        <p class="thumb_com">충청남도 아산시 탕정면 삼성로 181</p>
                                        <p class="thumb_tel">+82 41 535 1114</p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">아산2캠퍼스</h3>
                                        <p class="thumb_com">충청남도 아산시 탕정면 삼성로 181</p>
                                        <p class="thumb_tel">+82 41 623 1114</p>
                                    </div>
                                </li>
                                <li class="item4">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">천안캠퍼스</h3>
                                        <p class="thumb_com">충청남도 천안시 서북구 번영로 465</p>
                                        <p class="thumb_tel">+82 41 599 1114</p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">Samsung Display Tianjin<br>
                                            (SDT)</h3>
                                        <p class="thumb_com">No. 25, MipFouch Road, Xiqing District, Tianjin, China</p>
                                        <p class="thumb_tel">+86 22 2380 8100</p>
                                    </div>
                                </li>
                                <li class="item6">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">Samsung Display Dongguan<br>(SDD)</h3>
                                        <p class="thumb_com">High Tech Industrial Zone, Houjie, Dongguan, Guangdong, China</p>
                                        <p class="thumb_tel">+86 769 8290 1608</p>
                                    </div>
                                </li>
                                <li class="item7">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">Samsung Display Vietnam (SDV)</h3>
                                        <p class="thumb_com">Yen Phong Industrial Zone, Yen Trung Communes, Yen Phong District, Bac Ninh Province, Vietnam</p>
                                        <p class="thumb_tel">+84 24 1390 5021</p>
                                    </div>
                                </li>
                                <li class="item8">
                                    <div class="thumb_txt_box">
                                        <h3 class="thumb_tit">SAMSUNG DISPLAY NOIDA PVT.<br>
                                            LTD. (SDN)</h3>
                                        <p class="thumb_com">B-1D, Sector-81, Phase II, Noida PIN No. 201305,
                                            (U.P) India</p>
                                        <p class="thumb_tel">+91 120 6275500</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section class="page" id="page5">
                    <figure class="sub_ban">
                        <img src="./img/company5.jpg" alt="전자공고">
                        <div class="tit_box">
                            <h2 class="sub_tit">전자공고</h2>
                            <p class="sub_com">고객과의 신뢰와 기업의 가치를 높이기 위한 첫걸음으로 정확한 전자공고를 제공합니다.</p>
                        </div>
                    </figure>
                    <div class="bread_box">
                        <div class="bread_wrap">
                            <ul class="bread">
                                <li class="item1">
                                    <a href="index" class="home">HOME</a>
                                </li>
                                <li class="item2">기업정보</li>
                                <li class="item3">
                                    <select name="sel" id="sel5" class="sel">
                                        <option value="company.html#page1">기업개요</option>
                                        <option value="company.html#page2">CEO 인사말</option>
                                        <option value="company.html#page3">연혁</option>
                                        <option value="company.html#page4">사업장 정보</option>
                                        <option value="company.html#page5" selected>전자공고</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sec_tit">결산 공고</h2>
                            <table class="tb2">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>제목</th>
                                        <th>날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2</td>
                                        <td><a href="">제10기 결산공고</a></td>
                                        <td>2022.03.11</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="">제9기 결산공고</a></td>
                                        <td>2021.03.16</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                            <p class="page_nation"><a href="">1</a></p>
                        </div>
                    </div>
                </section>
            </div>
            <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
        </div>
        <footer id="ft">
			<%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>