# big query 
# classic retention (month)
  
SELECT first_chat # 2월4일부터 시작
      ,count(distinct id) as month0
      ,count(distinct CASE WHEN first_chat+1 = month THEN id END) AS month1
      ,count(distinct CASE WHEN first_chat+2 = month THEN id END) AS month2
      ,count(distinct CASE WHEN first_chat+3 = month THEN id END) AS month3
      ,count(distinct CASE WHEN first_chat+4 = month THEN id END) AS month4
      ,count(distinct CASE WHEN first_chat+5 = month THEN id END) AS month5
      ,count(distinct CASE WHEN first_chat+6 = month THEN id END) AS month6
      ,count(distinct CASE WHEN first_chat+7 = month THEN id END) AS month7
      ,count(distinct CASE WHEN first_chat+8 = month THEN id END) AS month8
      ,count(distinct CASE WHEN first_chat+9 = month THEN id END) AS month9
      ,count(distinct CASE WHEN first_chat+10 = month THEN id END) AS month10
      -- ,count(distinct CASE WHEN first_chat+11 = month THEN id END) AS month11 # 12월의 경우 12월5일까지의 데이터만 존재하여 제외

FROM (SELECT id
            , EXTRACT(month from date) as month
            , EXTRACT(month from MIN(date) OVER (PARTITION BY id ORDER BY DATE)) AS first_chat # 유저들의 첫 채팅 날짜
      FROM SOOP.viewer) a
GROUP BY first_chat
order by first_chat
