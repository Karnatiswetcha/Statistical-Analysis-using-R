
mydata3<- read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\MicrosurgeryPerformance.csv")
mydata3
library("dplyr")
library(lubridate)
mydata4<-mydata3[1:15, ]
mydata4$id<-seq(as.integer(nrow(mydata4)))
library(ggplot2)


plots <- list()
for (i in 1:15){
  
  num=i
  ext="sub_sutures_final.pdf"
  path=paste('A',i)
  
  print( paste('A',i,sep=''))
  
  ID <- mydata4$ID[i]
  
  
  Number_of_sutures <-c(mydata4$Sutures.1[1],mydata4$Sutures.2[i],mydata4$Sutures.3[i],mydata4$Sutures.4[i],mydata4$Sutures.5[i])
  
  df1<-data.frame(ses=c("ses1","ses2","ses3","ses4","ses5"),sutures= Number_of_sutures)
  
  plots[[i]] =ggplot(data=df1,aes(x=ses,y=sutures))+geom_bar(stat="identity",position="dodge", width= 0.8,col="black",fill="darkorange")+
    labs(x=" ",y=" ")+ ylim(0,6)+
    ggtitle(paste("Subject",ID))
  
  
  
}
library(ggpubr)
#ggarrange(plots[[1]],plots[[2]],plots[[3]],plots[[4]],plots[[5]],plots[[6]],plots[[7]],plots[[8]],plots[[9]],plots[[10]],plots[[11]],plots[[12]],plots[[13]],plots[[14]],plots[[15]],nrow=5,ncol=3)

library(gridExtra)
library(grid)
f <- gridExtra::arrangeGrob(plots[[1]],plots[[2]],plots[[3]],plots[[4]],plots[[5]],plots[[6]],plots[[7]],plots[[8]],plots[[9]],plots[[10]],plots[[11]],plots[[12]],plots[[13]],plots[[14]],plots[[15]],nrow=3,ncol=5, 
                            bottom=grid::textGrob(label= expression(Sessions),
                                                  gp= gpar(fontsize=12, fontface="bold", col="black")),
                            left=grid::textGrob(label=expression(Number~of~Sutures), rot=90, 
                                                gp= gpar(fontsize=12, fontface="bold", col="black")),top="Accuracy plots for Number of Sutures")

grid::grid.newpage() 
grid::grid.draw(f)

dev.off()
