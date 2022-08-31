<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-29
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<%--   css  --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/mypage.css" rel="stylesheet">

<%--  JS  --%>
    <script src="/js/mypage.js"></script>
    <title>마이페이지</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                환영합니다! ${sessionScope.name}님
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>
            </c:if>


        </nav>
    </div>
</header>

<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item">
                <div>홈</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>아이디어 공모</div>
            </a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item">
                <div>투표하기</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
                <div>고객센터</div>
            </a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <div class="myinfo">
            <h2>내 정보</h2>
            <form action="/member/mypage" method="post">
            <div>
                <input type="text" value="${m.mid}" readonly> <input type="submit" value="내 정보 수정">
            </div>
            <div>
                <input name="name" value="${m.name}" type="text"> <a href="/member/out">회원탈퇴</a>
            </div>
            </form>
        </div>
        <div>
            <div class="tab">
                <button class="tablinks" onclick="openmytab(event, 'MyUpload')">내 업로드</button>
                <button class="tablinks" onclick="openmytab(event, 'MyPartic')">내가 참여한</button>
                <button class="tablinks" onclick="openmytab(event, 'MyScrap')">내 스크랩</button>
            </div>

            <div id="MyUpload" class="tabcontent" style="display: block">
                <h3>내 업로드</h3>
                <c:forEach var="item" items="${myUploadList}">
                    <c:if test="${item.img1 != null && item.img1!=''}">
                    <img width="300px" height="300px" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                    </c:if>
                    <a href="/idea/detail?wnum=${item.wnum}">${item.title}</a>
                    <p>${item.part}</p>
                    <p>${item.views}</p>
                    <p>${item.hash}</p>
                </c:forEach>
            </div>

            <div id="MyPartic" class="tabcontent">
                <h3>내가 참여한</h3>
                    <c:forEach var="item" items="${myPartList}">
                        <c:if test="${item.wnum.img1 != null && item.wnum.img1!=''}">
                            <img width="300px" height="300px" src="/idea/read_img?fname=${item.wnum.img1}&wnum=${item.wnum.wnum}">
                        </c:if>
                        <a href="/idea/detail?wnum=${item.wnum.wnum}">${item.wnum.title}</a>
                        <p>${item.wnum.part}</p>
                        <p>${item.wnum.views}</p>
                        <p>${item.wnum.hash}</p>

                    </c:forEach>
            </div>

            <div id="MyScrap" class="tabcontent">
                <h3>내 스크랩</h3>
                <c:forEach var="item" items="${myScrapList}">
                    <a href="/idea/detail?wnum=${item.wnum.wnum}">${item.wnum.title}</a>
                    <p>${item.wnum.part}</p>
                    <p>${item.wnum.views}</p>
                    <p>${item.wnum.hash}</p>

                    <button onclick="location.href='/scrap/del?snum=${item.snum}'">스크랩삭제</button>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


</body>
</html>