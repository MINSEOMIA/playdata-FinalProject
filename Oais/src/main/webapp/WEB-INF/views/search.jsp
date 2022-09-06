<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: idong-geun
  Date: 2022/08/31
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--  css  --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/search.css" rel="stylesheet">
    <title>검색</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search">

                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->

                </div>
            </form>
            <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <div class="button-group" style="display: flex; align-content: space-between;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px"
                                             style="width: auto;">마이페이지</button></a>
             </span>

                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>
                </c:if>
            </div>
            <%--            <c:if test="${sessionScope.num != null}">--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--                환영합니다! ${sessionScope.name}님--%>
            <%--             </span>--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>--%>
            <%--             </span>--%>

            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>--%>
            <%--             </span>--%>

            <%--            </c:if>--%>


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
            <li class="sidbtn"><a href="/community/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="/service/" class="item">
                <div>고객센터</div>
            </a></li>
            <br class="hhd">이용약관ㆍ<br/>
            개인정보처리방침<br/>
            @2022 Oais
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div class="bdlistbox">
        <div class="boardlist">
            <p class="sh_title">아이디어게시판</p>
            <c:forEach var="item" items="${result}">
                <div class="itmbox">
                    <c:if test="${item.typecd == 0}">
                        <c:if test="${item.img1 != null}">
                            <img class="sh_img" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                        </c:if>
                        <c:if test="${item.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if>
                        <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
                        <p>작성자 : ${item.num.name}</p>
                        <p>내용 : ${item.content}</p>
                        <p>마감일 : ${item.ddate}</p>
                        <p><c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                            <c:forEach var="hashelement" items="${hashtag}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:forEach>
                        </p>
                        <p>참여자 : ${item.part}</p>
                        <p>조회수 : ${item.views}</p>
                    </c:if>
                </div>
            </c:forEach>
        </div>
        <div class="boardlist">
            <p class="sh_title">투표게시판</p>
            <c:forEach var="item" items="${result}">
                <div class="itmbox">
                    <c:if test="${item.typecd == 4}">
                        <c:if test="${item.img1 != null}">
                            <img class="sh_img" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                        </c:if>
                        <c:if test="${item.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if>
                        <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
                        <p>작성자 : ${item.num.name}</p>
                        <p>내용 : ${item.content}</p>
                        <p><c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                            <c:forEach var="hashelement" items="${hashtag}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:forEach>
                        </p>
                        <p>마감일${item.ddate}</p>
                        <p>참여자수${item.part}</p>
                        <p>조회수${item.views}</p>
                    </c:if>
                </div>
            </c:forEach>
        </div>
        <div class="boardlist">
            <p class="sh_title">자유게시판</p>
            <c:forEach var="item" items="${result}">
                <class="itmbox">
                    <c:if test="${item.typecd == 1}">
                        <c:if test="${item.img1 != null}">
                            <img class="sh_img" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                        </c:if>
                        <c:if test="${item.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if>
                        <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
                        <p>닉네임${item.num.name}</p>
                        <p>내용${item.content}</p>
                        <p><c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                            <c:forEach var="hashelement" items="${hashtag}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:forEach>
                        </p>
                        <p>마감일자${item.ddate}</p>
                        <div>
                            <p class="p_c">참여자${item.part}</p>
                            <p class="p_c">조회수${item.views}</p>
                        </div>
                    </c:if>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
