# playdata-FinalProject
## 개발기간 : 2022.8.22 ~ 2022.9.15
## 소개
  다양한 목적을 가진 이용자들이, 제약과 장벽없이 크고작은 아이디어를 공유하며 소통할 수 있는 웹 서비스를 구축하고자 합니다.
기존의 아이디어 공모 웹서비스들은 공모글을 게재하는것만으로 해당 사이트에 이용비용을 지불해야합니다.
또한 최소 상금이 29만원부터 시작하는 등, 전문가,사업가 그리고 기업담당자가 아닌 단순 이용자들이 가볍게 아이디어를 공모하기에 부담이 되는 구조입니다.
이에 따라 사이트 이용자는 대부분 창업가나 기업, 사업가로 이루어져, 단순 이용자가 부담없이 접근하기에 어려운 장벽이 있습니다.
저희는 라운지처럼 이용자들이 가볍고 소소한 아이디어를 서로 공유할 수 있는 환경을 구축하고,
단순 의견 공유만이 아닌, 투표를 통해 아이디어를 공모하는 등의 서비스 확장을 통해 하나의 idea bank같은 커뮤니티를 개발하는 것이 목표입니다.

## 개발 인원

- [yjs6156](https://github.com/yjs6156)
- [dongry-lee](https://github.com/dongry-lee) <스크럼 마스터>
- [MINSEOMIA](https://github.com/MINSEOMIA) <팀장>
- [dorumamu](https://github.com/dorumamu)

## 개발 환경

- 운영체제:   window10, macOS<br>
- DB:         MySQL<br>
- framework:  spring boot(JPA, JSP)<br>
- IDE: IntelliJ
- Front-End: html,css,js
- 협업 및 일정관리: Github,Git-desktop, Slack, Discord, Agile Process(Scrum)
## 배포
server - AWS/EC2<br>
DB - AWS/RDS<br>
도메인 생성 - GoDaddy

## git branch 전략
git-flow<br>
- main
- develop
- minseomia
- JS
- jinwoong
- dongry

## 웹 기획
https://www.figma.com/file/2k5LM7vJIgZkTaAPUKbmDj/Oais?node-id=6%3A70
<img width="552" alt="1 메인화면" src="https://user-images.githubusercontent.com/110527157/186382235-b9b29651-c78a-46f6-bd38-4e96b495aa0b.png">
<img width="549" alt="2  로그인" src="https://user-images.githubusercontent.com/110527157/186382270-37ee2e5e-2ff7-4f5d-86e1-bf21ad0f7dc0.png">
<img width="542" alt="3 회원가입" src="https://user-images.githubusercontent.com/110527157/186383195-0bf4f3b0-6672-4c7f-95e5-0fe648b1731e.png">
<img width="551" alt="4 마이페이지" src="https://user-images.githubusercontent.com/110527157/186382448-a41caad3-1d87-4387-b03d-f4410337efde.png">
<img width="548" alt="5 아이디어페이지" src="https://user-images.githubusercontent.com/110527157/186382516-140c1e86-0bd4-45b7-8e9b-905f39989ec8.png">
<img width="543" alt="6 투표 페이지" src="https://user-images.githubusercontent.com/110527157/186382601-bf8e246a-75fb-41dc-bae5-aa0c9d9789c5.png">
<img width="542" alt="7 자유 게시판" src="https://user-images.githubusercontent.com/110527157/186382583-8291d1b9-069b-430d-8cba-280bc51694a9.png">
<img width="544" alt="8 고객센터" src="https://user-images.githubusercontent.com/110527157/186382588-a8922bd4-bb11-4003-81d5-ec00081912cb.png">
<img width="550" alt="8  아이디어상세페이지" src="https://user-images.githubusercontent.com/110527157/186382590-fe99f81c-b9cc-492b-b8c0-0f66dda73933.png">
<img width="539" alt="9 투표 상세페이지" src="https://user-images.githubusercontent.com/110527157/186382593-13e31b85-3e13-46db-aef6-d9dcac509e8c.png">
<img width="547" alt="10 자유게시판 상세페이지" src="https://user-images.githubusercontent.com/110527157/186382595-d446b289-8c25-494a-a62a-ef8f4590fa28.png">
<img width="548" alt="11 고객센터 글작성" src="https://user-images.githubusercontent.com/110527157/186382597-18f761c8-7d51-46e6-930a-1e2677865933.png">
<img width="544" alt="12 글작성 페이지" src="https://user-images.githubusercontent.com/110527157/186382599-9428bc1c-c2cf-4a51-94f3-e6dd17ffed6c.png">


## 초기 ERD
![OIS (1)](https://user-images.githubusercontent.com/89010847/185848161-021c2a11-d450-4045-aab4-9c8a43b40cf6.png)

## 1차 수정 ERD
![새 테이블](https://user-images.githubusercontent.com/89010847/186045427-12e32fa1-600a-416c-8170-7a80cb0f2e8e.PNG)
## 최종 ERD
<img width="767" alt="erd" src="https://user-images.githubusercontent.com/89010847/189006658-a09843f3-387b-4c29-b8bd-0a298f757b16.png">



## 협업 방식 : Agile 스크럼
스프린트 & 백로그 칸반보드 : https://github.com/users/dongry-lee/projects/1<br>

### 스프린트
8/26 스프린트1 회고<br>

동근

- 스프린트 진행을 잘한 것 같다
- 수업에서 배운 부분들이 많이 벗어 났다
 - 도메인 지식이 없어 부담이 된다 
- Mob Porgramming을 진행하면 시간이 오래걸릴거 같아 진행하지 않았다
 - 회의실이 하나여서 불편했다
 
 진수
 
 - Figma나 erd 작성을 잘했다
 - 수업시간에 배운 부분이 아니여서 개발진행이 안됐다
 - 공부하는거나 다른 코드보는 시간이 많이 들어갔다
 - 코드 최신화가 즉시 안된다
 - 프론트를 나눠서 작업하는데 프론트를 보면서 백엔드를 작업할 수가 없었다
 
진웅

- figma를 잘 작성했다
- Git에 대해서 브랜치를 옮겨가면서 머지하는게 익숙하지가 않다.
- 코드 충돌을 해결하기가 어려웠다..

민서

- 헤더 개발에 하루가 걸릴줄 알았는데 생각보다 기간이 너무 지연됐다
- Git을 사용하기가 어렵다.
 - Git Merge후 프로젝트가 정상동작하지 않는다
 - 한기능을 두사람이 개발할때 두개를 하나로 통일시키는게 어렵다.


개선점
- 멘토님에게 질문을 많이하자
- 개발을 진행하면서 실행이 멀쩡하게 되는 코드 뭉치단위로 커밋한다
- 코드 최신화를 다같이 진행한다 안되는사람이 있으면 다같이 그화면을 보고 해결
- 모르는 부분에 대한 공부 시간 백로그가져가기
- git marge후 프로젝트가 정상동작하지 않는다
- 커밋을 짧게가져간다

9/2(금요일) 스프린트2 회고 <br>
  - 동근:  - 개인적으로는 생각보다 스프린트 일정이 널널했던거같다, 멘탈관리가 중요한거같다 불안한거 고치기, 앞으로 쉬는날이 많아서 걱정이 염려됨, 저번회고이후에 코드 최신화가 잘된거같다. <br>
  - 진수: 첫째주보다 기능개발이 훨씬 수월했고 주변에 도움을 많이받았다 도움을 받으면서도 배울점이 많았다<br>
  - 진웅: - 이번주는 코드가 날라가거나 머지에서 오류나는 일이 저번 스프린트 1보다 확실히 적어서 수월하였고 팀워크도 나름 잘 맞아서 정말 프로젝트에 열심히 집중 할 수 있었다 아쉬운점은 멘탈관리가 엄청 중요한 것 같다... 금요일이기도 하고 6개월동안 달려와서 그런지 저번주보다 멘탈적으로 조금 힘들었다<br>
  - 민서:저번주보다 코드가 안됐을때 불안한 순간이 줄었던것같다. 기본틀이 만들어지면 익숙해져서 속도가 빨라질줄 알았으나 아직까지 손에 익숙해지진 않은 것 같다.<br>
  
  
9/13(화요일) 스프린트3 회고 <br>
  - 동근: 연휴가 많아서 스프린트 자체가 짧아서 아쉬웠다. 스프린트 1,2 개선점들이 잘 개선된거같아서 좋았다. 프로젝트 막바지인데 짜잘한 오류들이 계속 나오는거같아서 고쳐야할거같다. 마지막까지 화이팅입니다!<br>
  - 진수:이번주는 추석이 겹쳐 쉬는날이 많았지만 개발적인 부분에서 진도가 있었다고 생각한다 확실히 프로젝트 시작전보다 성장한게 느껴진다br>
  - 진웅:마지막주인데 연휴가 너무 길었다,, 스프린트 1,2 에서 있었던 문제점들이 아주 없진 않았지만 점차 나아지면서 하나 둘 개선되는것이 좋았다.<br>
  - 민서:스프린트 1,2떄보다 훨씬 윤곽이 잡혀서 프로젝트가 완성되어 가는 과정을 보는게 즐거웠다. 프로젝트의 뼈대부터 함께하니 수정할 부분이 생기면 고민없이 바로 알아챌수있는 것이 <br>


### check in & check out
8/23<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/23|민서|메인 header 만들기, 아이디어게시판 view html|
||진웅|메인 sidebar 만들기, 투표게시판 view html|
||동근|아이디어게시판 기능 개발,member table 다듬기|
||진수|투표게시판 기능 개발 시작|

Erd 게시판부분 다시 만들기 - 민서,동근,진수,진웅


|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/23|민서|header menu 제작중 , 검색창 아이콘 삽입 수정 , 아이콘 연결 오류 해결중|
||진웅|side menu 완성 , 메인 페이지 slidebanner 수정중 , 투표게시판 view 제작중|
||동근|회원가입, 탈퇴, 로그인 수정 , 아이디어게시판 홈화면,글작성 백 개발|
||진수|투표항목 DB설계 , 투표기능 백 개발 및 공부 ,JSON으로 작업해보기|


8/24<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/24|민서|header menu 수정/ 사이드 메뉴 바와 코드 비교/ 게시판 글작성 틀 제작|
||진웅|인 페이지 slidebanner 수정 , 투표게시판 view 제작중|
||동근|아이디어 게시판 기능 개발(첨부파일, 댓글제외), 댓글테이블 및 기능개발|
||진수|투표게시판 틀 만들기 / 투표기능 제작|


|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/24|민서|header menu 완(백그라운드로고 링크삽입, 버튼 중첩 문제 해결, 헤더길이 수정)/사이드 메뉴바와 합체|
||진웅|투표 작성페이지/ 상세페이지 제작 목표|
||동근|게시판 글 crud, 댓글 테이블 및 기능개발 시작|
||진수|투표게시판 제목 내용 DB저장,투표기능 개발 진행중|

8/25<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/25|민서|아이디어 공모페이지/ 상세페이지 제작/ 해당 헤더 수정제작 및 연결|
||진웅|투표 작성페이지/ 상세페이지 제작 및 컨트롤러 연결|
||동근|댓글기능 C,R, github merge오류 해결|
||진수|투표기능 개발|


|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/25|민서|공모페이지 html제작 css 수정 필, 헤더 수정제작  및 연결 완|
||진웅|투표 작성페이지 제작중/ 상세페이지 제작 및 컨트롤러 연결완료|
||동근|댓글기능 C,R,D github merge오류 해결|
||진수|투표기능 개발중|

8/26

8/27
전투휴무
8/28

8/29 (월요일) 오늘의 질문 : 가장좋아하는 음식은?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/29|동근|아이디어게시판 첨부파일, 마이페이지 기능개발 시작 / 피자|
||진수|투표기능 아웃풋 나오 / 김치찌개+계란말이|
||민서|글작성페이지 css 수정, 글삭제+수정페이지 제작, 아이디어페이지 전체 점검및통일, 자유게시판 추가제작 /좋아하는 음식: 샤브샤브|
||진웅|페이지별 html 및 스크립트 기능 우선 개발(민서님과 협의해봐야함)/좋아하는 음식: 요즘 밀가루를 끊어서 볶음밥에 빠져있습니다..ㅋㅋㅋ|

|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/29|동근|아이디어게시판 첨부파일, 마이페이지 이름바꾸기, 내업로드, 내 참여한 내스크랩이 좀 어렵네요,,,|
||진수|투표페이지 뷰 , 투표기능 완성될줄 알았는데 생각보다 안되서 내일완성할 예정|
||민서|마이페이지 css 수정, 아이디어게시판 html |
||진웅|월요일은 힘든 날입니다...|

8/30 (화요일) 오늘의 질문 : 요즘 즐겨듣는 노래는?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/30|동근|내스크랩 기능 구현 / i'aint worried - one republic|
||진수|투표기능 완성 후 시간이 남으면 검색,해쉬태그 기능 개발 / The Walters - I Love You So|
||민서|아이디어페이지 css랑 동근님이 최신화하신 백코드랑 합쳐서 페이지 완성, 디테일페이지 댓글부분 제작/요즘 즐겨듣는 노래:ella mai-naked|
||진웅| 투표 상세페이지, 투표작성 이미지, 해시태그, 투표항목추가 스크립트 기능 개발  / 매드클라운 - 바질|
       

|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/30|동근|내스크랩 기능구현 완성, 내업로드, 내가 참여한 기능 구현완성|
||진수|투표기능 완성|
||민서|아이디어 글작성 페이지 이미지빼고 완, 댓글만 빼면 나머지 틀은 완성인것 같습니다.|
||진웅|투표 상세 페이지 완료, 마이페이지 작업 시작 / 화요일도 모두 고생 많으셨습니다..!!|


8/31 (수요일) 벌써 수요일입니다!! 오늘의 질문 : 본인의 취미는 ??
|날짜|이름|Check In|
|:------:|:---:|:---|
|8/31|동근|검색기능 구현 시간나면 해쉬태그 공부 / 친구만나기?|
||진수|투표페이지 투표총합 추가 ,투표페이지 댓글 첨부파일 완성 / 노래들으면서 걷기|
||민서|아이디어 나머지 페이지 틀 넣기+페이지마다 약간의 수정/댓글 제작/ 자유게시판 틀 넣기/취미.....산책..노래듣기..책읽기.....|
||진웅|마이페이지 뷰 완성 및 로그인, 회원가입 페이지 뷰 수정 / 신발 수집, 카페가기, 일단 집 밖을 나가기|
       

|날짜|이름|Check Out|
|:------:|:---:|:---|
|8/31|동근| 검색기능 완성, 해쉬태그1만되게 완성, 자유게시판 기능개발시작|
||진수| 투표기능 완성 ,투표페이지 댓글첨부파일 수정삭제 기능 계속 개발|
||민서| 글작성 페이지 최종완(데이터업로드 확인 완), 나머지 페이지 틀넣기 완, 디테일페이지 css수정 필요,수정버튼 기능 의논 필요|
||진웅| 마이페이지 뷰 제작중 로그인 회원가입 view 완성|

9/1 (목요일) 2022년이 4개월 남았습니다..;; 오늘의 질문 : 본인의 MBTI는 ?? <br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/1|동근|해쉬태그 여러개 되게해보기, 고객센터 기능개발 시작 / esfp|
||진수|투표페이지 첨부파일 날짜 수정 삭제기능 추가 , 투표페이지 댓글 삭제 기능 추가 / INFP-A|
||민서|아이디어페이지 디테일페이지 수정 - 자유게시판 구현 -아이디어페이지 수정페이지 수정 / ISTJ? ESTJ? 할때마다 다릅니다..|
||진웅|마이페이지 남은 부분 수정/ 고객센터 HTML작성? / 그외 다른 디자인 기능 / ENFP|
       
|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/1|동근|해쉬태그 기능구현, 고객센터 기능개발 시작, 자유게시판 기능개발시작 백이먼저냐 프론트가 먼저냐.. 순서 생각해봐야..|
||진수|투표상세페이지 구현 ,댓글수정삭제기능 계속 개발중|
||민서|아이디어페이지 디테일페이지 수정완+ 수정페이지 수정완+ 오늘 밤에 가능하면 자유게시판 틀 구현 복붙+약간의수정 /+ 내일은 아이디어 리스트페이지 내용 css랑 메인 헤더 검색버튼 css 할게요이|
||진웅|고객센터 페이지 간단 view 제작 완료 기타 css 수정 완료 / 생각보다 수정해야할 부분이 많고 세션 문제를 해결해야 할 것 같다..|


  
  9/2 (금요일 )  금요일 입니다....! 오늘의 질문 :지금 가장 가고싶은 여행지는 어디인가요?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/2|동근| 고객센터 기능, 자유게시판 기능 / 제주도|
||진수| 투표게시판 디테일 개발,투표기능 4개까지 늘려보기 / 어디든 좋아요|
||민서| 자유게시판 틀 약간의수정+아이디어 리스트페이지 내용 css +메인 헤더 검색버튼 css/ 가고싶은 여행지:도쿄의 쇼핑..시카고의 경관..엘에이의 날씨|
||진웅| 마이페이지 뷰 다듬기, 투표기능 뷰 css 다듬기 /  동해안 넓은 바다.... |
  
|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/2|동근|고객센터, 자유게시판 기능|
||진수| 투표게시판 댓글 추가,삭제 완성,게시판 삭제 기능,투표기능 4개로 늘리기 개발중|
||민서| 자유게시판 css 수정 근데 오류 발생...해결필요..., 메인헤더 검색창에 검색버튼 넣기 성공 와!!!!!, 검색창과 search div 분리 및 수정->버튼 디브 수정....|
||진웅| voteadd 페이지 css디자인 수정, sidemenu & header 디자인 일부 수정, mypage css 수정|
  
   9/5 (월요일)  또 월요일 입니다....!태풍때문에 날씨가 심상찮네요.. 오늘의 질문 :다들 추석때 뭐하시나요?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/5|동근| 메인페이지 기능 구현, 스크랩기능 redirect오류 해결, 테이블 중복, 삭제 기능 해결 / 할머니집 갈거같아요 |
||진수|투표페이지 기능 마무리,투표기능 4개로 늘리기 / 집에서 그냥 쉴거같네요|
||민서|아이디어페이지 리스트 내용 css+ 자유게시판 동근님코드 받아서 수정 ㄱ + 최종완성한 헤더메뉴바 모든 페이지에 적용-특정 페이지에서 css오류나는 버튼들 확인해보기/ 거의 매년 추석때 가족들과 속초에 갑니다. 아마 올해도..?|
||진웅|MYpage 수정 및 기타 css 수정 / 메인페이지 작업 시작.../ 추석때 집에 혼자 있을 예정입니다...+ 아르바이트|
  
|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/5|동근| 메인페이지 hot idea 뿌리기, 스크랩 redirect오류 해결 / 테이블 삭제기능을 어케...하지...|
||진수|투표기능 4개로 늘리기 및 게시글 등록날짜 뿌리기,게시글 삭제기능 완료 다듬어야 할게 아직 많다...|
||민서|글내용 뷰 css 리스트페이지+작성페이지 수정, 디테일페이지 댓글 뷰 수정, 로그인 후 나타나는 버튼들 오류 수정/ 왜 자꾸 로그인하면 모든 페이지의 헤더가 박살이 날까요..|
||진웅|메인화면 슬라이드메뉴 크기 오류 수정 및 핫 아이디어 투표 view 완성 마이페이지 디자인 다듬는중|
  
9/6 (화요일) 오늘의 질문 :제일 좋아하는 계절은?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/6|동근| 삭제 오류 진수님이랑 해결, 투표 첨부파일 진수님 도와드리기, 검색스크랩 투표추가 / 봄 |
||진수| 투표페이지 수정,첨부파일 기능 추가 ,투표상세페이지안에 투표기능 추가 / 가을|
||민서| 모든 페이지 로그인전 버튼들 손보기, 자유게시판 완성/ 검색창 모든 페이지에 css 적용../ 다 좋지만...특히 겨울!|
||진웅| 검색 페이지 view 제작 / 여름빼고 다 좋습니다!|

|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/6|동근|투표페이지 첨부파일+수정기능, 검색기능 투표 추가, 내 업로드, 내스크랩 투표 기능 추가, delete외부기 삭제문제|
||진수|투표페이지 첨부파일+수정기능 ,상세페이지서 투표기능 추가 완료|
||민서|자유게시판+아이디어게시판 리스트페이지,작성페이지 게시글 뷰 통일...충돌수정-디브구조 다시 갈아엎기,css통일|
||진웅|투표 리스트 페이지 수정/ 검색페이지 view 완성 투표 프로그레스바 구현중...|


9/7 (수요일) 오늘의 질문 :즐겨신는 신발 브랜드가 있나요?<br>
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/7|동근| 진수님과 오픈 api 적용해보기 /나이키 |
||진수|오픈api 적용해보기 ,핫 투표기능 개발하기 / 나이키|
||민서|자유게시판 리스트페이지,작성페이지 뷰 충돌 수정, 수정한 코드 아이디어+자유게시판의 모든 페이지에 적용+모든 페이지 css 통일/라코스테|
||진웅|사이드메뉴 및 css 수정, 투표 프로그레스바 적용, /나이키 덩크, 컨버스 척70|

|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/7|동근|오픈api적용, 진수님 도와서 핫투표 적용... 짜잘짜잘한 오류가있어서 고쳐야할듯,, 투표 리스트에서 프로그래스바 수정하기|
||진수|핫투표 기능개발 , 오류 수정|
||민서|CSS 수정 및 메뉴바들 링크페이지 수정 및 연결|
||진웅|동근님의 멋진 응용으로 프로그레스바 적용 완료(?) css 너무 많네요..|

9/8 (목요일) 수료 D-8 / 오늘은 휴강일 개인작업
  - 진웅: 오전 : 개인 일정 / 오후 : 메인페이지 핫 투표 css 적용 및 기타 수정 안 된 css 수정<br>
9/9 (금요일) 수료 D-7! / 추석 연휴 시작 (개인 작업)

9/10 (토요일) 수료 D-6!! / 추석 연휴 + 주말 (개인 작업)

9/11 (일요일) 수료 D-5!!! / 추석 당일 + 주말 (오전에 멘토링입니다.)

9/12 (월요일) 수료 D-4!!!! / 추석 연휴 월요병 파괴 

9/13 (화요일)
|날짜|이름|Check In|
|:------:|:---:|:---|
|9/13|동근| EC2 진수님 도와서 인스턴스 생성, spring boot package 말아서 올리기|
||진수| EC2 인스턴스생성하기, 우분투 서버에 자바올리기 , 패키지 말아올려보기|
||민서|발표자료 작성, 피그마 수정, 전체 테마 색상 수정및 적용|
||진웅| 발표자료 초안 작성 css 수정|

|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/13|동근| EC2 진수님 도와서 인스턴스 생성, spring boot package 말아서 올리기 이거 오류가 많아서 멘토님께 질문하기...|
||진수| EC2인스턴스 생성,자바 올리기까지 완료 패키지말아올리기는 오류발생|
||민서|기획안 수정 및 상세페이지 제작 |
||진웅| 발표자료 초안 작성중 CSS수정 및 고객센터 디테일 페이지 제작|

9/14 (수요일) D-2 오늘의질문:수료 이후 어떤걸 하실건가요?<br>

|날짜|이름|Check In|
|:------:|:---:|:---|
|9/14|동근| 오전예비군,,, java맞게 변경하기 팀원들이랑 짜잘한 오류수정 / 복학후 취준?|
||진수|java버전 맞게 변경하기,rds 적용하기 //이번엔 mybatis로 혼자 게시판만들어볼려합니다and 취준|
||민서|css 다듬기, 리스트페이지->상세페이지로 css 동일 적용하기/제일먼저 토익을 다시 치고..포트폴리오 제작..일본여행|
||진웅|고객센터 상세페이지 제작 완성시키기, css다듬기 / 2달동안 여행을 다닐 예정입니다.|


|날짜|이름|Check Out|
|:------:|:---:|:---|
|9/14|동근| 자잘한오류수정 및 서버배포 성공! 걱정이 많았는데 결과물이 생각보다 잘나온거같아서 뿌듯합니다. 내일 짜잘한오류랑 발표준비하면될듯!|
||진수| 서버배포 완료! 기능도 전부완성!|
||민서| 무한 CSS의 늪....버튼 전격수정..테마색 변경!!, 틀 CSS 모든 페이지에 적용 완료|
||진웅||

9/15 (목요일) D-1 이럴수가..6개월의 대장정이 끝나기 하루전입니다.. .. /오늘의질문:마지막 질문으로 묻기에 이상하지만...탄생년도 밝히기+ 수료를 하루앞둔 소감!

|날짜|이름|Check In|
|:------:|:---:|:---|
|9/15|동근| 짜잘한 오류들 고칠때 팀원들 보조, 발표 ppt만들기 팀원들이랑 ppt, 발표대본 시연영상 마무리하기 / 저는 98년생입니다 ㅎㅎ 후련하긴한데 앞으로가 걱정이네요 ㅎㅎ |
||진수|PPT만들기,기능 버그수정,서버 올리기 / 95년생입니다 6개월 중 한달 짧은 프로젝트였지만 정말 많은걸 얻어 가는거 같네요 여러분 모두 행복하세요|
||민서|버튼 div 구조 손보기, 모든페이지 최종 view 수정, 기획서 수정, 발표자료 제작/따란 97년생입니다+ 후련하면서 현타오면서 불안하기도하면서~|
||진웅|투표 페이지 css , 헤더 버튼 css몰림 수정, / 97년생 스물여섯입니,,다@!! 1달이 너무 짧았지만 그래도 다들 열심히 잘 해주셔서 너무 감사해요..!!|


9/16 (금요일) D-day 수료마지막날이네요 ㅎㅎ/마지막 한마디!

|날짜|이름|Check In|
|:------:|:---:|:---|
|9/16|동근|대본짜기, 발표 / 개인적으로 수료막바지 되니까 너무 힘들었는데 팀원분들 덕분에 마지막 프로젝트 버틸수있었던거같아요 너무 감사합니다...! 수료후에도 교류하면서 지내면 좋을거같아요ㅎ 괜찮죠? |
||진수|PPT제작 마무리 , 발표 리허설해보기,서버 잘올라가나 확인해보기,사이트 오류 확인해보기 / 정말 수고하셧어요 다 끝나갈때 쯤에 친해져서 아쉬워요 더 빨리 친해졌으면 좋았을 텐데 시간되면 밥한끼 먹죠 |
||민서|모든 페이지 css 최종통일 및 완성, 기획서 완성, 발표자료 제작,대본수정|
||진웅|시연영상 편집/ 대본작성 / 프로젝트 마무리 / 다들 열심히 해주셔서 너무 고마워요...!! 수료후에도 간간히 연락하고 지내요 좋습니다..!! 시간이 나면 나중에라도  다 같이 밥이라도 한번 먹으면 좋을것같네요 ㅠ|

