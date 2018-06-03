########## Perinasal Perspiration subject22 ###########

######### Loading data and calculating the means #############

####################list of means subject22#############
for(z in 1:5){
  
  pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject22\\subject22\\session",z,"\\subject22_Baseline",z,".csv",sep="")
  pathc<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject22\\subject22\\session",z,"\\subject22_Cutting",z,".csv",sep="")
  paths<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject22\\subject22\\session",z,"\\subject22_Suturing",z,".csv",sep="")
  x<-paste("sub22_ses",z,"_mb",sep="")
  y<-paste("sub22_ses",z,"_mc",sep="")
  q<-paste("sub22_ses",z,"_ms",sep="")
  ###########mb###########
  if(file.exists(pathb)){
    peri_data<-read.csv(pathb)
    k=1
    s=0
    #m =list()
    c=0
    
    assign(x,c())
    for (i in 1:length(peri_data$Frame.)) {
      #print(i)
      
      if(peri_data$Time[i]<k){
        s=s+peri_data$Perspiration[i]
        c=c+1
        #print(s)
      }
      else{
        assign(x,c(get(x),s/c))
        #print(s/c)
        k=k+1
        s=peri_data$Perspiration[i]
        c=1
      }
    }
    assign(x,c(get(x),s/c))
  }
  #########mc#####################
  if(file.exists(pathc)){
    peri_data<-read.csv(pathc)
    k=1
    s=0
    #m =list()
    c=0
    
    assign(y,c())
    for (i in 1:length(peri_data$Frame.)) {
      #print(i)
      
      if(peri_data$Time[i]<k){
        s=s+peri_data$Perspiration[i]
        c=c+1
        #print(s)
      }
      else{
        assign(y,c(get(y),s/c))
        #print(s/c)
        k=k+1
        s=peri_data$Perspiration[i]
        c=1
      }
    }
    assign(y,c(get(y),s/c))
  }
  ##############ms####################
  if(file.exists(paths)){
    peri_data<-read.csv(paths)
    k=1
    s=0
    #m =list()
    c=0
    
    assign(q,c())
    for (i in 1:length(peri_data$Frame.)) {
      #print(i)
      
      if(peri_data$Time[i]<k){
        s=s+peri_data$Perspiration[i]
        c=c+1
        #print(s)
      }
      else{
        assign(q,c(get(q),s/c))
        #print(s/c)
        k=k+1
        s=peri_data$Perspiration[i]
        c=1
      }
    }
    assign(q,c(get(q),s/c))
  }
}



############### Creating Dataframe for means ####################



#pdf(file="subject22_pp.pdf")

plot.new()


#text(.5,0.5,"First title",cex=2,font=1)

#help(title)

par(mfrow=c(3,2))

plot(sub22_ses1_mc,type="l",xlim=c(0,1200),ylim=c(0,0.020),col="green",xlab=NA,ylab=NA,main="session1")
mtext(side=2,expression("["~PP ~degree~C^2~"]"),padj=-1.25)
mtext(side=1,expression("Time(sec)"),padj=2.2)

lines(sub22_ses1_ms,col="red")
lines(sub22_ses1_mb,col="black")



plot(sub22_ses2_mc,type="l",xlim=c(0,1200),ylim=c(0,0.020),col="green",xlab=NA,ylab = NA,main="session2")
lines(sub22_ses2_ms,col="red")
lines(sub22_ses2_mb,col="black")
mtext(side=2,expression("["~PP ~degree~C^2~"]"),padj=-1.25)
mtext(side=1,expression("Time(sec)"),padj=2.2)



plot(sub22_ses3_mc,type="l",xlim=c(0,1200),ylim=c(0,0.020),col="green",xlab=NA,ylab = NA,main="session3")
lines(sub22_ses3_ms,col="red")
lines(sub22_ses3_mb,col="black")
mtext(side=2,expression("["~PP ~degree~C^2~"]"),padj=-1.25)
mtext(side=1,expression("Time(sec)"),padj=2.2)



plot(sub22_ses4_mc,type="l",xlim=c(0,1200),ylim=c(0,0.020),col="green",xlab=NA,ylab = NA,main="session4")
lines(sub22_ses4_ms,col="red")
lines(sub22_ses4_mb,col="black")
mtext(side=2,expression("["~PP ~degree~C^2~"]"),padj=-1.25)
mtext(side=1,expression("Time(sec)"),padj=2.2)




plot(sub22_ses5_mc,type="l",xlim=c(0,1200),ylim=c(0,0.020),col="green",xlab=NA,ylab = NA,main="session5")
lines(sub22_ses5_ms,col="red")
lines(sub22_ses5_mb,col="black")
mtext(side=2,expression("["~PP ~degree~C^2~"]"),padj=-1.25)
mtext(side=1,expression("Time(sec)"),padj=2.2,font = 0.25)





title(expression('Subject 22 Perinasal Perspiration ['~PP~degree~C^2~']'),line = -1, outer = TRUE,font=3,cex=3)



#dev.off()

