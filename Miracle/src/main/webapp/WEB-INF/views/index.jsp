<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Miracle</title>

    <!-- CDN CSS 불러오기 -->
    <!-- 이벤트페이지 -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap"
      rel="stylesheet"
    />

    <!-- CDN JS 불러오기 -->
    <!-- Jquery CDN -->
    <script
      src="https://code.jquery.com/jquery-3.6.3.min.js"
      integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
      crossorigin="anonymous"
    ></script>

    <!-- 이벤트 페이지 -->
    <script
      type="text/javascript"
      src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"
    ></script>

    <!-- GSAP -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.4/gsap.min.js"></script>
	
	<!-- 우편 번호 검색하는 기능 -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <!-- ---------------------------------------------------------------------------- -->

    <!-- 팀원 css연결  -->
    <link rel="stylesheet" href="resources/css/index.css" />
    <link rel="stylesheet" href="resources/css/account/account.css" />
    <link rel="stylesheet" href="resources/css/event/eventMain.css" />

    <!-- 팀원 js연결 -->
    <script src="resources/js/account/go.js"></script>
    <script src="resources/js/account/check.js"></script>
    <!-- ---------------------------------------------------------------------------- -->
  </head>

  <body>
    <header>
      <a id="logo" href="index.go">Miracle기본<span id="highlight">.</span></a>
      <a href="index2.go">디자인2&nbsp;&nbsp;&nbsp;</a>
      <a href="index3.go">디자인3&nbsp;&nbsp;&nbsp;</a>
      <div>
        <a href="rec.main.go">코스추천(준우공간)&nbsp;&nbsp;&nbsp;</a>
        <a href="event.main.go">이벤트페이지(태형공간)&nbsp;&nbsp;&nbsp;</a>
        <a href="myPage.main.go">마이페이지(권공간)&nbsp;&nbsp;&nbsp;</a>
        <a
          ><jsp:include page="${loginPage }"></jsp:include>&nbsp;&nbsp;&nbsp;</a
        >
      </div>
    </header>

    <hr />

    <div id="siteContentArea">
      <div>
        <div align="center">
          <jsp:include page="${contentPage }"></jsp:include>
        </div>
      </div>
    </div>

    <footer>
      <hr />
      <div>내정보</div>
      <div>보기</div>
      <div>수정</div>
      <div>내글</div>
    </footer>
  </body>
</html>
