############### Histogram for  Gender Distribution ######################

mydata<-read.table("C:\\Users\\Swetcha\\Desktop\\Stats\\Project\\Methodist microsurgery study\\MicrosurgeryPerformance1.csv",header = TRUE,sep=",")
sex<-mydata$Sex[1:15]
sex1<-as.numeric(levels(sex))[sex]
x1<-as.data.frame(table(sex1))
x1$sex<-c("Male","Female")
#col1<-c("Pin","Blue")
plot.new()
ggplot(x1,aes(x=x1$sex))+
  geom_bar(aes(y=x1$Freq,fill=x1$sex),stat="identity",width=0.5,show.legend = F)+
  ylim(0,20)+
  labs(x="Gender",y="No.of Subjects")+
  ggtitle("Gender distribution")+
  theme_bw()

dev.off()
