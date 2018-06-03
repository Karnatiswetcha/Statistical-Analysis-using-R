
library("sqldf")
score_gender<-sqldf("select subjects,sessions,scorer,tasks,sex,sum(scores) as score from sub_df group by subjects,sessions,tasks order by subjects,sessions,tasks;")

ses1_male_cut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session1' and tasks='Cutting'; ")
ses1_female_cut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session1' and tasks='Cutting'; ")
ses2_male_cut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session2' and tasks='Cutting'; ")
ses2_female_cut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session2' and tasks='Cutting'; ")
ses3_male_cut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session3' and tasks='Cutting'; ")
ses3_female_cut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session3' and tasks='Cutting'; ")
ses4_male_cut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session4' and tasks='Cutting'; ")
ses4_female_cut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session4' and tasks='Cutting'; ")
ses5_male_cut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session5' and tasks='Cutting'; ")
ses5_female_cut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session5' and tasks='Cutting'; ")


ses1_male_sut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session1' and tasks='Suturing'; ")
ses1_female_sut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session1' and tasks='Suturing'; ")
ses2_male_sut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session2' and tasks='Suturing'; ")
ses2_female_sut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session2' and tasks='Suturing'; ")
ses3_male_sut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session3' and tasks='Suturing'; ")
ses3_female_sut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session3' and tasks='Suturing'; ")
ses4_male_sut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session4' and tasks='Suturing'; ")
ses4_female_sut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session4' and tasks='Suturing'; ")
ses5_male_sut<-sqldf("select score/2 from score_gender where sex='Male'and sessions = 'Session5' and tasks='Suturing'; ")
ses5_female_sut<-sqldf("select score/2 from score_gender where sex='Female'and sessions = 'Session5' and tasks='Suturing'; ")

score_male<-sqldf("select score/2  from score_gender where sex='Male';")
score_female<-sqldf("select score/2  from score_gender where sex='Female';")

score_over['score']<-rbind(score_male,score_female)
score_over['gender']<-factor(rep(c("Male","Female"),times=c(100,50)),levels=c("Male","Female"))

ggplot(score_over, aes(x=gender, y=score)) + 
  geom_boxplot(fill=c("paleturquoise1","rosybrown1"))+
  stat_summary(fun.y=mean, colour="blue", geom="point", 
               shape=18, size=3,show.legend = FALSE)+
  xlab("Gender")+
  ylab("Score")+
  ggtitle("Performance scores for male and female")+
  
  
  theme(axis.text=element_text(size=12),
        axis.title=element_text(size=14),
        title =element_text(size=14, face='bold'))

########### comparison of cutting scores over sessions ############






