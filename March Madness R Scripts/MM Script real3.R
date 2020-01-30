View(tourneyYear1)
names(newdf)
Game.1<-c(Avg1214,Avg1264)
Game.2<-c(Avg1140,Avg1279)
Game.3<-c(Avg1316,Avg1352)
Game.4<-c(Avg1129,Avg1173)

day1<-rbind(Game.1,Game.2,Game.3,Game.4)
names(day1)
day1.1<-as.matrix(day1)
t1<-matrix(day1.1,ncol = ncol(day1),dimnames = NULL)
View(t1)
day1wins<-c(1,0,0,0)
names(Game.1)
View(day1)
w1<-t1[,c(1:10,14:22,11,23,12,24)]
View(w1)


names(newdf)
realDay1.1<-cbind(day1wins,w1)
View(realDay1.1)

colnames(realDay1.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred1.1 <- predict(hellsyes, newdata = realDay1.1)
pred1.1
table(pred1.1,day1wins)
#Day 2
game1.2<-c(Avg1246,Avg1214)
game2.2<-c(Avg1153,Avg1345)
game3.2<-c(Avg1452,Avg1138)
game4.2<-c(Avg1268,Avg1434)
game5.2<-c(Avg1139,Avg1400)
game6.2<-c(Avg1323,Avg1318)
game7.2<-c(Avg1455,Avg1231)
game8.2<-c(Avg1242,Avg1308)
game9.2<-c(Avg1458,Avg1157)
game10.2<-c(Avg1332,Avg1329)
game11.2<-c(Avg1116,Avg1459)
game12.2<-c(Avg1314,Avg1217)
game13.2<-c(Avg1462,Avg1279)
game14.2<-c(Avg1124,Avg1209)
game15.2<-c(Avg1433,Avg1326)
game16.2<-c(Avg1112,Avg1411)
game17.2<-c(Avg1437,Avg1248)
game18.2<-c(Avg1301,Avg1261)
game19.2<-c(Avg1320,Avg1461)
game20.2<-c(Avg1257,Avg1414)
game21.2<-c(Avg1344,Avg1173)
game22.2<-c(Avg1328,Avg1107)
game23.2<-c(Avg1277,Avg1208)
game24.2<-c(Avg1438,Avg1125)
game25.2<-c(Avg1181,Avg1352)
game26.2<-c(Avg1361,Avg1385)
game27.2<-c(Avg1328,Avg1372)
game28.2<-c(Avg1207,Avg1186)
game29.2<-c(Avg1374,Avg1417)
game30.2<-c(Avg1235,Avg1412)
game31.2<-c(Avg1234,Avg1172)
game32.2<-c(Avg1211,Avg1295)

day2<-rbind(game1.2,game2.2,game3.2,game4.2,game5.2,game6.2,game7.2,game8.2,game9.2,game10.2,game11.2,game12.2,game13.2,game14.2,game15.2,game16.2,game17.2,game18.2,game19.2,game20.2,game21.2,game22.2,game23.2,game24.2,game25.2,game26.2,game27.2,game28.2,game29.2,game30.2,game31.2,game32.2)
day2wins<-c(1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,1,1)
length(day2wins)
day2winchkdn<-c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
length(day2winchkdn)

day2.1<-as.matrix(day2)
t2<-matrix(day2.1,ncol=ncol(day2),dimnames = NULL)
w2<-t2[,c(1:10,14:22,11,23,12,24)]
realDay2.1<-cbind(day2wins,w2)

colnames(realDay2.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred2.1 <- predict(hellsyes, newdata = realDay2.1)
pred2.1
day2wins
table(pred2.1,day2wins)


#Day3


game1.3<-c(Avg1246,Avg1153)
game2.3<-c(Avg1452,Avg1268)
game3.3<-c(Avg1139,Avg1323)
game4.3<-c(Avg1455,Avg1242)
game5.3<-c(Avg1458,Avg1332)
game6.3<-c(Avg1116,Avg1314)
game7.3<-c(Avg1462,Avg1209)
game8.3<-c(Avg1326,Avg1112)
game9.3<-c(Avg1437,Avg1301)
game10.3<-c(Avg1320,Avg1257)
game11.3<-c(Avg1173,Avg1328)
game12.3<-c(Avg1277,Avg1438)
game13.3<-c(Avg1181,Avg1361)
game14.3<-c(Avg1328,Avg1207)
game15.3<-c(Avg1417,Avg1412)
game16.3<-c(Avg1234,Avg1211)

day3<-rbind(game1.3,game2.3,game3.3,game4.3,game5.3,game6.3,game7.3,game8.3,game9.3,game10.3,game11.3,game12.3,game13.3,game14.3,game15.3,game16.3)
day3wins<-c(1,1,0,1,1,0,1,0,0,0,0,1,1,1,1,0)
length(day3wins)

day3.1<-as.matrix(day3)
t3<-matrix(day3.1,ncol=ncol(day3),dimnames = NULL)
w3<-t3[,c(1:10,14:22,11,23,12,24)]
realDay3.1<-cbind(day3wins,w3)

colnames(realDay3.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred3.1 <- predict(hellsyes, newdata = realDay3.1)
pred3.1
day3wins
table(pred3.1,day3wins)

#Day4

game1.4<-c(Avg1246,Avg1452)
game2.4<-c(Avg1323,Avg1455)
game3.4<-c(Avg1458,Avg1314)
game4.4<-c(Avg1462,Avg1112)
game5.4<-c(Avg1301,Avg1257)
game6.4<-c(Avg1328,Avg1277)
game7.4<-c(Avg1181,Avg1328)
game8.4<-c(Avg1417,Avg1211)

day4<-rbind(game1.4,game2.4,game3.4,game4.4,game5.4,game6.4,game7.4,game8.4)

day4.1<-as.matrix(day4)
t4<-matrix(day4.1,ncol=ncol(day4),dimnames = NULL)
w4<-t4[,c(1:10,14:22,11,23,12,24)]
day4wins<-c(1,1,1,0,0,0,1,0)
realDay4.1<-cbind(day4wins,w4)

colnames(realDay4.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred4.1 <- predict(hellsyes, newdata = realDay4.1)
pred4.1
day4wins
table(pred4.1,day4wins)

#Day5

game1.5<-c(Avg1246,Avg1323)
game2.5<-c(Avg1458,Avg1112)
game3.5<-c(Avg1257,Avg1277)
game4.5<-c(Avg1181,Avg1211)

day5<-rbind(game1.5,game2.5,game3.5,game4.5)

day5.1<-as.matrix(day5)
t5<-matrix(day5.1,ncol=ncol(day5),dimnames = NULL)
w5<-t5[,c(1:10,14:22,11,23,12,24)]
day5wins<-c(1,1,0,1)
realDay5.1<-cbind(day5wins,w5)

colnames(realDay5.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred5.1 <- predict(hellsyes, newdata = realDay5.1)
pred5.1
day5wins
table(pred5.1,day5wins)

#Day 6
game1.6<-c(Avg1246,Avg1458)
game2.6<-c(Avg1277,Avg1181)

day6<-rbind(game1.6,game2.6)
View(day6)
day6.1<-as.matrix(day6)
t6<-matrix(day6.1,ncol=ncol(day6),dimnames = NULL)
w6<-t6[,c(1:10,14:22,11,23,12,24)]
day6wins<-c(0,0)

realDay6.1<-cbind(day6wins,w6)
colnames(realDay6.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred6.1 <- predict(hellsyes, newdata = realDay6.1)
pred6.1


#Day7
game1.7<-cbind(c(Avg1181,Avg1458))

day7<-as.matrix(game1.7)
View(day7)
t10<-t(day7)

t9<-matrix(t10,ncol=ncol(t10),dimnames = NULL)

w7<-t9[,c(1:10,14:22,11,23,12,24)]

View(t9)
day7win<-c(1)
realDay7.1<-t(cbind(c(day7win,w7)))

colnames(realDay7.1)<- c("Win","Numot","ftm","fta","or","dr","ast","to","stl","blk","pf","Oftm","Ofta","Oor","Odr","Oast","Oto", "Ostl","Oblk","Opf","FGP",   "OFGP" , "FGP3",  "OFGP3")

pred7.1 <- predict(hellsyes, newdata = realDay7.1)
pred7.1
