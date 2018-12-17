
data_hist<-read.csv("C:\\Users\\Swetcha\\Desktop\\Stats\\Project\\Methodist microsurgery study\\MicrosurgeryPerformance1.csv",header = TRUE,sep=",")
data_hist1<-data_hist[1:15, ]
barplot(table(factor(data_hist1$Age)),xlab="Age in years",ylab="Frequency",col="cadetblue",main="Histogram for Age Distribution",font=2,family='sans',cex.main=1.8,cex.lab = 1.3)
mean(data_hist$Age[1:15])

