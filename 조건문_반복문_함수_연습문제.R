#[ 조건문, 반복문, 함수 연습문제 ]

#1. R의 apply() 함수를 이용하여 다음 문제를 해결하는 R 코드를 작성하시오. # apply(데이터셋, 행/열 방향 지정, 적용함수)
#1) iris 데이터셋의 행별 합계를 출력하시오.(5번째 열은 제외)
apply(iris[,1:4],1,sum)
#2) iris 데이터셋의 열별 최댓값을 출력하시오.(5번째 열은 제외)
apply(iris[,-5],2,max)
#2. R의 apply() 함수를 이용하여 다음 문제를 해결하는 R 코드를 작성하시오.
#1) mtcars 데이터셋의 열별 합계를 출력하시오.

mtcars
apply(mtcars,2,sum)

#2) mtcars 데이터셋의 열별 최댓값을 출력하시오.
apply(mtcars,2,max)

#3) mtcars 데이터셋의 열별 표준편차를 출력하시오.
apply(mtcars,2,sd)

#3. 다음과 같이 벡터를 입력하면 벡터의 최댓값과 최솟값을 반환(retrun)하는 R 함수
#maxmin()을 만들고 테스트하시오(반환값이 list임)


 #v1 <- c(7,1,2,8,9)
 #result <- maxmin(v1)
 #result$max ; result$min
#[1] 9
#[1] 1

#> result <- maxmin(iris[,1])
#> result$max ; result$min
#[1] 7.9
#[1] 4.3

maxmin <- function(v1){
  return(list(max(v1),min(v1)))
}

result <- maxmin(iris[,1])
result$max
result$min
names(result)=c('max','min')
result

v1 <- c(7,1,2,8,9)
result <- maxmin(v1)
result$max ; result$min





#4. 10명의 몸무게를 저장한 벡터가 다음과 같을 때 질문을 해결하기 위한 R코드를 작성하시오.

weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)

#1) 몸무게가 가장 큰 값은 몇 번째에 있나?
which.max(weight)
#2) 몸무게가 가장 작은 값은 몇 번째에 있나?
which.min(weight)
#3) 몸무게가 61에서 69사이인 값들은 몇 번째에 있나?
which(weight>=61&weight<=69)
#4) 몸무게가 60 이하인 값들만 추출하여 wight.2에 저장하고 내용을 보이시오.
wight2 <- weight[which(weight<=60)]
wight2
#5. 다음의 문제를 해결하기 위한 R 코드를 작성하시오(which() 함수 사용).
#1) iris 데이터셋에서 꽃잎의 길이(Petal.Length)가 가장 큰 관측값(행)의 내용을 보이시오.
max_length <- which.max(iris$Petal.Length)
max_length
iris[max_length,]
#2) iris 데이터셋에서 꽃잎의 폭(Petal.Width)이 0.3 ~ 0.4 사이인 관측값(행)들의 내용을 보이시오.
width <- which(iris$Petal.Width>=0.3 & iris$Petal.Width<=0.4)
iris[max_length,]
