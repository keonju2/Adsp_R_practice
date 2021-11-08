class('abc')
class("abc")
class('1')
class("True")

class(Inf)
class(1)
class(-3)

class(TRUE)
class(FALSE)

sqrt(-3)
class(NA)
class(NULL)

string1 <- 'abc'
'data'->string2
number1<<-15
Inf->>number2
logical=NA

string1
string2
number1
number2
logical

string1=='abc'
string2>'DATA'
number1<=15
is.na(logical)
is.null(NULL)

!TRUE
TRUE&TRUE
TRUE&FALSE
!(TRUE)
TRUE | FALSE

v4<-c(3, TRUE,FALSE)
v4
v5<-c('a',1,TRUE)
v5

v1<-c(1:6)
v1

m1<-matrix(c(1:6),nrow=2)
m1
m2<-matrix(c(1:6),ncol=2)
m2


m3<-matrix(c(1:6),nrow=2, byrow=T)
m3

v1<-c(1:6)
v1
dim(v1)<-c(2,3)
v1

a1<-array(c(1:12), dim=c(2,3,2))
a1
a2<-c(1:12)
dim(a2)<-c(2,3,2)
a2

L<-list()
L[[1]]<-5
L[[2]]<-c(1:6)
L[[3]]<-matrix(c(1:6),nrow=2)
L[[4]]<-array(c(1:12),dim=c(2,3,2))
L

v1<-c(1,2,3)
v2<-c('a','b','c')
df1<-data.frame(v1,v2)
df1

df1[0]
df1[1]

# help와 ?는 R스튜디오에서는 도움창이 있지만 주피터 노트북에서는 하단에 창으로 나온다.
help(paste)
?paste 
paste('This is','a pen')
seq(1,10,by=2)
rep(1,5)
a<-1
a
rm(a)
# a : error
ls()
print(10)

v1<-c(1:9)
sum(v1)
mean(v1)
median(v1)
var(v1)
sd(v1)
max(v1)
min(v1)
range(v1)
summary(v1)

m1<-matrix(c(1:6),nrow=2)
colnames(m1)<-c('c1','c2','c3')
rownames(m1)<-c('r1','r2')
m1
colnames(m1)
rownames(m1)
df<-data.frame(x=c(1,2,3),y=c(4,5,6))
colnames(df1)<-c('c1','c2')
rownames(df1)<-c('r1','r2','r3')
df1
colnames(df1)
rownames(df1)

v1<-c(3,6,9,12)
v1[2]
m1<-matrix(c(1:6),nrow=3)
m1
m1[2,2]
colnames(m1)<-c('c1','c2')
m1[,'c1']
rownames(m1)<-c('r1','r2','r3')
m1['r3','c2']

v1<-c(1:6)
v2<-c(7:12)
df1<-data.frame(v1,v2)
df1$v1
df1$v2[3]

v1<-c(1,2,3)
v2<-c(4,5,6)
rbind(v1,v2)
cbind(v1,v2)

v1<-c(1,2,3)
v2<-c(4,5,6,7,8)
rbind(v1,v2)

for(i in 1:3){
    print(i)
}

data<-c('a','b','c')
for (i in data){
    print(i)
}

i<-0
while(i<5){
    print(i)
    i<-i+1
}

number<-5
if(number<5){
    print('number은 5보다 작다')
}else if (number>5){
    print('number은 5보다 크다')
}else{
    print('number은 5와 같다.')
}

number<-3
if(number<5){
    print('number은 5보다 작다')
}else if (number>5){
    print('number은 5보다 크다')
}else{
    print('number은 5와 같다.')
}

number<-7
if(number<5){
    print('number은 5보다 작다')
}else if (number>5){
    print('number은 5보다 크다')
}else{
    print('number은 5와 같다.')
}

comparedTo5<-function(number){
    if(number<5){
    print('number은 5보다 작다')
    }else if (number>5){
    print('number은 5보다 크다')
    }else{
    print('number은 5와 같다.')
    }
}

comparedTo5(10)
comparedTo5(3)
comparedTo5(5)

# 1+1 계산 방법

1+1

data<-'This is a pen'
tolower(data)
toupper(data)
nchar(data)
substr(data,9,13)
strsplit(data,'is')
grepl('pen',data)
gsub('pen','banana',data)

x<-c(1:12)
head(x,5)
tail(x)
quantile(x)

df1<-data.frame(x=c(1,1,1,2,2),y=c(2,3,4,3,3))
df2<-data.frame(x=c(1,2,3,4),z=c(5,6,7,8))

subset(df1, x==1)
merge(df1,df2,by=c('x'))
apply(df1,1,sum) # 각 행에 함수 적용
apply(df1,2,sum) # 각 열에 함수 적용

Sys.Date()
Sys.time()
as.Date("2020-01-01")
format(Sys.Date(),'%Y/%m/%d')
format(Sys.Date(),'%A') #A는 요일

#시간 데이터의 unclass 값이 타임스탬프  
unclass(Sys.time())
as.POSIXct(1577804401,origin='1970-01-01')

x<-c(1:10)
y<-rnorm(10)
plot(x,y,type='b',xlim=c(-2,12),ylim=c(-3,3),xlab='X axis',ylab='Y axis',main='Test plot')
abline(v=c(1,10),col='blue')

install.packages ('reshape')

student_number<-c(1,2,1,2)
semester<-c(1,1,2,2)
math_score<-c(60,90,70,90)
english_score<-c(80,70,40,60)

score<-data.frame(student_number,semester,math_score,english_score)
rownames(score)<-c(1,2,3,4)

score

library(reshape)
melt(score,id=c('student_number','semester'))

melted_score<-melt(score,id=c('student_number','semester'))

# 학생의 과목별 평균 구하기
cast(melted_score,student_number~variable,mean)

# 학생의 학기별 평균 점수
cast(melted_score,student_number~semester,mean)

# 학생의 과목별 최대 점수
cast(melted_score,student_number~variable,max)

install.packages('sqldf')

library(sqldf)
sqldf('select * from score')

sqldf('select * from score where student_number=1')

sqldf('select avg(math_score),avg(english_score) from score group by student_number')

install.packages('plyr')

class<-c('A','A','B','B')
math<-c(50,70,60,90)
english<-c(70,80,60,80)

score<-data.frame(class,math,english)

score

library(plyr)

#summarise는 데이터 요약
ddply(score,'class',summarise,math_avg=mean(math),eng_avg=mean(english))

#transform은 데이터 추가
ddply(score,'class',transform,math_avg=mean(math),eng_avg=mean(english))

year<-c(2012,2012,2012,2012,2013,2013,2013,2013)
month<-c(1,1,2,2,1,1,2,2)
value<-c(3,5,7,9,1,5,4,6)

data<-data.frame(year,month,value)

data

ddply(data,c('year','month'),summarise,value_avg=mean(value))

ddply(data,c('year','month'),function(x){
    value_avg=mean(x$value)
    value_sd=sd(x$value)
    data.frame(avg_sd=value_avg/value_sd)
})

install.packages('data.table')

library('data.table')
year<-rep(c(2012:2015),each=12000000)
month<-rep(rep(c(1:12),each=1000000),4)
value<-runif(48000000)

# 데이터 프레임과 데이터 테이블 생성

DataFrame<-data.frame(year,month,value)
DataTable<-as.data.table(DataFrame)

# 데이터 프레임의 검색 시간 측정

system.time(DataFrame[DataFrame$year==2012,])

# 데이터 테이블의 검색 시간 측정

system.time(DataTable[DataTable$year==2012,])

# 칼럼이 키 값으로 설정될 경우 자동 오름차순 정렬  

setkey(DataTable,year)

# 키 값으로 설정된 칼럼과 J 표현식을 사용한 검색시간 측정 

system.time(DataTable[J(2012)])

head(iris,3)
summary(iris)
str(iris)

install.packages('Amelia')

copy_iris<-iris
copy_iris[sample(1:150,30),1]<-NA #결측값 생성 
library(Amelia)
missmap(copy_iris)

copy_iris<-iris
dim(copy_iris) # 기존 데이터
copy_iris[sample(1:150,30),1]<-NA # 결측값 생성
copy_iris<-copy_iris[complete.cases(copy_iris),] # 단순 대치법
dim(copy_iris) # 결측값 처리 후

install.packages('DMwR2')

copy_iris<-iris
copy_iris[sample(1:150,30),1]<-NA # 결측값 생성

meanValue<-mean(copy_iris$Sepal.Length,na.rm=T) #결측값을 제외한 평균  
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)] <-meanValue # 평균 대치  

# central Imputation 사용
library(DMwR2)

copy_iris[sample(1:150,30),1]<-NA # 결측값 생성
copy_iris<-centralImputation(copy_iris)

copy_iris<-iris
copy_iris[sample(1:150,30),1]<-NA # 결측값 생성
copy_iris<-knnImputation(copy_iris,k=10)

copy_iris<-iris
copy_iris[sample(1:150,30),1]<-NA # 결측값 생성
iris_imp<-amelia(copy_iris,m=3,cs='Species') #cs는 cross-sectional로 분석에 포함될 정보

copy_iris$Sepal.Length<-iris_imp$imputation[[3]]$Sepal.Length
