
# ⚙️ PROJECT. 왁타버스 top20 인기동영상
![크레딧](https://github.com/user-attachments/assets/5db3b5ba-2b20-468f-b56c-b0dd65b9261f)
* 개인방송인 우왁굳님의 2024년 한해동안 진행한 인기 콘텐츠들을 분석하는 팀 프로젝트 입니다.
* 결과물은 아래의 영상에서 보실 수 있습니다.
  
[![Video Label](http://img.youtube.com/vi/OWTALThC-Cg/0.jpg)](https://youtu.be/OWTALThC-Cg)



## ⚙️ 역할
영상에 쓰일 아이디어와 보조프로그램 기획 및 필요한 데이터들을 수집/분석하여 구글 스프레드 시트로 제공

* Youtube data 수집 및 분석 
  * 채널별 기본 지표 산출 (조회수, 좋아요, 댓글수 등) -[Google Spread Sheet](https://docs.google.com/spreadsheets/d/1ISETliVZF2JH-WiwbCfuvXuTrliK-EQjH-M-F8C_IFw/edit?usp=sharing)
  * 인기동영상 TOP20 TMI 지표 (시청자들이 가장 많이 언급한 구간, 멤버 집계) -[Google Spread Sheet](https://docs.google.com/spreadsheets/d/1fyS76R6fD6hWvGhoDnhWQ5v0gWM2U8cEG92zZQyw4yo/edit?usp=sharing)
  * 고정멤버 썸네일 지표 (썸네일에 따라 조회수 차이가 있을까?) - [Google Spread Sheet](https://docs.google.com/spreadsheets/d/1Lj9PjNzPt260X1zbRV1SWollkLFOMLSgaYCfufUNbSw/edit?usp=sharing)   

![image](https://github.com/user-attachments/assets/c488c649-9123-4a7d-a4f4-a3f510adac0a)


* SOOP 보조프로그램을 기획 및 분석
  * SOOP 구독티콘 집계
  * SOOP 우왁굳 시청자 채팅 데이터 분석 
   
## ⚙️ 데이터 수집
* SOOP 시청자 채팅 데이터
* TEMPERMONKEY script 를 이용하여 채팅 데이터 스크랩핑

### ⚙️ 디렉토리
```bash
├── .README.md
├── SOOP.ipynb --------- # SOOP 채팅데이터 전처리 
├── retention.sql ------ # 시청자 월별 클래식 리텐션 쿼리
└── youtube_data.ipynb - # 유튜브 데이터 수집 및 전처리 
```





# SOOP (추가분석)
SOOP 채팅 데이터를 활용한 유입 시청자 분석

## 구독티콘 
> 스트리밍 플랫폼에서 특정 스트리머를 구독하게 되면 사용할 수 있는 유료 이모티콘에 관한 통계입니다. 우왁굳님의 2024년 한해동안 가장 많이 사용된 이모티콘은 무엇일까요🤔?
![image](https://github.com/user-attachments/assets/3086c83c-b172-4cc2-9ec1-f9ac52adbdff)
![image](https://github.com/user-attachments/assets/685731e4-d9e9-4133-b863-a4c00a6fa293)


### 유입 시청자수
> 한해동안 다양한 콘텐츠를 진행하신 우왁굳님의 유입 시청자수를 집계했습니다. 어떤 콘텐츠를 할 때 몇명의 새로운 시청자들이 들어 왔을까요🤔?
> 활성화, 유입의 기준은 "첫 채팅을 친 날짜" 입니다.
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

## 🍀 프로젝트 후기
* 기획/데이터/편집/디자인/음악/성우 등 다양한 작업자분들과 모두 같은 목표를 가지고 달려갈 수 있었던 자극넘치는 경험이었습니다.
* 무엇보다 최종적으로 영상이 만들어지면 채널에 올라가기 때문에 꼼꼼함과 일에 대한 책임감에 있어서 큰 성장을 한 것 같습니다.😀

**"적극적인 태도 이전에 적극적인 소통의 중요성"**
> 해당 프로젝트를 진행하면서 적극적인 태도 이전에 확실한 의사소통이 우선시 되어야 한다는 것을 깨달았습니다.

#### 상황
당시, 팀에 기여하고 싶다는 마음에 확정되지 않은 기획안에 기반해 개인적으로 먼저 작업을 진행한 적이 있었습니다. 유튜브 영상 썸네일에 등장한 멤버들의 지표에 관한 아이디어가 있었는데, 이는 데이터 라벨링이 필요한 작업이었기 때문에 미리 구글 시트로 진행해놓으면 좋겠다고 생각했습니다.

> 하지만, 기대와 다르게 기획팀원으로 부터 “아직 확정되지 않은 부분을 혼자서 다 할 필요가 없다”는 피드백을 받았습니다.

#### 피드백 이후 개선한점
> 아무래도 진행 상황을 모두 공유하지 않은 상태에서 개인적으로 진행한 작업은 팀 전체 작업의 일관성에 영향을 줄 수 있다라는 점을 깨달았고, 혼자할 수 있더라도 팀과 소통 후 시작하는 것이 협업에서 중요하다는 것을 느꼈습니다. 이후, 혼자서도 가능한 업무가 있다면 적극적으로 소통하고 구글시트로 팀내 작업진행도를 기록하여 팀원들과 빠르게 공유할 수 있도록 했습니다.🫡

이 외에 기획팀들과 매주 회의를 통해 수집 가능한 데이터와 분석 결과를 어떻게 소개할지 논의하고, 각 업무의 난이도를 측정해 일정 조율을 맡았습니다. 특히, 분석 소재를 직접 제안해 기획팀원들에게 전달하는 역할을 수행하며 팀의 방향성을 잡는 데 기여했습니다.

#### 🍀같이 일한 팀원들의 후기 +
![image](https://github.com/user-attachments/assets/4d2e0cc8-bbb7-49f1-b705-fe0d98cdfc46)
