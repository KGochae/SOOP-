# PROJECT
* 개인방송인 우왁굳님의 2024년 한해동안 진행한 인기 콘텐츠들을 되돌아보는 팀 프로젝트 입니다.
* 결과물은 아래의 영상에서 보실 수 있습니다.
  
[![Video Label](http://img.youtube.com/vi/OWTALThC-Cg/0.jpg)](https://youtu.be/OWTALThC-Cg)


## 역할
* Youtube data 수집 및 분석 
  * 채널별 기본 지표산출 (조회수, 좋아요, 댓글수 등)
  * 인기동영상 TOP20 TMI 지표 (시청자들이 가장 많이 언급한 구간, 멤버 집계)
  * 고정멤버 썸네일 지표 (썸네일에 따라 조회수 차이가 있을까?)
* 구글시트로 요약
  
![image](https://github.com/user-attachments/assets/c488c649-9123-4a7d-a4f4-a3f510adac0a)



* SOOP 보조프로그램을 기획 및 분석
  * SOOP 구독티콘 집계
  * SOOP 우왁굳 시청자 채팅 데이터 분석 
   
## 데이터 
* SOOP 시청자 채팅 데이터
* TEMPERMONKEY script 를 이용하여 채팅 데이터 스크랩핑




# SOOP 
## SOOP 채팅 데이터 분석 
* 구독티콘 통계 : 스트리밍 플랫폼에서 특정 스트리머를 구독하게 되면 사용할 수 있는 유료 이모티콘에 관한 통계입니다. 우왁굳님의 2024년 한해동안 가장 많이 사용된 이모티콘 top30을 집계
![image](https://github.com/user-attachments/assets/3086c83c-b172-4cc2-9ec1-f9ac52adbdff)
![image](https://github.com/user-attachments/assets/685731e4-d9e9-4133-b863-a4c00a6fa293)


### 유입 시청자수
한해동안 다양한 콘텐츠를 진행하신 우왁굳님의 유입 시청자수를 집계했습니다. 어떤 콘텐츠를 할 때 몇명의 새로운 시청자들이 들어 왔을까요?
> * 활성화, 유입의 기준은 "첫 채팅을 친 날짜" 입니다.
> * 첫방송 2월4일 부터 11월 31일까지 월별 유입 시청자수 집계
![image](https://github.com/user-attachments/assets/ec513fda-1918-4b4b-8d73-ace9e31180c7)
 
> * 카테고리(콘텐츠)별 유입 시청자수 집계
![image](https://github.com/user-attachments/assets/6ad3ae4f-be3a-4df5-8acb-73b179462995)
![image](https://github.com/user-attachments/assets/ebb45b2d-0a31-433f-8b55-4c5514fb7fbb)


### Retention
* 2월에 첫 유입된 시청자들의 재방문 비율 (월별 classic retention) 
![image](https://github.com/user-attachments/assets/e358fd13-667d-4f7c-9374-693770500eb3)


### 시청자 세그먼트 
![image](https://github.com/user-attachments/assets/9b61a22a-ff4c-49f9-ad32-ad133908781f)


### 콘텐츠별 출석률 차이 (라이트 유저 vs 헤비유저)
#### 가설
* 콘텐츠에 따라 출석률 차이가 있을 것 이다.
  * 우선 모든 콘텐츠들이 왜도,첨도 기준 크게 벗어나지 않았습니다.
  * shapiro 검정 기준 p-value 값이 0.05 이상으로, 정규성 검정에 충족합니다.
![image](https://github.com/user-attachments/assets/38cb25b1-92d1-4b07-baf3-6c1051e8578c)

* 정규성검정 및 Anova 검정결과
  * 라이트 유저에 해당하는 닭둘기 등급안에서 콘텐츠별로 유의미한 차이가 있었습니다.
  * '닭둘기' 라이트 유저와 반대로 '왁크리트' 헤비유저의 경우, 통계적으로 유의미하지 않을 정도로 대부분의 콘텐츠를 즐겨보고 있었습니다.


#### 음악, 대규모 콘텐츠, 이세계 아이돌
공통적으로 음악(구간단속, 작캠 공개날) 그리고 다양한 스트리머가 참가하는 대규모 콘텐츠들(스포츠대회, 배그)의 출석률이 상대적으로 높았습니다. 특히, 닭둘기 시청자들의 경우 이세돌 콘텐츠가 1위로 유입들의 이세돌에 대한 관심이 느껴지는 것 같군요🤔 

#### 새벽 노동의 한계(?)
반대로 마인크래프트의 출석률은 상대적으로 낮은 순위에 속했습니다. 아무래도 왁굳님의 대표적인 콘텐츠중 하나인 눕프핵(건축 콘텐츠)의 경우 주로 새벽에 진행된다는 점에 영향을 받지 않았을까 생각합니다. 

​
