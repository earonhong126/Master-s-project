png(file="./Scatterplot.png",width = 1300, height = 900)
data1<-read.csv("Japan.csv",fileEncoding = "UTF-8-BOM")
data1<-data1[-(89:479),]
mdate<-data1[(1:88),1]
mdate<-as.Date(mdate,"%Y/%m/%d")
num<-data1[(1:88),2]
par(family="HiraKakuProN-W6")
par(mfrow = c(4,3))

k1<-read.csv("Japan_k1.csv",fileEncoding = "UTF-8-BOM")
k1_pop<-k1[(1:88),2]
par(mar=c(6, 6, 2, 2))
plot(k1_pop,num,xlab='新型コロナ 症状',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k2<-read.csv("Japan_k2.csv",fileEncoding = "UTF-8-BOM")
k2_pop<-k2[(1:88),2]
plot(k2_pop,num,xlab='コロナウイルス 症状',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k3<-read.csv("Japan_k3.csv",fileEncoding = "UTF-8-BOM")
k3_pop<-k3[(1:88),2]
plot(k3_pop,num,xlab='発熱 咳',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k4<-read.csv("Japan_k4.csv",fileEncoding = "UTF-8-BOM")
k4_pop<-k4[(1:88),2]
plot(k4_pop,num,xlab='PCR検査',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k5<-read.csv("Japan_k5.csv",fileEncoding = "UTF-8-BOM")
k5_pop<-k5[(1:88),2]
plot(k5_pop,num,xlab='味覚障害',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k6<-read.csv("Japan_k6.csv",fileEncoding = "UTF-8-BOM")
k6_pop<-k6[(1:88),2]
plot(k6_pop,num,xlab='消毒用アルコール',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)


k7<-read.csv("Japan_k7.csv",fileEncoding = "UTF-8-BOM")
k7_pop<-k7[(1:88),2]
plot(k7_pop,num,xlab='抗体',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k8<-read.csv("Japan_k8.csv",fileEncoding = "UTF-8-BOM")
k8_pop<-k8[(1:88),2]
plot(k8_pop,num,xlab='マスク',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

k9<-read.csv("Japan_k9.csv",fileEncoding = "UTF-8-BOM")
k9_pop<-k9[(1:88),2]
plot(k9_pop,num,xlab='新型コロナワクチン',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)


k10<-read.csv("Japan_k10.csv",fileEncoding = "UTF-8-BOM")
k10_pop<-k10[(1:88),2]
plot(k10_pop,num,xlab='特別定額給付金',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)


k11<-read.csv("Japan_k11.csv",fileEncoding = "UTF-8-BOM")
k11_pop<-k11[(1:88),2]
plot(k10_pop,num,xlab='covid19',ylab = '感染人数',type="p",pch=16,cex=2,col="#ff7c00",cex.lab = 2.8,cex.axis = 1.3,cex.main = 2)

dev.off()

correlation<-cbind(mdate,num,k1_pop,k2_pop,k3_pop,k4_pop,k5_pop,k6_pop,k7_pop,k8_pop,k9_pop,k10_pop,k11_pop)
summary(correlation)
cor(correlation[,c(2,3,4,5,6,7,8,9,10,11,12,13)])

cor.test(correlation[,2],correlation[,3])
cor.test(correlation[,2],correlation[,4])
cor.test(correlation[,2],correlation[,5])
cor.test(correlation[,2],correlation[,6])
cor.test(correlation[,2],correlation[,7])
cor.test(correlation[,2],correlation[,8])
cor.test(correlation[,2],correlation[,9])
cor.test(correlation[,2],correlation[,10])
cor.test(correlation[,2],correlation[,11])
cor.test(correlation[,2],correlation[,12])
cor.test(correlation[,2],correlation[,13])

llcor1<-cor.lag(correlation[,3],correlation[,2],16,16)
temp1<-llcor1[,1:16]
temp2<-llcor1[,17:33]
temp1<-rev(temp1)
llcor1<-cbind(temp1,temp2)
x<-c(-16:16)
png(file="./llcor_k1.png",width = 680, height = 398)
plot(x,llcor1,type="o",main = "Lag and Lead cor coef of K1",ylim = c(0,1))
dev.off()

llcor2<-cor.lag(correlation[,4],correlation[,2],16,16)
temp1<-llcor2[,1:16]
temp2<-llcor2[,17:33]
temp1<-rev(temp1)
llcor2<-cbind(temp1,temp2)
png(file="./llcor_k2.png",width = 680, height = 398)
plot(x,llcor2,type="o",main = "Lag and Lead cor coef of K2",ylim = c(0,1))
dev.off()

llcor3<-cor.lag(correlation[,5],correlation[,2],16,16)
temp1<-llcor3[,1:16]
temp2<-llcor3[,17:33]
temp1<-rev(temp1)
llcor3<-cbind(temp1,temp2)
png(file="./llcor_k3.png",width = 680, height = 398)
plot(x,llcor3,type="o",main = "Lag and Lead cor coef of K3",ylim = c(-0.3,1))
dev.off()

llcor4<-cor.lag(correlation[,6],correlation[,2],16,16)
temp1<-llcor4[,1:16]
temp2<-llcor4[,17:33]
temp1<-rev(temp1)
llcor4<-cbind(temp1,temp2)
png(file="./llcor_k4.png",width = 680, height = 398)
plot(x,llcor4,type="o",main = "Lag and Lead cor coef of K4",ylim = c(0,1))
dev.off()

llcor5<-cor.lag(correlation[,7],correlation[,2],16,16)
temp1<-llcor5[,1:16]
temp2<-llcor5[,17:33]
temp1<-rev(temp1)
llcor5<-cbind(temp1,temp2)
png(file="./llcor_k5.png",width = 680, height = 398)
plot(x,llcor5,type="o",main = "Lag and Lead cor coef of K5",ylim = c(0,1))
dev.off()

llcor6<-cor.lag(correlation[,8],correlation[,2],16,16)
temp1<-llcor6[,1:16]
temp2<-llcor6[,17:33]
temp1<-rev(temp1)
llcor6<-cbind(temp1,temp2)
png(file="./llcor_k6.png",width = 680, height = 398)
plot(x,llcor6,type="o",main = "Lag and Lead cor coef of K6",ylim = c(0,1))
dev.off()

llcor7<-cor.lag(correlation[,9],correlation[,2],16,16)
temp1<-llcor7[,1:16]
temp2<-llcor7[,17:33]
temp1<-rev(temp1)
llcor7<-cbind(temp1,temp2)
png(file="./llcor_k7.png",width = 680, height = 398)
plot(x,llcor7,type="o",main = "Lag and Lead cor coef of K7",ylim = c(0,1))
dev.off()

llcor8<-cor.lag(correlation[,10],correlation[,2],16,16)
temp1<-llcor8[,1:16]
temp2<-llcor8[,17:33]
temp1<-rev(temp1)
llcor8<-cbind(temp1,temp2)
png(file="./llcor_k8.png",width = 680, height = 398)
plot(x,llcor8,type="o",main = "Lag and Lead cor coef of K8",ylim = c(0,1))
dev.off()

llcor9<-cor.lag(correlation[,11],correlation[,2],16,16)
temp1<-llcor9[,1:16]
temp2<-llcor9[,17:33]
temp1<-rev(temp1)
llcor9<-cbind(temp1,temp2)
png(file="./llcor_k9.png",width = 680, height = 398)
plot(x,llcor9,type="o",main = "Lag and Lead cor coef of K9",ylim = c(0,1))
dev.off()

llcor10<-cor.lag(correlation[,12],correlation[,2],16,16)
temp1<-llcor10[,1:16]
temp2<-llcor10[,17:33]
temp1<-rev(temp1)
llcor10<-cbind(temp1,temp2)
png(file="./llcor_k10.png",width = 680, height = 398)
plot(x,llcor10,type="o",main = "Lag and Lead cor coef of K10",ylim = c(0,1))
dev.off()

llcor11<-cor.lag(correlation[,13],correlation[,2],16,16)
temp1<-llcor11[,1:16]
temp2<-llcor11[,17:33]
temp1<-rev(temp1)
llcor11<-cbind(temp1,temp2)
png(file="./llcor_k11.png",width = 680, height = 398)
plot(x,llcor10,type="o",main = "Lag and Lead cor coef of K11",ylim = c(0,1))
dev.off()

output<-cbind(k1_pop,k2_pop,k3_pop,k4_pop,k5_pop,k6_pop,k7_pop,k8_pop,k9_pop,k10_pop,k11_pop,num)
write.csv(output, file = "ForTraining.csv", row.names = FALSE)

