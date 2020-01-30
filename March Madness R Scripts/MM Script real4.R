g1.2<-c(Avg1246,Avg1264)
g2.2<-c(Avg1462,Avg1140)
g3.2<-c(Avg1181,Avg1316)

d1<-rbind(g1.2,g2.2,g3.2)
d1.1<-as.matrix(d1)
tt1<-matrix(d1.1,ncol=ncol(d1),dimnames = NULL)
ww1<-tt1[,c(1:10,14:22,11,23,12,24)]
d1wins<-c(1,1,1)
actualDay1.1<-cbind(d1wins,ww1)

colnames(actualDay1.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")
predd1<-predict(hellsyes, newdata = actualDay1.1)
predd2<-predict(hellsyes, newdata = actualDay1.1)
predd2

#Round3

g1.3<-c(Avg1246,Avg1345)
g2.3<-c(Avg1138,Avg1268)
g3.3<-c(Avg1455,Avg1308)
g4.3<-c(Avg1437,Avg1261)
g5.3<-c(Avg1320,Avg1414)
g6.3<-c(Avg1277,Avg1125)
g7.3<-c(Avg1181,Avg1385)
g8.3<-c(Avg1372,Avg1207)
g9.3<-c(Avg1374,Avg1235)

d2<-rbind(g1.3,g2.3,g3.3,g4.3,g5.3,g6.3,g7.3,g8.3,g9.3)
d2.1<-as.matrix(d2)
tt2<-matrix(d2.1,ncol=ncol(d2),dimnames = NULL)
ww2<-tt2[,c(1:10,14:22,11,23,12,24)]
d2wins<-c(1,0,1,0,0,1,1,0,0)
actualDay2.1<-cbind(d2wins,ww2)

colnames(actualDay2.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")
predd3<-predict(hellsyes, newdata = actualDay2.1)
predd3<-predict(hellsyes, newdata = actualDay1.1)
predd3

#Round 4

g1.4<-c(Avg1246,Avg1138)
g2.4<-c(Avg1437,Avg1320)
g3.4<-c(Avg1277,Avg1328)
g4.4<-c(Avg1181,Avg1372)
g5.4<-c(Avg1211,Avg1235)

d3<-rbind(g1.4,g2.4,g3.4,g4.4,g5.4)
d3.1<-as.matrix(d3)
tt3<-matrix(d3.1,ncol=ncol(d3),dimnames = NULL)
ww3<-tt3[,c(1:10,14:22,11,23,12,24)]
d3wins<-c(1,0,1,1,1)
actualDay3.1<-cbind(d3wins,ww3)

colnames(actualDay3.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")
predd4<-predict(hellsyes, newdata = actualDay3.1)
predd4<-predict(hellsyes, newdata = actualDay3.1)
predd4

#Round 5

g1.5<-c(Avg1314,Avg1112)
g2.5<-c(Avg1437,Avg1277)

d4<-rbind(g1.5,g2.5)
d4.1<-as.matrix(d4)
tt4<-matrix(d4.1,ncol=ncol(d4),dimnames = NULL)
ww4<-tt4[,c(1:10,14:22,11,23,12,24)]
d4wins<-c(0,0)
actualDay4.1<-cbind(d4wins,ww4)

colnames(actualDay4.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")
predd5<-predict(hellsyes, newdata = actualDay4.1)
predd5<-predict(hellsyes, newdata = actualDay4.1)
predd5

#Round 6

g1.6<-c(Avg1246,Avg1112)
g2.6<-c(Avg1437,Avg1181)

d5<-rbind(g1.6,g2.6)
d5.1<-as.matrix(d5)
tt5<-matrix(d5.1,ncol=ncol(d5),dimnames = NULL)
ww5<-tt5[,c(1:10,14:22,11,23,12,24)]
d5wins<-c(0,0)
actualDay5.1<-cbind(d5wins,ww5)

colnames(actualDay5.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")
predd6<-predict(hellsyes, newdata = actualDay5.1)
predd6<-predict(hellsyes, newdata = actualDay5.1)
predd6

#Round 7

g1.8<-cbind(c(Avg1112,Avg1181))

day7.8<-as.matrix(g1.8)
View(day7.8)
t10.8<-t(day7.8)

t9.8<-matrix(t10.8,ncol=ncol(t10.8),dimnames = NULL)

w7.8<-t9.8[,c(1:10,14:22,11,23,12,24)]

View(t9.8)
day7.8win<-c(0)
realDay7.1.8<-t(cbind(c(day7.8win,w7.8)))

colnames(realDay7.1.8)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred7.1.8 <- predict(hellsyes, newdata = realDay7.1.8)
pred7.1.8
