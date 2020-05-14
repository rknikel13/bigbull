state.x77
class(state.x77)
st <- data.frame(state.x77) #state.x77을 변환하여 st에 데이터프레임으로 저장
st
head(st) #st 부분 추출
class(st) # st 형태확인
colnames(st) 
rownames(st)
ncol(st)
nrow(st)
str(st) #요약 정보
colSums(st)
rowSums(st)
colMeans(st)
rowMeans(st)
subset(st,rownames(st)=="Florida") #Florida 주의 모든 정보를 출력하시오
st["Income"] #50개 주의 수입(Incom) 정보만 출력
st["Texas","Area"] #Texas 주의 면적(Area)을 출력
      # Ohio 주의 인구(Population)와 수입(Income)을 출력
Ohio <- subset(st,rownames(st)=="Ohio",c())
Ohio
Ohio[,1:2]

#인구가 5,000 이상인 주의 데이터만 출력
bigcity <- subset(st,Population>=5000) ###populaiton ""없이 입력
bigcity

# 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력
richcity <- subset(st,Income>=4500)
richcity
richcity[,c(1,2,8)]

# 수입이 4,500 이상인 주의 수가 몇개인지
nrow(richcity)

#전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보를 출력 *subset은 ()로 묶어줘야함
subset(st,Area >=100000 & Frost>=120)

#인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12 미만인 주의 정보를 출력
subset(st,Population<2000&Murder<12)

#문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인주 출력하시오. 
colMeans(subset(st,Illiteracy>=2.0,Income))



# 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이를 출력하시오.
colMeans(subset(st,Illiteracy<2.0,Income))-colMeans(subset(st,Illiteracy>=2.0,Income))

# 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력하시오.
subset(st,Life.Exp==max(st["Life.Exp"]))

# Pennsylvania 주보다 수입(Income)높은 주들을 출력하시오.
subset(st,Income>st["Pennsylvania","Income"])

subset(st,rownames(st)=="Ohio",c("Population","Income"))
