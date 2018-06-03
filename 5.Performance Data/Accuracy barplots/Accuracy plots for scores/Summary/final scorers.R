# Cutting and suturing against each other

mydata3<- read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\MicrosurgeryPerformance.csv")
library("dplyr")
library(lubridate)
mydata4<-mydata3[1:15, ]
#mydata4$id<-seq(as.integer(nrow(mydata4)))

mydata4['Score.Cut1']<-as.numeric(as.character(mydata4$Score.Cut1))
mydata4['Score.Sut1']<-as.numeric(as.character(mydata4$Score.Sut1))
mydata4['Score.Cut2']<-as.numeric(as.character(mydata4$Score.Cut2))
mydata4['Score.Sut2']<-as.numeric(as.character(mydata4$Score.Sut2))
mydata4['Score.Cut1.1']<-as.numeric(as.character(mydata4$Score.Cut1.1))
mydata4['Score.Sut1.1']<-as.numeric(as.character(mydata4$Score.Sut1.1))
mydata4['Score.Cut1.2']<-as.numeric(as.character(mydata4$Score.Cut1.2))
mydata4['Score.Cut2.1']<-as.numeric(as.character(mydata4$Score.Cut2.1))
mydata4['Score.Sut2.1']<-as.numeric(as.character(mydata4$Score.Sut2.1))
mydata4['Score.Sut1.2']<-as.numeric(as.character(mydata4$Score.Sut1.2))
mydata4['Score.Cut2.2']<-as.numeric(as.character(mydata4$Score.Cut2.2))
mydata4['Score.Sut2.2']<-as.numeric(as.character(mydata4$Score.Sut2.2))
mydata4['Score.Cut1.3']<-as.numeric(as.character(mydata4$Score.Cut1.3))
mydata4['Score.Sut1.3']<-as.numeric(as.character(mydata4$Score.Sut1.3))
mydata4['Score.Cut2.3']<-as.numeric(as.character(mydata4$Score.Cut2.3))
mydata4['Score.Sut2.3']<-as.numeric(as.character(mydata4$Score.Sut2.3))
mydata4['Score.Cut1.4']<-as.numeric(as.character(mydata4$Score.Cut1.4))
mydata4['Score.Sut1.4']<-as.numeric(as.character(mydata4$Score.Sut1.4))
mydata4['Score.Cut2.4']<-as.numeric(as.character(mydata4$Score.Cut2.4))
mydata4['Score.Sut2.4']<-as.numeric(as.character(mydata4$Score.Sut2.4))

library(ggplot2)

for (i in 1:15){
  
  num=i
  ext="fin.png"
  path=paste(num,ext)
  
  
  
  png(file=path)
  
  scorer1_cut <- c(mydata4$Score.Cut1[i],mydata4$Score.Cut1.1[i],mydata4$Score.Cut1.2[i],mydata4$Score.Cut1.3[i],mydata4$Score.Cut1.4[i])
  scorer2_cut <- c(mydata4$Score.Cut2[i],mydata4$Score.Cut2.1[i],mydata4$Score.Cut2.2[i],mydata4$Score.Cut2.3[i],mydata4$Score.Cut2.4[i])
  
  
  scorer1_sut <- c(mydata4$Score.Sut1[i],mydata4$Score.Sut1.1[i],mydata4$Score.Sut1.2[i],mydata4$Score.Sut1.3[i],mydata4$Score.Sut1.4[i])
  scorer2_sut <- c(mydata4$Score.Sut2[i],mydata4$Score.Sut2.1[i],mydata4$Score.Sut2.2[i],mydata4$Score.Sut2.3[i],mydata4$Score.Sut2.4[i])
  
  ID <- mydata4$ID[i]
  df1<-data.frame(ses=rep(c("ses1","ses2","ses3","ses4","ses5"),times=2,each=1),scores= c(scorer1_cut,scorer2_cut),Score_by = c("scorer1","scorer1","scorer1","scorer1","scorer1","scorer2","scorer2","scorer2","scorer2","scorer2"))
  
  df2 <- data.frame(ses=rep(c("ses1","ses2","ses3","ses4","ses5"),times=2,each=1),scores= c(scorer1_sut,scorer2_sut),Score_by = c("scorer1","scorer1","scorer1","scorer1","scorer1","scorer2","scorer2","scorer2","scorer2","scorer2"))
  
  X= ggplot(data=df1,aes(x=ses,y=scores, fill=Score_by))+geom_bar(stat="identity",position="dodge",col="slategray" ,width = 0.5)+
    labs(x=" ",y="Score")+ylim(0,30)+ggtitle(paste("Subject",ID,": Cutting"))+ scale_fill_manual(values = c('khaki','royalblue1'))+theme(legend.position="none",plot.title = element_text(color="brown", size=14, face="bold.italic"))
  # theme(panel.background = element_rect(fill = "gray39"))
  
  Y = ggplot(data=df2,aes(x=ses,y=scores, fill=Score_by))+geom_bar(stat="identity",position="dodge",col="slategray", width= 0.5)+
    labs(x="Session",y="Score")+ylim(0,30)+ggtitle(paste("Suturing"))+ scale_fill_manual(values = c('khaki','royalblue1'))+theme(legend.position="none",panel.background = element_rect(fill = "pink"),plot.title = element_text(color="brown", size=14, face="bold.italic"))
  #library(ggpubr)
  print(ggarrange(X, Y, ncol=1, nrow=2))
  
  dev.off()
  
}

plot(1, type = "n", axes=FALSE, xlab="", ylab="")
plot_colors <- c('khaki','royalblue1')
legend(x = "center",inset = 0,
       legend = c("Scorer1","Scorer2"),col=plot_colors, lwd=5, cex=1.5,pch=NA)
mtext(side=3,"Scored_By",padj = 7,font=0.5)
#dev.off()

dev.off()



