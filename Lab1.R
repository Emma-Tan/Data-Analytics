days<- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun')
temp<- c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed<-c('T','T','F','F','T','T','F')
help("data,frame")
RPI_Weather_Week <-data.frame(days,temp,snowed)

RPI_Weather_Week
head(RPI_Weather_Week)
str(RPI_Weather_Week) #structure
summary(RPI_Weather_Week)

RPI_Weather_Week[1,]
RPI_Weather_Week[,1]

RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5,c("days","temp")]
RPI_Weather_Week$temp
subset(RPI_Weather_Week, subset=snowed==TRUE)

sorted.snowed<-order(RPI_Weather_Week['snowed'])
sorted.snowed
RPI_Weather_Week[sorted.snowed,]

dec.snow<-order(-RPI_Weather_Week$temp)
dec.snow

empty.DataFrame<-data.frame()
v1<- 1:10
v1
letters
v2<-letters[1:10]
df<- data.frame(col.name.1 = v1,col.name.2 =v2)
df

write.csv(df,file = 'saved_df1.csv')
df2 <-read.csv('saved_df1.csv')
df2



EPI<- read.csv('/Users/yaoxiaoyi/Desktop/2010EPI_data.csv')
View(EPI)
attach(EPI)
fix(EPI)
EPI
tf <- is.na(EPI)
E <-EPI[!tf]

#GRUMP

plot(ecdf(EPI),do.points = FLASE, verticals = TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot for t dsn")
qqline(x)

help(distributions)


#filter
#Landlock
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
#
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)









summary(EPI) 	# stats
fivenum(EPI,na.rm=TRUE)
help(stem)
stem(EPI)		 # stem and leaf plot
help(hist)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=鈥淪J鈥�
help(rug)
rug(EPI) 





