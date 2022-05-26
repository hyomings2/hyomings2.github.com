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
    <style>
    /* 비주얼 슬라이더 */
    #vs { width:100%; overflow:hidden;  } 
    .img_box { width: 400%; }
    .img_box li { float:left; width: 25%; position:relative; }
    .img_box li a { display:block; }
    .img_box li a img { display:block; width: 100%; height:auto; }
    .img_box .tit_box { position:absolute; top:50px; left:50px; color:#fff; 
    text-shadow:1px 1px 1px #333; padding-left: 40px; z-index:30; }
    .vs_tit { font-size:42px; line-height:1.6; }
    .vs_com { font-size:16px; padding-top: 40px; }
    .btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
    .btn_group button { display:block; width: 80px; height: 80px; float:left; 
    background-color:rgba(0,0,0,0.6); border:none; outline: none; color:#fff; }
    .btn_group button i[class*='xi'] { color: #fff; }
    .btn_group button:hover i[class*='xi'] { cursor:pointer; color:gold; }

    /* 그리드 박스 */
    .grid_box { clear:both; width: 100%; }
    .grid_wrap { clear:both; width: 100%; }
    .grid_wrap li { float:left; height:16.66667vw; 
    background-position:center center; }
    .grid_wrap li.item1 { background-color: #d0dee8; } 
    .grid_wrap li.item2 { background-color: #e5edf3; } 
    .grid_wrap li.item3 { background-color: #f2f6f9 } 
    .grid_wrap li.item4 { background-image: url("./img/product_oled.jpg");}
    .grid_wrap li.item5 { background-image: url("./img/product_qd.jpg");}
    .grid_wrap li.item6 { background-image: url("./img/main_OLED.jpg"); }

    /* 그리드 */
    .col1 { width: 8.33333%; }
    .col2 { width: 16.66667%; }
    .col3 { width: 25%; }
    .col4 { width: 33.33333%; }
    .col5 { width: 41.66667%; }
    .col6 { width: 50%; }
    .grid_wrap li a { display:block; padding: 28px; }
    .col_tit, .col_com { color:#000; }
    .col_tit { padding-top: 18px; }
    .col_tit.w , .col_com.w { color:#fff; text-shadow:1px 1px 1px #333; }
    .col_tit.w { padding-top: 0; }
    .arrow { display:block; margin-top: 50px; }
    .arrow:before { content:""; display:block; width:2px; height:5px; 
    border-bottom:3px solid #555; float:left; transition:0.4s; }
    .arrow:after { content:""; display:block; width: 30px; height: 8px; 
    background-image: url("./img/newsletter_arrow_black.png"); float:left; }
    .col_com { font-size:12px; padding-top: 20px; font-weight: 200;  }
    .grid_wrap li:hover a .arrow:before { width: 18px;  }

    </style>
</head>
<body>
    <div class="wrap">
        <header id="hd">
        	<%@ include file="nav.jsp" %> 
        </header>
        <div id="content">
            <div id="vs">
                <ul class="img_box">
                    <li>
                        <a href="">
                            <img src="./img/kv-01.jpg" alt="스마트폰" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">디지털 세상으로 <br>연결해주는 '창(窓)'</h2>
                                <p class="vs_com">디스플레이 기술은 무한한 확장성으로 새로운 일상과 가치를 선사합니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/kv-02.jpg" alt="노트북" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">삼성디스플레이, '노트북 OLED'로 달린다</h2>
                                <p class="vs_com">2021년 노트북용 OLED 라인업 10종 이상으로 확대</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/kv-03_1.jpg" alt="폴더폰" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">생활의변화, 미래를 펼치다 Foldable Display</h2>
                                <p class="vs_com">디스플레이 혁신 기술이 집약된 폴더블 OLED는 한층 더 확장된 화면과 모빌리티 편의성을 제공합니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/kv-04_1.jpg" alt="스마트폰화소자" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">OLED Microsite 오픈</h2>
                                <p class="vs_com">삼성 OLED가 열어갈 새로운 세상을 만나보세요!</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                <script>
                $(document).ready(function(){
                    wd = $(window).width();
                    var intv = setInterval(function(){
                        ani1();
                    }, 5000);
                    function ani1(){
                        $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                            $(".img_box li").eq(0).appendTo($(".img_box"));
                            $(".img_box").css("margin-left","0px");
                        });
                    }
                    function ani2(){
                        $(".img_box").css("margin-left",-wd+"px");
                        $(".img_box li:last-child").prependTo($(".img_box"));
                        $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
                    }
                    $(".btn_group .next_btn").click(function(){
                        clearInterval(intv);
                        ani1();
                        intv = setInterval(function(){ ani1(); }, 5000);                    });
                    $(".btn_group .prev_btn").click(function(){
                        clearInterval(intv);
                        ani2();
                        intv = setInterval(function(){ ani1(); }, 5000);
                    });
                });    
                </script>
            </div>
            <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col2 item1">
                        <a href="">
                            <h3 class="col_tit">News</h3>
                            <p class="col_com">노트북 장시간 사용에 눈 건강이 걱정이라면? ‘삼성 OLED’가 해답</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item2">
                        <a href="">
                            <h3 class="col_tit">SDC Culture</h3>
                            <p class="col_com">기술과 사람을 더욱 가치있게 연결하는 최고의 디스플레이를 만듭니다.</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item3">
                        <a href="">
                            <h3 class="col_tit">채용정보</h3>
                            <p class="col_com">삼성디스플레이는 도전, 창의, 열정을 가진 전문 인재를 기다립니다.</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item4">
                        <a href="">
                            <h3 class="col_tit w">OLED Display</h3>
                            <p class="col_com w">Why 삼성 OLED</p>
                        </a>
                    </li>
                    <li class="col2 item5">
                        <a href="">
                            <h3 class="col_tit w">QD Display</h3>
                            <p class="col_com w">Take The Quantum Leap</p>
                        </a>
                    </li>
                    <li class="col2 item6">
                        <a href="">
                            <h3 class="col_tit w">Galaxy Z Fold 3의<br> 비밀을 파헤쳐 보자</h3>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <footer id="ft">
			<%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>