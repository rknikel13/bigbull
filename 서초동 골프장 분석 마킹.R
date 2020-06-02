### 서초동 골프장 분석 ###
# 2017년 12월 수집데이터를 기초로 서초4동 상권 분석함.


ds.seocho <- subset(ds.total, ds.total$수집연월==5 &
                       (ds.total$행정동명=="서초1동"| 
                       ds.total$행정동명== "서초2동"| 
                       ds.total$행정동명=="서초3동" | 
                       ds.total$행정동명=="서초4동"))        #괄호 씌우는 것에 주의하자
cen <- c(mean(ds.seocho$경도),mean(ds.seocho$위도))
map <- get_googlemap(center=cen,                # 마커 없는 지도 가져오기
                     maptype="roadmap",
                     size=c(640,640),
                     zoom=13)
gmap <- ggmap(map)                              # 지도를 저장
gmap+geom_point(data = ds.seocho, 
                aes(x=경도,y=위도,color=상권업종대분류명),size=2,alpha=0.7) +
  labs(x = "Longitude", y = "Latitude",
       title="서초동 업종별 점포", color = "업종")
ds.seocho2
ds.seocho2 <- subset(ds.seocho, grepl("골프", ds.seocho$상권업종소분류명))
# grepl("찾고자하는 단어",해당단어가 있는 칼럼)

ds.seocho2 <- subset(ds.seocho, ds.seocho$상권업종소분류명== "골프회원권거래소" |
                                ds.seocho$상권업종소분류명=="골프용품판매" |
                                ds.seocho$상권업종소분류명=="실내골프연습장" | 
                                ds.seocho$상권업종소분류명=="골프장")
gmap+geom_point(data = ds.seocho2, 
                aes(x=경도,y=위도), size=3, alpha=0.5, col="red") +
  labs(x = "Longitude", y = "Latitude",
       title="서초동 골프장" )
