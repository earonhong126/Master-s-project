
png(file="./timeSeries.png",width = 1300, height = 900)
data1<-read.csv("Japan.csv",fileEncoding = "UTF-8-BOM")
data1<-data1[-(89:479),]
mdate<-data1[(1:88),1]
mdate<-as.Date(mdate,"%Y/%m/%d")
num<-data1[(1:88),2]
par(family="HiraKakuProN-W6")
par(mfrow = c(4,3))
par(xaxt="n")
par(mar=c(6, 6, 4, 4))
plot(mdate,num,main="毎日新規感染者数",xlab='日付',ylab = '感染人数',lwd=3,col="#ff7c00",type='l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k1<-read.csv("Japan_k1.csv",fileEncoding = "UTF-8-BOM")
k1_date<-as.Date(k1[(1:88),1])
k1_pop<-k1[(1:88),2]
par(xaxt="n")
plot(k1_date,k1_pop,main="新型コロナ 症状",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(k1_date),max(k1_date),"month"),format="%m月%d日")


k2<-read.csv("Japan_k2.csv",fileEncoding = "UTF-8-BOM")
k2_date<-as.Date(k2[(1:88),1])
k2_pop<-k2[(1:88),2]
par(xaxt="n")
plot(k2_date,k2_pop,main ="コロナウイルス 症状",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k3<-read.csv("Japan_k3.csv",fileEncoding = "UTF-8-BOM")
k3_date<-as.Date(k3[(1:88),1])
k3_pop<-k3[(1:88),2]
par(xaxt="n")
plot(k3_date,k3_pop,main ="発熱 咳",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k4<-read.csv("Japan_k4.csv",fileEncoding = "UTF-8-BOM")
k4_date<-as.Date(k4[(1:88),1])
k4_pop<-k4[(1:88),2]
par(xaxt="n")
plot(k4_date,k4_pop,main ="PCR検査",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k5<-read.csv("Japan_k5.csv",fileEncoding = "UTF-8-BOM")
k5_date<-as.Date(k5[(1:88),1])
k5_pop<-k5[(1:88),2]
par(xaxt="n")
plot(k5_date,k5_pop,main ="味覚障害",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k6<-read.csv("Japan_k6.csv",fileEncoding = "UTF-8-BOM")
k6_date<-as.Date(k6[(1:88),1])
k6_pop<-k6[(1:88),2]
par(xaxt="n")
plot(k6_date,k6_pop,main ="消毒用アルコール",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k7<-read.csv("Japan_k7.csv",fileEncoding = "UTF-8-BOM")
k7_date<-as.Date(k7[(1:88),1])
k7_pop<-k7[(1:88),2]
par(xaxt="n")
plot(k7_date,k7_pop,main ="抗体",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k8<-read.csv("Japan_k8.csv",fileEncoding = "UTF-8-BOM")
k8_date<-as.Date(k8[(1:88),1])
k8_pop<-k8[(1:88),2]
par(xaxt="n")
plot(k8_date,k8_pop,main ="マスク",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k9<-read.csv("Japan_k9.csv",fileEncoding = "UTF-8-BOM")
k9_date<-as.Date(k9[(1:88),1])
k9_pop<-k9[(1:88),2]
par(xaxt="n")
plot(k9_date,k9_pop,main ="新型コロナワクチン",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k10<-read.csv("Japan_k10.csv",fileEncoding = "UTF-8-BOM")
k10_date<-as.Date(k10[(1:88),1])
k10_pop<-k10[(1:88),2]
par(xaxt="n")
plot(k10_date,k10_pop,main ="特別定額給付金",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

k11<-read.csv("Japan_k11.csv",fileEncoding = "UTF-8-BOM")
k11_date<-as.Date(k11[(1:88),1])
k11_pop<-k11[(1:88),2]
par(xaxt="n")
plot(k11_date,k11_pop,main ="covid19",xlab='日付',ylab = '人気度',lwd=3,col="#ff7c00",type = 'l',cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
par(xaxt="s")
axis.Date(1,at=seq(min(mdate),max(mdate),"month"),format="%m月%d日")

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
png(file="./lag&leadCoef.png",width = 1200, height = 900)
par(family="HiraKakuProN-W6")
par(mfrow = c(4,3))
par(mar=c(6, 6, 4, 4))
plot(x,llcor1,type="l",lwd=3,col="#ff7c00",main = "新型コロナ 症状",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)      

llcor2<-cor.lag(correlation[,4],correlation[,2],16,16)
temp1<-llcor2[,1:16]
temp2<-llcor2[,17:33]
temp1<-rev(temp1)
llcor2<-cbind(temp1,temp2)
plot(x,llcor2,type="l",lwd=3,col="#ff7c00",main = "コロナウイルス 症状",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor3<-cor.lag(correlation[,5],correlation[,2],16,16)
temp1<-llcor3[,1:16]
temp2<-llcor3[,17:33]
temp1<-rev(temp1)
llcor3<-cbind(temp1,temp2)
plot(x,llcor3,type="l",lwd=3,col="#ff7c00",main = "発熱 咳",xlab='Lag/lead time',ylab='Correlation',ylim = c(-0.3,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor4<-cor.lag(correlation[,6],correlation[,2],16,16)
temp1<-llcor4[,1:16]
temp2<-llcor4[,17:33]
temp1<-rev(temp1)
llcor4<-cbind(temp1,temp2)
plot(x,llcor4,type="l",lwd=3,col="#ff7c00",main = "PCR検査",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor5<-cor.lag(correlation[,7],correlation[,2],16,16)
temp1<-llcor5[,1:16]
temp2<-llcor5[,17:33]
temp1<-rev(temp1)
llcor5<-cbind(temp1,temp2)
plot(x,llcor5,type="l",lwd=3,col="#ff7c00",main = "味覚障害",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor6<-cor.lag(correlation[,8],correlation[,2],16,16)
temp1<-llcor6[,1:16]
temp2<-llcor6[,17:33]
temp1<-rev(temp1)
llcor6<-cbind(temp1,temp2)
plot(x,llcor6,type="l",lwd=3,col="#ff7c00",main = "消毒用アルコール",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor7<-cor.lag(correlation[,9],correlation[,2],16,16)
temp1<-llcor7[,1:16]
temp2<-llcor7[,17:33]
temp1<-rev(temp1)
llcor7<-cbind(temp1,temp2)
plot(x,llcor7,type="l",lwd=3,col="#ff7c00",main = "抗体",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor8<-cor.lag(correlation[,10],correlation[,2],16,16)
temp1<-llcor8[,1:16]
temp2<-llcor8[,17:33]
temp1<-rev(temp1)
llcor8<-cbind(temp1,temp2)
plot(x,llcor8,type="l",lwd=3,col="#ff7c00",main = "マスク",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor9<-cor.lag(correlation[,11],correlation[,2],16,16)
temp1<-llcor9[,1:16]
temp2<-llcor9[,17:33]
temp1<-rev(temp1)
llcor9<-cbind(temp1,temp2)
plot(x,llcor9,type="l",lwd=3,col="#ff7c00",main = "新型コロナワクチン",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor10<-cor.lag(correlation[,12],correlation[,2],16,16)
temp1<-llcor10[,1:16]
temp2<-llcor10[,17:33]
temp1<-rev(temp1)
llcor10<-cbind(temp1,temp2)
plot(x,llcor10,type="l",lwd=3,col="#ff7c00",main = "特別定額給付金",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  

llcor11<-cor.lag(correlation[,13],correlation[,2],16,16)
temp1<-llcor11[,1:16]
temp2<-llcor11[,17:33]
temp1<-rev(temp1)
llcor11<-cbind(temp1,temp2)
plot(x,llcor11,type="l",lwd=3,col="#ff7c00",main = "covid19",xlab='Lag/lead time',ylab='Correlation',ylim = c(0,1),cex.lab = 2.5,cex.axis = 1.3,cex.main = 3)
grid(nx = NULL, ny = NULL, lty = 2, col = "gray", lwd = 2)  
dev.off()

output<-cbind(k1_pop,k2_pop,k3_pop,k4_pop,k5_pop,k6_pop,k7_pop,k8_pop,k9_pop,k10_pop,k11_pop,num)
write.csv(output, file = "ForTraining.csv", row.names = FALSE)

