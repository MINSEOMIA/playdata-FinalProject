<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-24
  Time: 오후 5:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <%--style css--%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote.css" rel="stylesheet">
    <link href="/css/vote/votedetail.css" rel="stylesheet">
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
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
        </nav>
    </div>
</header>
<!-- Page Wrapper -->
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
            <li class="sidbtn"><a href="/service/list" class="item">
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
        <div class="fg-head"><p>진행중인 아이디어 투표</p></div>
        <div class="vote-form">
            <div class="vote-box">
                <div class="vote-info">
                    조회수${voteboard.view} , 등록날짜${voteboard.wdate} ,마감날짜${voteboard.ddate}
                    <p class="vote-title">${voteboard.title}</p>
                    <div class="vote-content">
                    </div>
                </div>
                <div class="vote-img">
                    <c:if test="${voteboard.img1 != null}">
                        <img src="/read_img?fname=${voteboard.img1}&wnum=${voteboard.wnum}">
                    </c:if>
                    <c:if test="${voteboard.img2 != null}">
                        <img src="/read_img?fname=${voteboard.img2}&wnum=${voteboard.wnum}">
                    </c:if>
                    <c:if test="${voteboard.img3 != null}">
                        <img src="/read_img?fname=${voteboard.img3}&wnum=${voteboard.wnum}">
                    </c:if>
                </div>

                <div class="vote-option">
                    <div class="option-select">
                        <div>
                            <form action="/voteboard/resultpro2" method="post">
                                <input type="hidden" name="wnum.wnum" value="${voteboard.wnum}">
                                <input type="radio" id="vote1" name="item"
                                       value="${voteboard.item01}"/><label><span></span>${voteboard.item01}</label>
                                <input type="radio" id="vote2" name="item"
                                       value="${voteboard.item02}"/><label><span></span>${voteboard.item02}</label>
                                <c:if test="${voteboard.item03!=null && voteboard.item03!=''}">
                                    <input type="radio" id="vote3" name="item"
                                           value="${voteboard.item03}"/><label><span></span>${voteboard.item03}</label>
                                </c:if>
                                <c:if test="${voteboard.item04!=null && voteboard.item04!=''}">
                                    <input type="radio" id="vote4" name="item"
                                           value="${voteboard.item04}"/><label><span></span>${voteboard.item04}</label>
                                </c:if>

                                <c:if test="${(sessionScope.domtype==false)}">
                                    <button>투표</button>
                                </c:if>
                            </form>
                            <jsp:include page="/voteboard/count?item=${voteboard.item01}"></jsp:include>
                            <jsp:include page="/voteboard/count?item=${voteboard.item02}"></jsp:include>
                            <c:if test="${voteboard.item03!=null && voteboard.item03!=''}">
                                <jsp:include page="/voteboard/count?item=${voteboard.item03}"></jsp:include>
                            </c:if>
                            <c:if test="${voteboard.item04!=null && voteboard.item04!=''}">
                                <jsp:include page="/voteboard/count?item=${voteboard.item04}"></jsp:include>
                            </c:if>
                            <jsp:include page="/voteboard/totalcount?wnum=${voteboard.wnum}"></jsp:include>
                            <%--                            <span></span>--%>
                            <%--                            <input type="radio" id="vote1" name="radio"--%>
                            <%--                                   value="${voteboard.item01}"/><label><span></span>${voteboard.item01}</label>--%>
                            <%--                            <input type="radio" id="vote2" name="radio"--%>
                            <%--                                   value="${voteboard.item02}"/><label><span></span>${voteboard.item02}</label>--%>
                        </div>
                    </div>
                </div>
            </div>
            <form action="/voteboard/detailpro" method="post">
                <div class="detail-comment">
                    <h2 class="cmt-tt">댓글 작성</h2>

                    <input name="num.num" type="text" value="${sessionScope.num}">
                    <input name="wnum.wnum" type="text" value="${voteboard.wnum}">

                    <div class="commentBox">
                    <textarea id="writeComment" name="comment" maxlength="1000"
                              placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 삭제 또는 제제를 받을 수 있습니다."></textarea>
                        <button class="cmtbt" type="submit">작성</button>
                    </div>
                </div>
            </form>
        </div>


    </div>
    <c:forEach var="comment" items="${votecomment}">
    <div class="commentlist">
        <div class="cmtRod">
            <div>
                <form action="/voteboard/delcomment">
                    <input name="num.num" type="hidden" value="${sessionScope.num}">
                    <input name="cnum" type="hidden" value="${comment.cnum}">
                    <input name="wnum" type="hidden" value="${comment.wnum.wnum}">
                    <div class="cmt">
                        <span class="cmtwriter">${comment.num.mid}</span>
                        <c:if test="${(sessionScope.id==comment.num.mid)}">
                            <button>삭제</button>
                        </c:if>
                    </div>
                </form>
                <p>${comment.comment}</p>
                </c:forEach>
            </div>
            <hr>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>

