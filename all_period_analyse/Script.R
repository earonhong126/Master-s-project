#k1 k1_2 *0.4 = k1_1      k1_3 * 0.4 * 20/21 = k1_1
#k2 k2_2 * 1/30 = k2_1    k2_3 * 1/30 * 40/39 = k2_1
#k3 k3_2 * 5/8 = k3_1     k3_3 * 5/8 = k3_1
#k4 k4_2 * 0.8 = k4_1     k4_3 * 0.8 * 2 = k4_1
#k5 k5_2 * 2/3 = k5_1     k5_3 * 2/3 * 31/38 = k5_1
#k6 k6_2 * 2/11 = k6_1    k6_3 * 2/11 = k6_1
#k7 k7_2 * 5/7 = k7_1     k7_3 * 5/7 * 21/13 = k7_1
#k8 k8_2 * 6/57 = k8_1    K8_2 * 6/57 * 45/76 = k8_1
#k9 k9_2 * 4 = k9_1       k9_3 * 4 * 39/20 = k9_1
#k10 k10_2 * 1/3 = k10_1  k10_3 * 1/3 * 7/24 = k10_1
#k11 k11_2 * 1 = k11_1    k11_3 * 1 * 7/9 = k11_1
#k12 K12_2 * 11/6 = k12_1 k12_3 * 11/6 * 22/10 = k12_1
library(GGally)
library(ggplot2)

data1<-read.csv("Japan_daily.csv",fileEncoding = "UTF-8-BOM")
mdate<-data1[1:583,1]
mdate<-as.Date(mdate,"%Y/%m/%d")
num<-data1[1:583,2]
d1<-data.frame(
  date = mdate,
  value = num
)
png(file="./timeSeries.png",width = 1700, height = 1500)
par(family= "HiraKakuProN-W3")
par(mfrow = c(5,3))
par(xaxt="n")
par(mar=c(6, 6, 6, 6))
plot(mdate,num,main="毎日新規感染者数",xlab='日付',ylab = '感染人数',lwd=1.5,col="#ff7c00",type='l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")


K1_1<-read.csv("./K1_1.csv",fileEncoding = "UTF-8-BOM")
K1_2<-read.csv("./K1_2.csv",fileEncoding = "UTF-8-BOM")
K1_3<-read.csv("./K1_3.csv",fileEncoding = "UTF-8-BOM")
K1_2[1:182,2]<-K1_2[1:182,2]*0.4
K1_3[1:182,2]<-K1_3[1:182,2]* 0.4 * (20/21)
K1<-rbind(K1_1,K1_2,K1_3)
k1<-K1[1:583,2]
k1_date<-mdate
par(xaxt="n")
plot(k1_date,k1,main="新型コロナ 症状",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(k1_date),max(k1_date),"month"),format="%y年%m月")

K2_1<-read.csv("./K2_1.csv",fileEncoding = "UTF-8-BOM")
K2_2<-read.csv("./K2_2.csv",fileEncoding = "UTF-8-BOM")
K2_3<-read.csv("./K2_3.csv",fileEncoding = "UTF-8-BOM")
K2_2[1:182,2]<-K2_2[1:182,2]* 1/30
K2_3[1:182,2]<-K2_3[1:182,2]* 1/30 * 40/39
K2<-rbind(K2_1,K2_2,K2_3)
k2<-K2[1:583,2]
par(xaxt="n")
plot(mdate,k2,main ="コロナウイルス 症状",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K3_1<-read.csv("./K3_1.csv",fileEncoding = "UTF-8-BOM")
K3_2<-read.csv("./K3_2.csv",fileEncoding = "UTF-8-BOM")
K3_3<-read.csv("./K3_3.csv",fileEncoding = "UTF-8-BOM")
K3_2[1:182,2]<-K3_2[1:182,2]* 5/8
K3_3[1:182,2]<-K3_3[1:182,2]* 5/8
K3<-rbind(K3_1,K3_2,K3_3)
k3<-K3[1:583,2]
par(xaxt="n")
plot(mdate,k3,main ="発熱 咳",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K4_1<-read.csv("./K4_1.csv",fileEncoding = "UTF-8-BOM")
K4_2<-read.csv("./K4_2.csv",fileEncoding = "UTF-8-BOM")
K4_3<-read.csv("./K4_3.csv",fileEncoding = "UTF-8-BOM")
K4_2[1:182,2]<-K4_2[1:182,2]* 0.8
K4_3[1:182,2]<-K4_3[1:182,2]* 0.8 * 2
K4<-rbind(K4_1,K4_2,K4_3)
k4<-K4[1:583,2]
par(xaxt="n")
plot(mdate,k4,main ="PCR検査",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K5_1<-read.csv("./K5_1.csv",fileEncoding = "UTF-8-BOM")
K5_2<-read.csv("./K5_2.csv",fileEncoding = "UTF-8-BOM")
K5_3<-read.csv("./K5_3.csv",fileEncoding = "UTF-8-BOM")
K5_2[1:182,2]<-K5_2[1:182,2]* 2/3
K5_3[1:182,2]<-K5_3[1:182,2]* 2/3 * 31/38
K5<-rbind(K5_1,K5_2,K5_3)
k5<-K5[1:583,2]
par(xaxt="n")
plot(mdate,k5,main ="味覚障害",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K6_1<-read.csv("./K6_1.csv",fileEncoding = "UTF-8-BOM")
K6_2<-read.csv("./K6_2.csv",fileEncoding = "UTF-8-BOM")
K6_3<-read.csv("./K6_3.csv",fileEncoding = "UTF-8-BOM")
K6_2[1:182,2]<-K6_2[1:182,2]* 2/11
K6_3[1:182,2]<-K6_3[1:182,2]* 2/11
K6<-rbind(K6_1,K6_2,K6_3)
k6<-K6[1:583,2]
par(xaxt="n")
plot(mdate,k6,main ="消毒用アルコール",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K7_1<-read.csv("./K7_1.csv",fileEncoding = "UTF-8-BOM")
K7_2<-read.csv("./K7_2.csv",fileEncoding = "UTF-8-BOM")
K7_3<-read.csv("./K7_3.csv",fileEncoding = "UTF-8-BOM")
K7_2[1:182,2]<-K7_2[1:182,2]* 5/7
K7_3[1:182,2]<-K7_3[1:182,2]* 5/7 * 21/13
K7<-rbind(K7_1,K7_2,K7_3)
k7<-K7[1:583,2]
par(xaxt="n")
plot(mdate,k7,main ="抗体",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K8_1<-read.csv("./K8_1.csv",fileEncoding = "UTF-8-BOM")
K8_2<-read.csv("./K8_2.csv",fileEncoding = "UTF-8-BOM")
K8_3<-read.csv("./K8_3.csv",fileEncoding = "UTF-8-BOM")
K8_2[1:182,2]<-K8_2[1:182,2]* 6/57
K8_3[1:182,2]<-K8_3[1:182,2]* 6/57 * 45/76
K8<-rbind(K8_1,K8_2,K8_3)
k8<-K8[1:583,2]
k8_date<-mdate
plot(k8_date,k8,main ="マスク",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K9_1<-read.csv("./K9_1.csv",fileEncoding = "UTF-8-BOM")
K9_2<-read.csv("./K9_2.csv",fileEncoding = "UTF-8-BOM")
K9_3<-read.csv("./K9_3.csv",fileEncoding = "UTF-8-BOM")
K9_2[1:182,2]<-K9_2[1:182,2]* 4
K9_3[1:182,2]<-K9_3[1:182,2]* 4 * 39/20
K9<-rbind(K9_1,K9_2,K9_3)
k9<-K9[1:583,2]
k9_date<-mdate
par(xaxt="n")
plot(mdate,k9,main ="新型コロナワクチン",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K10_1<-read.csv("./K10_1.csv",fileEncoding = "UTF-8-BOM")
K10_2<-read.csv("./K10_2.csv",fileEncoding = "UTF-8-BOM")
K10_3<-read.csv("./K10_3.csv",fileEncoding = "UTF-8-BOM")
K10_2[1:182,2]<-K10_2[1:182,2]* 1/3
K10_3[1:182,2]<-K10_3[1:182,2]* 1/3 * 7/24
K10<-rbind(K10_1,K10_2,K10_3)
k10<-K10[1:583,2]
par(xaxt="n")
plot(mdate,k10,main ="特別定額給付金",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K11_1<-read.csv("./K11_1.csv",fileEncoding = "UTF-8-BOM")
K11_2<-read.csv("./K11_2.csv",fileEncoding = "UTF-8-BOM")
K11_3<-read.csv("./K11_3.csv",fileEncoding = "UTF-8-BOM")
K11_2[1:182,2]<-K11_2[1:182,2]* 1
K11_3[1:182,2]<-K11_3[1:182,2]* 1 * 7/9
K11<-rbind(K11_1,K11_2,K11_3)
k11<-K11[1:583,2]
par(xaxt="n")
plot(mdate,k11,main ="コロナ変異株",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K12_1<-read.csv("./K12_1.csv",fileEncoding = "UTF-8-BOM")
K12_2<-read.csv("./K12_2.csv",fileEncoding = "UTF-8-BOM")
K12_3<-read.csv("./K12_3.csv",fileEncoding = "UTF-8-BOM")
K12_2[1:182,2]<-K12_2[1:182,2]* 11/6
K12_3[1:182,2]<-K12_3[1:182,2]* 11/6 * 22/10
K12<-rbind(K12_1,K12_2,K12_3)
k12<-K12[1:583,2]
par(xaxt="n")
plot(mdate,k12,main ="濃厚接触者",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")

K13_1<-read.csv("./K13_1.csv",fileEncoding = "UTF-8-BOM")
K13_2<-read.csv("./K13_2.csv",fileEncoding = "UTF-8-BOM")
K13_3<-read.csv("./K13_3.csv",fileEncoding = "UTF-8-BOM")
K13_2[1:182,2]<-K13_2[1:182,2]* 11/70
K13_3[1:182,2]<-K13_3[1:182,2]* 11/70 * 14/32
K13<-rbind(K13_1,K13_2,K13_3)
k13<-K13[1:583,2]
par(xaxt="n")
plot(mdate,k13,main ="covid19",xlab='日付',ylab = '人気度',lwd=1.5,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 2,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%y年%m月")
dev.off()

month<-as.integer(format(mdate,"%m"))
day<-as.integer(format(mdate,"%d"))

output<-cbind(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,num)

summary(output)
recor<-cor(output[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)])
indexNames<-c("新型コロナ 症状","コロナウイルス 症状",
              "発熱＋咳","PCR検査","味覚障害",
              "消毒用アルコール","抗体",
              "マスク","新型コロナ ワクチン",
              "特別定額給付金","コロナ 変異株","濃厚接触者",
              "covid19","新規感染者数")
colnames(recor)<- indexNames
rownames(recor)<- indexNames
png(file="./heatmap.png",width = 880, height = 598)
cl<-heatmap.2(recor)
dev.off()

write.csv(recor, file = "correlation.csv")


cor.test(output[,14],output[,1])
cor.test(output[,14],output[,2])
cor.test(output[,14],output[,3])
cor.test(output[,14],output[,4])
cor.test(output[,14],output[,5])
cor.test(output[,14],output[,6])
cor.test(output[,14],output[,7])
cor.test(output[,14],output[,8])
cor.test(output[,14],output[,9])
cor.test(output[,14],output[,10])
cor.test(output[,14],output[,11])
cor.test(output[,14],output[,12])
cor.test(output[,14],output[,13])

llcor1<-cor.lag(output[,1],output[,14],16,16)
temp1<-llcor1[,1:16]
temp2<-llcor1[,17:33]
temp1<-rev(temp1)
llcor1<-cbind(temp1,temp2)
x<-c(-16:16)
png(file="./llcor_k1.png",width = 680, height = 398)
plot(x,llcor1,type="o",main = "Lag and Lead cor coef of K1",ylim = c(-1,1))
dev.off()

llcor2<-cor.lag(output[,2],output[,14],16,16)
temp1<-llcor2[,1:16]
temp2<-llcor2[,17:33]
temp1<-rev(temp1)
llcor2<-cbind(temp1,temp2)
png(file="./llcor_k2.png",width = 680, height = 398)
plot(x,llcor2,type="o",main = "Lag and Lead cor coef of K2",ylim = c(-1,1))
dev.off()

llcor3<-cor.lag(output[,3],output[,14],16,16)
temp1<-llcor3[,1:16]
temp2<-llcor3[,17:33]
temp1<-rev(temp1)
llcor3<-cbind(temp1,temp2)
png(file="./llcor_k3.png",width = 680, height = 398)
plot(x,llcor3,type="o",main = "Lag and Lead cor coef of K3",ylim = c(-1,1))
dev.off()

llcor4<-cor.lag(output[,4],output[,14],16,16)
temp1<-llcor4[,1:16]
temp2<-llcor4[,17:33]
temp1<-rev(temp1)
llcor4<-cbind(temp1,temp2)
png(file="./llcor_k4.png",width = 680, height = 398)
plot(x,llcor4,type="o",main = "Lag and Lead cor coef of K4",ylim = c(-1,1))
dev.off()

llcor5<-cor.lag(output[,5],output[,14],16,16)
temp1<-llcor5[,1:16]
temp2<-llcor5[,17:33]
temp1<-rev(temp1)
llcor5<-cbind(temp1,temp2)
png(file="./llcor_k5.png",width = 680, height = 398)
plot(x,llcor5,type="o",main = "Lag and Lead cor coef of K5",ylim = c(-1,1))
dev.off()

llcor6<-cor.lag(output[,6],output[,14],16,16)
temp1<-llcor6[,1:16]
temp2<-llcor6[,17:33]
temp1<-rev(temp1)
llcor6<-cbind(temp1,temp2)
png(file="./llcor_k6.png",width = 680, height = 398)
plot(x,llcor6,type="o",main = "Lag and Lead cor coef of K6",ylim = c(-1,1))
dev.off()

llcor7<-cor.lag(output[,7],output[,14],16,16)
temp1<-llcor7[,1:16]
temp2<-llcor7[,17:33]
temp1<-rev(temp1)
llcor7<-cbind(temp1,temp2)
png(file="./llcor_k7.png",width = 680, height = 398)
plot(x,llcor7,type="o",main = "Lag and Lead cor coef of K7",ylim = c(-1,1))
dev.off()

llcor8<-cor.lag(output[,8],output[,14],16,16)
temp1<-llcor8[,1:16]
temp2<-llcor8[,17:33]
temp1<-rev(temp1)
llcor8<-cbind(temp1,temp2)
png(file="./llcor_k8.png",width = 680, height = 398)
plot(x,llcor8,type="o",main = "Lag and Lead cor coef of K8",ylim = c(-1,1))
dev.off()

llcor9<-cor.lag(output[,9],output[,14],16,16)
temp1<-llcor9[,1:16]
temp2<-llcor9[,17:33]
temp1<-rev(temp1)
llcor9<-cbind(temp1,temp2)
png(file="./llcor_k9.png",width = 680, height = 398)
plot(x,llcor9,type="o",main = "Lag and Lead cor coef of K9",ylim = c(-1,1))
dev.off()

llcor10<-cor.lag(output[,10],output[,14],16,16)
temp1<-llcor10[,1:16]
temp2<-llcor10[,17:33]
temp1<-rev(temp1)
llcor10<-cbind(temp1,temp2)
png(file="./llcor_k10.png",width = 680, height = 398)
plot(x,llcor10,type="o",main = "Lag and Lead cor coef of K10",ylim = c(-1,1))
dev.off()

llcor11<-cor.lag(output[,11],output[,14],16,16)
temp1<-llcor11[,1:16]
temp2<-llcor11[,17:33]
temp1<-rev(temp1)
llcor11<-cbind(temp1,temp2)
png(file="./llcor_k11.png",width = 680, height = 398)
plot(x,llcor11,type="o",main = "Lag and Lead cor coef of K11",ylim = c(-1,1))
dev.off()

llcor12<-cor.lag(output[,12],output[,14],16,16)
temp1<-llcor12[,1:16]
temp2<-llcor12[,17:33]
temp1<-rev(temp1)
llcor12<-cbind(temp1,temp2)
png(file="./llcor_k12.png",width = 680, height = 398)
plot(x,llcor12,type="o",main = "Lag and Lead cor coef of K12",ylim = c(-1,1))
dev.off()

llcor13<-cor.lag(output[,13],output[,14],16,16)
temp1<-llcor13[,1:16]
temp2<-llcor13[,17:33]
temp1<-rev(temp1)
llcor13<-cbind(temp1,temp2)
png(file="./llcor_k13.png",width = 680, height = 398)
plot(x,llcor13,type="o",main = "Lag and Lead cor coef of K13",ylim = c(-1,1))
dev.off()

write.csv(output, file = "ForTraining.csv", row.names = FALSE)

acf(num)

