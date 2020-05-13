state.x77

#1
class(state.x77)
st <- data.frame(state.x77)
st

#2 st의 내용을 출력하시오.
head(st)
tail(st)

#3 st의 열이름을 출력하시오.
colnames(st)

#4 st의 행 이름을 출력하시오.
rownames(st)

#5 st의 행과 개수와 열의 개수를 출력하시오.
nrow(st)
ncol(st)

#6  st의 요약 정보를 출력하시오.
str(st)

#7 st의 행별 합계와 평균을 출력하시오.
colSums(st)
colMeans(st)

rowSums(st)
rowMeans(st)

#8 st의 열별 합계와 평균을 출력하시오.
colSums(st)
colMeans(st)

#9 Florida 주의 모든 정보를 출력하시오.
st["Florida",]

#10 50개 주의 수입(Income) 정보만 출력하시오.   #rownames(inc) <- names
income=st[,"Income"]
income
class(income)
inc <- data.frame(income)


names=rownames(st)
names


names(inc)
inc

rownames(inc) <- names
inc


#11 Texas 주의 면적(Area)을 출력하시오.
st["Texas","Area"]

#12 Ohio 주의 인구(Population)와 수입(Income)을 출력하시오.
st["Ohio","Income"]

#13 인구가 5,000 이상인 주의 데이터만 출력하시오.
pop1 <- subset(st, Population>=5000)

#14 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력하시오.
st2=subset(st, Income>=4500)
st2
st2=st2[,c('Population','Income','Area')]
st2

st2=st2[,c(1&2&8)]
st2

#15 수입이 4,500 이상인 주는 몇 개인지 출력하시오.
in1=subset(st,Income>=4500)
nrow(in1)

#16 전체 면적(Area)이 100,000 이상이고, 
#결빙일수(Frost)가 120 이상인 주의 정보를 출력하시오.
cold=subset(st,Area>=100000 & Frost>=120)

#17 인구(Population)가 2,000 미만이고, 
#범죄율(Murder)이 12 미만인 주의 정보를 출력하시오.
sm=subset(st,Population<2000 & Murder<12)

#18 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인주 출력하시오.
ill=subset(st,Illiteracy>2.0)
cm=colMeans(ill)
cm[2]

colMeans(subset(st,Illiteracy>2.0))[2]


#19 문맹률(Illiteracy)이 2.0 미만인 주와 
#2.0 이상인 주의 평균 수입의 차이를 출력하시오.
colMeans(subset(st,Illiteracy<2.0))[2]-colMeans(subset(st,Illiteracy>2.0))[2]


#20 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력하시오.
max(st[,"Life.Exp"])
ss=subset(st,Life.Exp==max(Life.Exp))
rownames(ss)
rownames(subset(st,Life.Exp==max(Life.Exp)))

#21 Pennsylvania 주보다 수입(Income)높은 주들을 출력하시오.
penn=st["Pennsylvania","Income"]
penn
highpenn=subset(st,Income>penn)
highpenn
higher=rownames(highpenn)
higher


class(higher)
data.frame(higher)


















