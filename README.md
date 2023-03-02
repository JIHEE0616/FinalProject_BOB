### FinalProject_BOB

[BOB](https://gd1class.iptime.org:8844/GDJ56_BOB_final/)
> 푸드 멀티 플랫폼  :  BOB

![메인화면](https://user-images.githubusercontent.com/39483946/221104505-3f7227ed-f504-4f07-8bf1-ef9b5db85d57.jpg)

##### 국비수업 - 파이널프로젝트

## 목차
- [들어가며](#들어가며)
  - [프로젝트 소개](#1-프로젝트-소개)    
  - [프로젝트 정보](#2-프로젝트-정보)
  - [프로젝트 기능](#3-프로젝트-기능)
  - [사용 기술](#4-사용-기술)   
     - [백엔드](#4-1-백엔드)
     - [프론트엔드](#4-2-프론트엔드)
  - [실행 화면](#5-실행-화면)   


- [설계](#설계)
  - [DB 설계](#-DB-설계)
  - [기능정의서 설계](#-기능정의서-설계)

- [개발 내용](#개발-내용)

- [마치며](#마치며)
  - [프로젝트 보완사항](#1-프로젝트-보완사항)
  - [후기](#2-후기)


## 들어가며
### 1. 프로젝트 소개

<aside>
💡 Bring joy for your table :) 당신의 식탁 위에  즐거움을 선사합니다!

💡 마켓서비스, 원데이클래스, 정기구독, 커뮤니티, 챗봇 등을 한 사이트에서 한번에 해결할 수 있는 푸드 멀티 플랫폼 사이트
</aside>

### 2. 프로젝트 정보
프로젝트 인원 : 6명

프로젝트 기간 : 2022-12-26 ~ 2023-02-15

### 3. 프로젝트 기능

제가 맡은 프로젝트의 주요 기능은 다음과 같습니다.

- **[ 알림창 ]** 장인 신청 진행상황 알려줌

- **[ 챗봇 - 군침이 ]** 카카오챗봇API 사용

- **[ 관리자 페이지 ]** 매출 / 회원 / 장인 / 문의 / 상품 / 환불 관리

### 4. 사용 기술

#### 4-1 백엔드

##### 개발 환경 및 라이브러리
- Java 11
- jQuery 3.6.1
- WAS : Tomcat 9.0
- Spring Framework

##### Build Tool
- Eclipse IDE 2022-09
- Oracle Sql Developer
- Spring Tool Suite 3

##### DataBase
- Orcale DB

#### 4-2 프론트엔드
- Visual Studio Code (HTML / CSS)

### 5. 실행 화면
  <details>
    <summary>[ 메인페이지 - 알림창 ]</summary>   
  
![알림창1](https://user-images.githubusercontent.com/39483946/222412043-5d889edb-7eb2-4254-aacf-2b48b3accb4d.JPG)

![알림창2](https://user-images.githubusercontent.com/39483946/222412279-35ca11a0-8938-49aa-8a2f-d5622e42e97b.JPG)

![알림창3](https://user-images.githubusercontent.com/39483946/222412431-beabe800-5e80-45ab-91b5-14a33b231dc4.JPG)

![알림창4](https://user-images.githubusercontent.com/39483946/222412532-92b1743b-0981-4889-9c89-60603ac4bd8e.JPG)

-> 로그인한 사용자의 장인신청상태를 알림창으로 보여준다. 관리자는 다른 내용을 출력한다.
  </details>  <br/>
  
  <details>
    <summary>[ 챗봇 - 군침이 ]</summary>   
       
  **1. 챗봇 추가**   
![챗봇추가](https://user-images.githubusercontent.com/39483946/222412739-7720c23c-3c81-4ecb-9701-9d5216c181e0.JPG)
  
-> 헤더 오른편에 위치한 챗봇추가 버튼 클릭시 '군침이'를 추가할 수 있다.
  <br/>    
  
  **2. 챗봇 메인**   
![챗봇1](https://user-images.githubusercontent.com/39483946/222412845-a67c8ca5-a83e-4ab4-afe4-3055bc34aad0.png)
  
-> 군침이를추가 하면 자동응답이 나오며, 아래 6개의 항목을 선택할 수 있다.
-> 오늘의밥, 공지사항 클릭시 해당 사이트화면으로 이동 / 마켓,원데이,구독 클릭시 군침이가 대답할 수 있는 내용을 알려준다.

  **3. 챗봇 질문예시**   
![챗봇질문](https://user-images.githubusercontent.com/39483946/222412938-6ddcabd1-4f53-42ca-89d8-c7926017c3e2.jpg)
  
-> 군침이가 자동으로 대답해준다. 상담직원 연결시 상담직원이 대답할 수 있게 설정하였다.

 </details>  <br/>
 <details>
    <summary>[ 관리자 페이지 ]</summary>   

  **1. 관리자페이지 메인**   
![관리자페이지메인](https://user-images.githubusercontent.com/39483946/222413118-697dbd48-b30b-410d-85a1-060d74659839.JPG)

-> 회원수, 매출액, 판매물품수, 직원수
-> 판매물품 카테고리별 세분화 그래프, 올해목표매출액과 현재 매출액 그래프 -> Chart.js 활용

 <br> <br>
  **2. 회원관리**
![회원관리메인](https://user-images.githubusercontent.com/39483946/222414348-7bb33fe5-c057-4218-9fe1-3f8e35fb1586.JPG)

->회원관리 메인화면
    <br> <br>
![회원관리정보](https://user-images.githubusercontent.com/39483946/222414458-0fc4e202-8f5c-43b0-a172-48a9c040f235.JPG)

-> 회원 클릭시 세부정보
  <br> <br>
![회원관리탈퇴](https://user-images.githubusercontent.com/39483946/222414572-67039295-cccc-4119-94cd-5f5d3ca222d3.JPG)
  
-> 회원 탈퇴 기능
 <br> <br>
**3. 클래스 장인관리**
![클래스장인관리메인](https://user-images.githubusercontent.com/39483946/222414104-fb6f9ba5-e2c0-4cba-a101-adc19b882188.JPG)
  
-> 장인신청 심사 필요한 회원 우선 출력, 나머지는 심사일 기준으로 내림차순으로 출력했다.
  <br> <br>
![장인심사](https://user-images.githubusercontent.com/39483946/222413838-4ccc5ec4-ff83-40dd-9685-dce15633036c.JPG)
  
-> 심사필요 클릭시 장인심사 가능

![장인승인거절](https://user-images.githubusercontent.com/39483946/222413731-da2c1e48-0ce8-46e8-8823-439e2da0509f.JPG)
  
-> 장인 승인, 거절 가능하다.

![장인정보](https://user-images.githubusercontent.com/39483946/222413914-d25160ca-473a-4b46-b667-616a761e1836.JPG)
  
-> 장인이 된 회원 클릭시 해당 회원의 장인정보 및 클래스 정보를 볼 수 있다.

![장인박탈사유입력](https://user-images.githubusercontent.com/39483946/222413662-0282af42-9544-4cf8-a815-8b9884a8601e.JPG)

-> 장인이 된 회원을 박탈 할 수 있다.
  
![박탈,거절사유](https://user-images.githubusercontent.com/39483946/222413466-32cdbdd4-95ef-4294-81f4-dbdeba8b7b10.JPG)
  
-> 박탈,거절 클릭시 사유를 확인 할 수 있다.
  
**4. 1:1문의 관리**
![문의관리메인](https://user-images.githubusercontent.com/39483946/222413229-63ae6a57-10d1-46a1-8a24-3e7a28dcb76e.JPG)
  
-> >>
  <br> <br>
  
  
</details>     <br/>
 <details>
    <summary>[ 나에게 맞는 나라찾기 ]</summary> 

![나에게맞는나라찾기전체](https://user-images.githubusercontent.com/39483946/218349719-23c9d0c3-6888-4a65-84a3-beb3f6236b91.jpg)

-> 4가지 항목을 체크
 <br> <br>
![나에게맞는나라찾기결과](https://user-images.githubusercontent.com/39483946/218007690-5feb0795-07ca-449c-9ba6-d8556e037fb5.JPG)

-> 체크한 항목에 맞는 나라 결과를 보여줌

 </details>  <br/>
 
 ## 설계   
 
 
 ### DB 설계
 
[테이블 정의서 12.22.pdf](https://github.com/JIHEE0616/semi/files/10717986/12.22.pdf)
 
![세미ERD](https://user-images.githubusercontent.com/39483946/218352904-57b20302-bf53-4efb-9b83-a6115b135ef9.JPG)
  <br/>

 ### 기능정의서 설계
[SMTW -기능정의서](https://docs.google.com/spreadsheets/d/1kyg4FwIMaeKX7fXy-HNRVtXHTSIidtTpHw4VzavHF1Y/edit#gid=1911760)
 ## 개발 내용
 - **[ 팝업창 ]**
1) 홈페이지 방문시 팝업창 뜸 -> 나에게 맞는 나라찾기로 이동 가능
2) '하루동안 이 창을 열지않음' 체크 후 닫을 시 1일 기간의 Cookie를 생성하여 팝업창이 하루동안 열리지 않음


- **[ 회원 관리 ]**
1) 비밀번호 찾기
2) 비밀번호 재설정 (정규화)


- **[ 출국일지 관리 ]**
1) 회원당 1개의 출국일지 소유가능
2) 출국일지 등록
-> 출국일은 오늘 날짜 이후로만 선택 가능하게 제한
-> 출국 10일전 알림서비스 체크 가능
3) 출국일지 수정
-> 등록시 입력했던 값들을 불러와 새로 설정 할 수 있게 함
4) 출국일지 삭제
-> 출국일이 지난 사용자에게 제공되는 기능으로 해당 출국일지를 삭제 할 수 있음
5) 출국 10일 전 알림서비스 기능

-> 홈페이지 로그인시 Ajax를 이용하여 사용자가 출국 10일 전이고, 알림 서비스를 체크 하였는지 확인 후 10일 전 알림 팝업을 띄워줌

-> 회원가입시 이메일 마케팅 수신 동의 한 사용자는 메일로도 동일한 알림서비스를 받을 수 있음(단체메일전송 - SMTP)
6) 체크리스트 관리
-> 체크리스트를 저장하면 현재 진행도를 Ajax를 이용하여 보여줌


- **[ 나에게 맞는 나라찾기 ]**
1) 사용자가 직접 원하는 언어/여행지/날씨/성향을 선택하여 적합한 워킹홀리데이 나라를 매칭 해주는 기능
-> 나라정보 페이지로 이동 가능
  <br/>
  
## 마치며

### 1. 프로젝트 보완사항   
 
<details>
  <summary>보완하고 싶은 사항</summary>
     

- 페이지 Ajax처리
- 10일전 메일 알림서비스 자동 전송
  
</details>  


### 2. 후기   

학원에서 국비수업을 들으며 처음 진행했던 프로젝트여서 주제선정부터 ERD(DB설계), 기능정의서, 화면구현, 기능구현까지 다 처음이여서 쉬운게 하나 없었던 것 같습니다.
~~~~~~~~
