# Cutting and suturing against each other

mydata3<- read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\Team12_StatisticalInference1\\MicrosurgeryPerformance.csv")
mydata3
#mydata3$Cutting.Time.1
#install.packages("dplyr")
#library("dplyr")
#install.packages("lubridate")

library(lubridate)
mydata4<-mydata3[1:15, ]
#mydata4$id<-seq(as.integer(nrow(mydata4)))


#remove.packages("ggplot2")
#install.packages('ggplot2', dependencies = TRUE)

library(ggplot2)

for (i in 1:15){
  
  num=i
  ext="accu_scores.pdf"
  path=paste(num,ext)
  
  
  
  pdf(file=path)
  
scorer1_cut <- c(mydata4$Score.Cut1[i],mydata4$Score.Cut1.1[i],mydata4$Score.Cut1.2[i],mydata4$Score.Cut1.3[i],mydata4$Score.Cut1.4[i])
scorer2_cut <- c(mydata4$Score.Cut2[i],mydata4$Score.Cut2.1[i],mydata4$Score.Cut2.2[i],mydata4$Score.Cut2.3[i],mydata4$Score.Cut2.4[i])


scorer1_sut <- c(mydata4$Score.Sut1[i],mydata4$Score.Sut1.1[i],mydata4$Score.Sut1.2[i],mydata4$Score.Sut1.3[i],mydata4$Score.Sut1.4[i])
scorer2_sut <- c(mydata4$Score.Sut2[i],mydata4$Score.Sut2.1[i],mydata4$Score.Sut2.2[i],mydata4$Score.Sut2.3[i],mydata4$Score.Sut2.4[i])


    
 # Number_of_sutures <-c(mydata4$Sutures.1[1],mydata4$Sutures.2[i],mydata4$Sutures.3[i],mydata4$Sutures.4[i],mydata4$Sutures.5[i])
  
  #subject1_ct<-c(cuttingtime_1[i],cuttingtime_2[i],cuttingtime_3[i],cuttingtime_4[i],cuttingtime_5[i])
  #subject1_st<-c(suturingtime_1[i],suturingtime_2[i],suturingtime_3[i],suturingtime_4[i],suturingtime_5[i])
  
  ID <- mydata4$ID[i]
  df1<-data.frame(ses=rep(c("ses1","ses2","ses3","ses4","ses5"),times=2,each=1),scores= c(scorer1_cut,scorer2_cut),Score_by = c("scorer1","scorer1","scorer1","scorer1","scorer1","scorer2","scorer2","scorer2","scorer2","scorer2"))
  
  df2 <- data.frame(ses=rep(c("ses1","ses2","ses3","ses4","ses5"),times=2,each=1),scores= c(scorer1_sut,scorer2_sut),Score_by = c("scorer1","scorer1","scorer1","scorer1","scorer1","scorer2","scorer2","scorer2","scorer2","scorer2"))
  
  X= ggplot(data=df1,aes(x=ses,y=scores, fill=Score_by))+geom_bar(stat="identity",position="dodge",col="slategray" ,width = 0.5)+
          labs(x="Scorer",y="Scores")+ylim(0,25)+
    ggtitle(paste("Accuracy plot for Cutting based on scores","( Subject",ID,")"))+ scale_fill_manual(values = c('khaki','royalblue1'))
   # theme(panel.background = element_rect(fill = "gray39"))
  
 Y = ggplot(data=df2,aes(x=ses,y=scores, fill=Score_by))+geom_bar(stat="identity",position="dodge",col="slategray", width= 0.5)+
  labs(x="Scorer",y="Score")+ylim(0,25)+
  ggtitle(paste("Accuracy plot for Suturing based on scores","( Subject",ID,")"))+ scale_fill_manual(values = c('khaki','royalblue1'))
   #theme(panel.background = element_rect(fill = "gray39"))
  
 
 
 #library(ggpubr)
 #install.packages("ggpubr")
 print(ggarrange(X, Y, ncol=1, nrow=2))
 
  dev.off()
  
}

dev.off()



