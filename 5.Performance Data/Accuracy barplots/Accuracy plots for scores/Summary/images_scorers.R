library("png") # for reading in PNGs
#install.packages("png")


#dev.off()
# example image
img1<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\1 fin.png",native=FALSE)
img2<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\2 fin.png",native=FALSE)
img3<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\3 fin.png",native=FALSE)
img4<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\4 fin.png",native=FALSE)
img5<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\5 fin.png",native=FALSE)
img6<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\6 fin.png",native=FALSE)
img7<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\7 fin.png",native=FALSE)
img8<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\8 fin.png",native=FALSE)
img9<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\9 fin.png",native=FALSE)
img10<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\10 fin.png",native=FALSE)
img11<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\11 fin.png",native=FALSE)
img12<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\12 fin.png",native=FALSE)
img13<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\13 fin.png",native=FALSE)
img14<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\14 fin.png",native=FALSE)
img15<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\15 fin.png",native=FALSE)
img16<-readPNG("C:\\Users\\swetcha\\Desktop\\Final_Project\\FINAL\\Q5\\Accuracy plots for scores\\images\\16.png",native=FALSE)


par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)


dev.off()
## do the plotting
#library(tm)

par(mfrow=c(2,3))


for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img1,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img2,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img3,0,0,1,1)
  
}

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img4,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img5,0,0,1,1)
  
}

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img16,0,0,1,1)
  
}


title(expression('Accuracy Plots for Scores (Cutting vs Suturing) '),line = -1, outer = TRUE,font=3,cex=3)

#########Second set of plots##############
dev.off()
par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

par(mfrow=c(2,3))

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img6,0,0,1,1)
  
}

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img7,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img8,0,0,1,1)

}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img9,0,0,1,1)
  
}

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img10,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img16,0,0,1,1)
  
}


title(expression('Accuracy Plots for Scores (Cutting vs Suturing) '),line = -1, outer = TRUE,font=3,cex=3)


##########Third set of plots##########

dev.off()

par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

par(mfrow=c(2,3))
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img11,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img12,0,0,1,1)
  
}


for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img13,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img14,0,0,1,1)
  
}
for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img15,0,0,1,1)
  
}

for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img16,0,0,1,1)
  
}


title(expression('Accuracy Plots for Scores (Cutting vs Suturing) '),line = -1, outer = TRUE,font=3,cex=3)

#dev.off()
