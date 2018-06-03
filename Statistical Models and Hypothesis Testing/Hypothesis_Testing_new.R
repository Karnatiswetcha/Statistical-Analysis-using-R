###### Merging data for Analysis ######

##### Subject data #######

performance_data<-read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\MicrosurgeryPerformance.csv")
performance_data1<-performance_data[1:15,]
sessions<-rep(c("Session1","Session2","Session3","Session4","Session5"),times=15,each=4)
tasks<-rep(c("Cutting","Suturing"),times=75,each=2)
scorer<-rep(c("Scorer1","Scorer2"),times=150,each=1)
subjects<-rep(c("subject1","subject2","subject3","subject4","subject7","subject8","subject10","subject11","subject12","subject13","subject19","subject21","subject22","subject24","subject26"),each=20)
scores<-data.frame(scorer_cut1=performance_data$Score.Cut1,scorer_cut2=performance_data$Score.Cut2,scorer_sut1=performance_data$Score.Sut1,scorer_sut2=performance_data$Score.Sut2,two_scorer_cut1=performance_data$Score.Cut1.1,two_scorer_cut2=performance_data$Score.Cut2.1,two_scorer_sut1=performance_data$Score.Sut1.1,two_scorer_sut2=performance_data$Score.Sut2.1,three_scorer_cut1=performance_data$Score.Cut1.2,three_scorer_cut2=performance_data$Score.Cut2.2,three_scorer_sut1=performance_data$Score.Sut1.2,three_scorer_sut2=performance_data$Score.Sut2.2,four_scorer_cut1=performance_data$Score.Cut1.3,four_scorer_cut2=performance_data$Score.Cut2.3,four_scorer_sut1=performance_data$Score.Sut1.3,four_scorer_sut2=performance_data$Score.Sut2.3,five_scorer_cut1=performance_data$Score.Cut1.4,five_scorer_cut2=performance_data$Score.Cut2.4,five_scorer_sut1=performance_data$Score.Sut1.4,five_scorer_sut2=performance_data$Score.Sut2.4)
#scores
final_scores <- scores[1:15,]
#final_scores 
####### Data conversion and assigning ############
final_scores$scorer_cut1 <- as.numeric(as.character(final_scores$scorer_cut1))
final_scores$scorer_cut2 <- as.numeric(as.character(final_scores$scorer_cut2))
final_scores$scorer_sut1 <- as.numeric(as.character(final_scores$scorer_sut1))
final_scores$scorer_sut2 <- as.numeric(as.character(final_scores$scorer_sut2))
final_scores$two_scorer_cut1 <- as.numeric(as.character(final_scores$two_scorer_cut1))
final_scores$two_scorer_cut2 <- as.numeric(as.character(final_scores$two_scorer_cut2))
final_scores$two_scorer_sut1 <- as.numeric(as.character(final_scores$two_scorer_sut1))
final_scores$two_scorer_sut2 <- as.numeric(as.character(final_scores$two_scorer_sut2))
final_scores$three_scorer_cut1 <-as.numeric(as.character(final_scores$three_scorer_cut1))
final_scores$three_scorer_cut2 <- as.numeric(as.character(final_scores$three_scorer_cut2))
final_scores$three_scorer_sut1 <- as.numeric(as.character(final_scores$three_scorer_sut1))
final_scores$three_scorer_sut2 <- as.numeric(as.character(final_scores$three_scorer_sut2))
final_scores$four_scorer_cut1 <- as.numeric(as.character(final_scores$four_scorer_cut1))
final_scores$four_scorer_cut2 <- as.numeric(as.character(final_scores$four_scorer_cut2))
final_scores$four_scorer_sut1 <- as.numeric(as.character(final_scores$four_scorer_sut1))
final_scores$four_scorer_sut2 <- as.numeric(as.character(final_scores$four_scorer_sut2))
final_scores$five_scorer_cut1 <- as.numeric(as.character(final_scores$five_scorer_cut1))
final_scores$five_scorer_cut2 <- as.numeric(as.character(final_scores$five_scorer_cut2))
final_scores$five_scorer_sut1 <- as.numeric(as.character(final_scores$five_scorer_sut1))
final_scores$five_scorer_sut2 <- as.numeric(as.character(final_scores$five_scorer_sut2))

final_scores<-unname(final_scores)
for(i in 1:15){
  
  
  scor<-paste("score",i,sep="")
  assign(scor,list(as.numeric(t(final_scores[i,]))))
  
}
sex<-c(rep("Male",200),rep("Female",100))

Age<-rep(c(performance_data1$Age[1],performance_data1$Age[2],performance_data1$Age[3],performance_data1$Age[4],performance_data1$Age[5],performance_data1$Age[6],performance_data1$Age[7],performance_data1$Age[8],performance_data1$Age[9],performance_data1$Age[10],
           performance_data1$Age[11],performance_data1$Age[12],performance_data1$Age[13],performance_data1$Age[14],performance_data1$Age[15]),each=20)


####################list of means for all subjects #####################
cal_mean <-function(path, x){
  
  if(file.exists(path)){
    peri_data<-read.csv(path)
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
    xx<-get(x)
    eval.parent(substitute(assign(x,xx)))
  }
  
}

for(e in c(1,2,3,4,7,8,10,11,12,13,19,21,22,24,26)){
  
  for(z in 1:5){
    
    if(e<=9){
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",z,"\\Subject0",e,"_Baseline",z,".csv",sep="")
      pathc<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",z,"\\Subject0",e,"_Cutting",z,".csv",sep="")
      paths<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",z,"\\Subject0",e,"_Suturing",z,".csv",sep="")
    }else{
      
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",z,"\\Subject",e,"_Baseline",z,".csv",sep="")
      pathc<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",z,"\\Subject",e,"_Cutting",z,".csv",sep="")
      paths<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",z,"\\Subject",e,"_Suturing",z,".csv",sep="")
      
    }
    x<-paste("sub",e,"_ses",z,"_mb",sep="")
    y<-paste("sub",e,"_ses",z,"_mc",sep="")
    q<-paste("sub",e,"_ses",z,"_ms",sep="")
    ###########mb###########
    
    cal_mean(pathb,x)
    
    #########mc#####################
    cal_mean(pathc,y)
    ##############ms####################
    
    cal_mean(paths,q)
  }
}

######to calculate mean of means#####################
for(e in c(1,2,3,4,7,8,10,11,12,13,19,21,22,24,26)){
  
  for(xx in 1:5){
    
    if(e<=9){
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",xx,"\\Subject0",e,"_Baseline",xx,".csv",sep="")
      pathc<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",xx,"\\Subject0",e,"_Cutting",xx,".csv",sep="")
      paths<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",xx,"\\Subject0",e,"_Suturing",xx,".csv",sep="")
    }else{
      
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",xx,"\\Subject",e,"_Baseline",xx,".csv",sep="")
      pathc<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",xx,"\\Subject",e,"_Cutting",xx,".csv",sep="")
      paths<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",xx,"\\Subject",e,"_Suturing",xx,".csv",sep="")
      
    }  
  x<-paste("sub",e,"_ses",xx,"_mb",sep="")
  y<-paste("sub",e,"_ses",xx,"_mc",sep="")
  q<-paste("sub",e,"_ses",xx,"_ms",sep="")

  
  if(exists(x)){
    peri_data<-read.csv(pathb)
    mmb<-paste("sub",e,"_ses",xx,"_mmb",sep="")
    assign(mmb,c())
    assign(mmb,mean(peri_data$Perspiration))
  }
  if(exists(y)){
    peri_data<-read.csv(pathc)
    mmc<-paste("sub",e,"_ses",xx,"_mmc",sep="")
    assign(mmc,c())
    assign(mmc,mean(peri_data$Perspiration))
  }
  if(exists(q)){
    peri_data<-read.csv(paths)
    mms<-paste("sub",e,"_ses",xx,"_mms",sep="")
    assign(mms,c())
    assign(mms,mean(peri_data$Perspiration))
  }
  if(exists(x) & exists(y)){
    mmpc<-paste("sub",e,"_ses",xx,"_mmpc",sep="")
    assign(mmpc,get(mmc)-get(mmb))
  }
  if(exists(x) & exists(q)){
    mmps<-paste("sub",e,"_ses",xx,"_mmps",sep="")
    assign(mmps,get(mms)-get(mmb))
  }
  
}

}
######## Creating a dataframe ###########

####### Scores combining ##########

sub_df<-data.frame(subjects,sessions,tasks,scorer,sex,Age)
sub<-data.frame(score1,score2,score3,score4,score5,score6,score7,score8,score9,score10,score11,score12,score13,score14,score15)
colnames(sub)<-c("score1","score2","score3","score4","score5","score6","score7","score8","score9","score10","score11","score12","score13","score14","score15")
sub_df["scores"]<-c(sub[,1], sub[,2],sub[,3],sub[,4],sub[,5],sub[,6],sub[,7],sub[,8],sub[,9],sub[,10],sub[,11],sub[,12],sub[,13],sub[,14],sub[,15])

###### mupp combining ###################

#sub1_df["mupp"]<-rep(sub1_ses1_mmpc,sub1_ses1_mmps,sub1_ses2_mmpc,sub1_ses2_mmps,sub1_ses3_mmpc,sub1_ses3_mmps,sub)
#sub1_df["mupp"]<-rep(c(sub1_ses1_mmc,sub1_ses1_mms,sub1_ses2_mmc,sub1_ses2_mms,sub1_ses3_mmc,sub1_ses3_mms,sub1_ses3_mmc,sub1_ses4_mms,sub1_ses5_mmc,sub1_ses4_mms),each=2)

sub1_pp<-rep(c(sub1_ses1_mmpc,sub1_ses1_mmps,sub1_ses2_mmpc,sub1_ses2_mmps,sub1_ses3_mmpc,sub1_ses3_mmps,NA,NA,sub1_ses5_mmpc,NA),each=2)
sub2_pp<-rep(c(sub2_ses1_mmpc,sub2_ses1_mmps,sub2_ses2_mmpc,sub2_ses2_mmps,sub2_ses3_mmpc,sub2_ses3_mmps,sub2_ses4_mmpc,sub2_ses4_mmps,sub2_ses5_mmpc,sub2_ses5_mmps),each=2)
sub3_pp<-rep(c(sub3_ses1_mmpc,sub3_ses1_mmps,sub3_ses2_mmpc,NA,sub3_ses3_mmpc,sub3_ses3_mmps,sub3_ses4_mmpc,sub3_ses4_mmps,sub3_ses5_mmpc,sub3_ses5_mmps),each=2)
sub4_pp<-rep(c(sub4_ses1_mmpc,sub4_ses1_mmps,sub4_ses2_mmpc,sub4_ses2_mmps,sub4_ses3_mmpc,sub4_ses3_mmps,sub4_ses4_mmpc,sub4_ses4_mmps,sub4_ses5_mmpc,sub4_ses5_mmps),each=2)
sub7_pp<-rep(c(sub7_ses1_mmpc,sub7_ses1_mmps,sub7_ses2_mmpc,sub7_ses2_mmps,sub7_ses3_mmpc,sub7_ses3_mmps,sub7_ses4_mmpc,sub7_ses4_mmps,sub7_ses5_mmpc,sub7_ses5_mmps),each=2)
sub8_pp<-rep(c(sub8_ses1_mmpc,sub8_ses1_mmps,sub8_ses2_mmpc,sub8_ses2_mmps,sub8_ses3_mmpc,sub8_ses3_mmps,sub8_ses4_mmpc,sub8_ses4_mmps,sub8_ses5_mmpc,sub8_ses5_mmps),each=2)
sub10_pp<-rep(c(sub10_ses1_mmpc,sub10_ses1_mmps,NA,sub10_ses2_mmps,sub10_ses3_mmpc,sub10_ses3_mmps,sub10_ses4_mmpc,sub10_ses4_mmps,sub10_ses5_mmpc,sub10_ses5_mmps),each=2)
sub11_pp<-rep(c(sub11_ses1_mmpc,sub11_ses1_mmps,sub11_ses2_mmpc,sub11_ses2_mmps,sub11_ses3_mmpc,sub11_ses3_mmps,sub11_ses4_mmpc,sub11_ses4_mmps,sub11_ses5_mmpc,sub11_ses5_mmps),each=2)
sub12_pp<-rep(c(sub12_ses1_mmpc,sub12_ses1_mmps,sub12_ses2_mmpc,sub12_ses2_mmps,sub12_ses3_mmpc,sub12_ses3_mmps,sub12_ses4_mmpc,sub12_ses4_mmps,sub12_ses5_mmpc,sub12_ses5_mmps),each=2)
sub13_pp<-rep(c(sub13_ses1_mmpc,sub13_ses1_mmps,sub13_ses2_mmpc,sub13_ses2_mmps,sub13_ses3_mmpc,sub13_ses3_mmps,sub13_ses4_mmpc,sub13_ses4_mmps,sub13_ses5_mmpc,sub13_ses5_mmps),each=2)
sub19_pp<-rep(c(sub19_ses1_mmpc,sub19_ses1_mmps,sub19_ses2_mmpc,sub19_ses2_mmps,sub19_ses3_mmpc,sub19_ses3_mmps,sub19_ses4_mmpc,sub19_ses4_mmps,sub19_ses5_mmpc,sub19_ses5_mmps),each=2)
sub21_pp<-rep(c(sub21_ses1_mmpc,sub21_ses1_mmps,sub21_ses2_mmpc,sub21_ses2_mmps,sub21_ses3_mmpc,sub21_ses3_mmps,sub21_ses4_mmpc,sub21_ses4_mmps,sub21_ses5_mmpc,sub21_ses5_mmps),each=2)
sub22_pp<-rep(c(sub22_ses1_mmpc,sub22_ses1_mmps,sub22_ses2_mmpc,sub22_ses2_mmps,sub22_ses3_mmpc,sub22_ses3_mmps,sub22_ses4_mmpc,sub22_ses4_mmps,sub22_ses5_mmpc,sub22_ses5_mmps),each=2)
sub24_pp<-rep(c(sub24_ses1_mmpc,sub24_ses1_mmps,sub24_ses2_mmpc,sub24_ses2_mmps,sub24_ses3_mmpc,sub24_ses3_mmps,sub24_ses4_mmpc,sub24_ses4_mmps,sub24_ses5_mmpc,sub24_ses5_mmps),each=2)
sub26_pp<-rep(c(sub26_ses1_mmpc,sub26_ses1_mmps,sub26_ses2_mmpc,sub26_ses2_mmps,sub26_ses3_mmpc,sub26_ses3_mmps,sub26_ses4_mmpc,sub26_ses4_mmps,sub26_ses5_mmpc,sub26_ses5_mmps),each=2)

sub_pp<-cbind(sub1_pp,sub2_pp,sub3_pp,sub4_pp,sub7_pp,sub8_pp,sub10_pp,sub11_pp,sub12_pp,sub13_pp,sub19_pp,sub21_pp,sub22_pp,sub24_pp,sub26_pp)
sub_df["mupp"]<-c(sub_pp[,1],sub_pp[,2],sub_pp[,3],sub_pp[,4],sub_pp[,5],sub_pp[,6],sub_pp[,7],sub_pp[,8],sub_pp[,9],sub_pp[,10],sub_pp[,11],sub_pp[,12],sub_pp[,13],sub_pp[,14],sub_pp[,15])

min(sub_df$mupp,na.rm=T)+0.1+0.01736108

sub_df['mupp']<-sub_df$mupp+0.1173611

########Hypothesis Testing (Normal model) ############
model1<-lm(scores~log(mupp)+sessions+tasks+scorer+Age+sex,data = sub_df)
summary(model1)
plot(model1)
boxplot(model1$residuals, main="Boxplot for residuals of the model without the random effect",border="blue")
########## Hypothesis Testing (Mixed model) ############
library(lme4)
model2<-lmer(scores~log(mupp)+sessions+tasks+scorer+Age+sex+(1|subjects),data = sub_df)
summary(model2)
AIC(model2)
BIC(model2)

############## Comparison of TAI scores and Performance Scores ##############
TAI_scores<-read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\tai_scores.txt",header=FALSE)


############## To see the dependendency of TLX scores on session and task ##############
df=c()

for(e in c(1,2,3,4,7,8,10,11,12,19,21,22,24)){
  
  for(z in 1:5){
    
    if(e<=9){
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",z,"\\Subject0",e,"_Cutting",z,"_NASA.csv",sep="")
    }else{
      
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",z,"\\Subject",e,"_Cutting",z,"_NASA.csv",sep="")
      
    }
    
    TLX_data<-read.csv(pathb)
    print(TLX_data[1:6,2])
    df<-c(df,TLX_data[1:6,2])
    
    
  }
  
}

finaldataframe <- data.frame(Subject= rep(c("Subject1","Subject2","Subject3","Subject4","Subject7","Subject8","Subject10","Subject11","Subject12","Subject19","Subject21","Subject22","Subject24"),each=30), Session = rep(c("Session1","Session2","Session3","Session4","Session5"),each=6,times=13), 
                  NASA_TLX_Type = rep(c("Mental Demand","Physical Demand","Temporal Demand","Performance","Effort","Frustration"),each=1),TLX_Scores = df)


cut_tlx_men<-sqldf("select * from finaldataframe where NASA_TLX_Type='Mental Demand';" )

X= ggplot(cut_tlx_men, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

cut_tlx_phy<-sqldf("select * from finaldataframe where NASA_TLX_Type='Physical Demand';" )

Y= ggplot(cut_tlx_phy, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

cut_tlx_tem<-sqldf("select * from finaldataframe where NASA_TLX_Type='Temporal Demand';" )

Z=ggplot(cut_tlx_tem, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

cut_tlx_per<-sqldf("select * from finaldataframe where NASA_TLX_Type='Performance';" )

K=ggplot(cut_tlx_per, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

cut_tlx_eff<-sqldf("select * from finaldataframe where NASA_TLX_Type='Effort';" )

L=ggplot(cut_tlx_eff, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

cut_tlx_fr<-sqldf("select * from finaldataframe where NASA_TLX_Type='Frustration';" )

M=ggplot(cut_tlx_fr, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

install.packages("ggpubr",dependencies = TRUE)
library(ggpubr)

#remove.packages("ggpubr")

ggarrange(X,Y,Z,K,L,M,ncol=2,nrow=3)


##SUTURING
df_sut = c()
for(e in c(1,2,3,4,7,8,10,11,12,19,21,22,24)){
  
  for(z in 1:5){
    
    if(e<=9){
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject0",e,"\\subject0",e,"\\session",z,"\\Subject0",e,"_Suturing",z,"_NASA.csv",sep="")
    }else{
      
      pathb<-paste("C:\\Users\\Swetcha\\Desktop\\Stats\\project_new\\Methodist microsurgery with output\\subject",e,"\\subject",e,"\\session",z,"\\Subject",e,"_Suturing",z,"_NASA.csv",sep="")
      
    }
    
    TLX_data_sut<-read.csv(pathb)
    print(TLX_data_sut[1:6,2])
    df_sut<-c(df_sut,TLX_data_sut[1:6,2])
    
    
  }
  
}

finaldataframe_suturing <- data.frame(Subject= rep(c("Subject1","Subject2","Subject3","Subject4","Subject7","Subject8","Subject10","Subject11","Subject12","Subject19","Subject21","Subject22","Subject24"),each=30), Session = rep(c("Session1","Session2","Session3","Session4","Session5"),each=6,times=13), 
                             NASA_TLX_Type = rep(c("Mental Demand","Physical Demand","Temporal Demand","Performance","Effort","Frustration"),each=1),TLX_Scores = df_sut)


sut_tlx_men<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Mental Demand';" )

A= ggplot(sut_tlx_men, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot(fill='#A4A4A4', color="darkred")

sut_tlx_phy<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Physical Demand';" )

B= ggplot(sut_tlx_phy, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

sut_tlx_tem<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Temporal Demand';" )

C=ggplot(sut_tlx_tem, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

sut_tlx_per<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Performance';" )

D=ggplot(sut_tlx_per, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

sut_tlx_eff<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Effort';" )

E=ggplot(sut_tlx_eff, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

sut_tlx_fr<-sqldf("select * from finaldataframe_suturing where NASA_TLX_Type='Frustration';" )

G=ggplot(sut_tlx_fr, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot()

#install.packages("ggpubr",dependencies = TRUE)
library(ggpubr)

ggarrange(A,B,C,D,E,G,ncol=2,nrow=3)

############# Comparison between the TLX scores over different sessions for Suturing ##############


ggplot(finaldataframe_suturing, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot(fill='seashell')+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Sessions")+
  ylab("TLX Score")+
  ggtitle("TLX score of Suturing task for 5 sessions")+
  
  
  theme(axis.text=element_text(size=10),
        axis.title=element_text(size=16),plot.title = element_text(size = 16, face = "bold"))


############# Comparison between the TLX scores over different sessions for Cutting ##############


ggplot(finaldataframe, aes(x=Session, y=TLX_Scores)) + 
  geom_boxplot(fill='seashell')+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Sessions")+
  ylab("TLX Score")+
  ggtitle("TLX score of Cutting task for 5 sessions")+
  
  
  theme(axis.text=element_text(size=10),
        axis.title=element_text(size=16),plot.title = element_text(size = 16, face = "bold"))

############# Comparison between the TLX scores for the two tasks##############

score_cut_sut<-rbind(finaldataframe,finaldataframe_suturing)
score_cut_sut['Task']<-c(rep(c("Cutting","Suturing"),each=390))
  

ggplot(score_cut_sut, aes(x=Task, y=TLX_Scores)) + 
  geom_boxplot(fill="lightcyan")+
  stat_summary(fun.y=mean, colour="red", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Task")+
  ylab("TLX Score")+
  ggtitle("TLX scores comparison of Cutting and Sututing tasks")+
  
  
  theme(axis.text=element_text(size=12),
        axis.title=element_text(size=14))




########## Comparison of Performance scores for the cutting and suturing tasks ###############
ggplot(sub_df, aes(x=tasks, y=scores)) + 
  geom_boxplot(fill="lavenderblush")+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Task")+
  ylab("Score")+
  ggtitle("Performance scores of Cutting and Sututing tasks")+
  
  
  theme(axis.text=element_text(size=12),
        axis.title=element_text(size=14))

########################## Comparison of Performance scores for the Cutting and suturing task over 5 sessions ###############
library("sqldf")

help("ggarrange")

sub_df_cut<-sqldf("select * from sub_df where tasks='Cutting';")
mean(sub_df_sut$scores)
A<-ggplot(sub_df_cut, aes(x=sessions, y=scores)) + 
  geom_boxplot()+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  ylab("Score")+
  ggtitle("Performance scores of cutting")+
  theme(axis.title.x=element_blank(),
        axis.title.y =element_text(size=14))


sub_df_sut<-sqldf("select * from sub_df where tasks='Suturing';")
B<-ggplot(sub_df_sut, aes(x=sessions, y=scores)) + 
  geom_boxplot()+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Sessions")+
  ylab("Score")+
  ggtitle("Performance scores of Suturing")+
  
  
  theme(axis.text=element_text(size=12),
        axis.title=element_text(size=14))

ggarrange(A,B,ncol=1,nrow=2)
################# Model to compare the relation between TLX scores and session and task #############
mod_tlx<-lm(TLX_Scores~Session+Task+NASA_TLX_Type,data = score_cut_sut)
summary(mod_tlx)

################### Model to compare the relation between performance scores of male and female ###########

model1<-lm(scores~log(mupp)+sessions+tasks+scorer+Age+sex+tasks*sessions,data = sub_df)
model1<-lm(scores~sessions*tasks,data = sub_df)

summary(model1)

############### Model to compare the relation between perinasal perspiration and sessions and tasks #####################

model1<-lm(mupp~tasks+sessions,data = sub_df)








