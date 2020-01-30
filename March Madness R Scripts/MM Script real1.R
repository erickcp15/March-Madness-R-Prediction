x.dat<-read.csv("c:/Users/calza101/Desktop/results.csv")
names(x.dat)
x.dat<-x.dat[,c(1,8:34)]
View(x.dat)
install.packages("randomForest")
library(randomForest)
install.packages("miscTools")
library(miscTools)
install.packages("tree")
library(tree)
install.packages("party")
library(party)
install.packages("caret")
library(caret)

team<-x.dat[,c(1:28)]
team.op<-x.dat[,c(1,2,16:28,3:15)]
names(team.op)
names(team)
team1<-as.matrix(team)
m1.1 <- matrix(team1, ncol = ncol(team), dimnames = NULL)
team.op1<-as.matrix(team.op)
m1.2<-matrix(team.op1, ncol = ncol(team.op), dimnames = NULL)
losses<-matrix(rep(0,71241))
wins<-matrix(rep(1,71241))
team10<-cbind(wins,m1.1)
team11<-cbind(losses,m1.2)
all_in<-rbind(team10,team11)
df_all<-data.frame(all_in)


colnames(df_all)<- c("Win","Season","Numot","fgm","fga","fgm3","fga3","ftm","fta","or","dr","ast","to","stl","blk","pf","Ofgm","Ofga","Ofgm3","Ofga3","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf")


df_all$FGP<-(df_all$fgm/df_all$fga)
df_all$FGP[1:10]
df_all$OFGP<-(df_all$Ofgm/df_all$Ofga)
df_all$FGP3<-(df_all$fgm3/df_all$fga3)
df_all$OFGP3<-(df_all$Ofgm3/df_all$Ofga3)
df_all$OFGP3[1:10]
names(df_all)
df_all<-df_all[,c(1:3,8:16,21:33)]

df_all$Win<-factor(df_all$Win)
season1<-df_all[df_all$Season==2003,]
season2<-df_all[df_all$Season==2004,]
season3<-df_all[df_all$Season==2005,]
season4<-df_all[df_all$Season==2006,]
season5<-df_all[df_all$Season==2007,]
season6<-df_all[df_all$Season==2008,]
season7<-df_all[df_all$Season==2009,]
season8<-df_all[df_all$Season==2010,]
season9<-df_all[df_all$Season==2011,]
season10<-df_all[df_all$Season==2012,]
season11<-df_all[df_all$Season==2013,]
season12<-df_all[df_all$Season==2014,]
season13<-df_all[df_all$Season==2015,]
season14<-df_all[df_all$Season==2016,]



names(df_all)
newdf<-df_all[,c(1,3:25)]
names(newdf)
season9 <- season9[sample(nrow(season9)),c(1,3:25) ]
View(season9)
season1 <- season1[sample(nrow(season1)),c(1,3:25) ]
season2 <- season2[sample(nrow(season2)),c(1,3:25) ]
season3 <- season3[sample(nrow(season3)),c(1,3:25) ]
season4 <- season4[sample(nrow(season4)),c(1,3:25) ]
season5 <- season5[sample(nrow(season5)),c(1,3:25) ]
season6 <- season6[sample(nrow(season6)),c(1,3:25) ]
season7 <- season7[sample(nrow(season7)),c(1,3:25) ]
season8 <- season8[sample(nrow(season8)),c(1,3:25) ]
season10 <-season10[sample(nrow(season10)),c(1,3:25)]
season11 <-season11[sample(nrow(season11)),c(1,3:25) ]
season12<- season12[sample(nrow(season12)),c(1,3:25) ]
season13<- season13[sample(nrow(season13)), c(1,3:25)]
season14<- season14[sample(nrow(season14)),c(1,3:25) ]
names(season14)

hihi <-randomForest(Win~.,data = season10, ntree=20, proximity=T, importance=T)
hihi2<-randomForest(Win~.,data = season4, ntree=20, proximity=T, importance=T)
hihi14<-randomForest(Win~.,data = season14,ntree=20, proximity=T, importance=T)
hihi15<-randomForest(Win~.,data = mysample,ntree=20, proximity=T, importance=T)
hihi <-randomForest(Win~.,data = newdf, ntree=20,importance=T)
plot(hihi)
yay<-getTree(hihi,20)
VI_F<-importance(hihi)
VI_F2<-importance(hihi2)
varImpPlot(hihi)

try<-ctree(Win~.,data=season14)
plot(try, type="simple")



#Side Ideas
#
df_all$FGP<-round(df_all$fgm/df_all$fga,2)
df_all$FGP[1:10]<-round(df_all$FGP[1:10],2)
df_all$FGP[1:10]
df_all$FGP
round(df_all$FGP[1:10],2)
GCtorture
hihi<-randomForest(Win~.,data = newdf, ntree=20,importance=T)
hihi

?"randomForest"
theTrain<-sample(c(T,F), nrow(newdf)/2,replace=T)
theTest<-(!theTrain)


hellsyes<-randomForest(Win~.,data = newdf[theTrain,],ntree=20,importance=T)
hellsyes
pred <- predict(hellsyes, newdata = newdf[theTest,])
table(pred, newdf[theTest,]$Win)


