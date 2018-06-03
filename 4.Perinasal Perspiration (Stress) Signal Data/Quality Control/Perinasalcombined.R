library("png") # for reading in PNGs
# example image
img1<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject1.png",native=FALSE)
img2<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject2.png",native=FALSE)
img3<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject3.png",native=FALSE)
img4<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject4.png",native=FALSE)
img5<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject7.png",native=FALSE)
img6<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject8.png",native=FALSE)
img7<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject10.png",native=FALSE)
img8<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject11.png",native=FALSE)
img9<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject12.png",native=FALSE)
img10<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject13.png",native=FALSE)
img11<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject19.png",native=FALSE)
img12<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject21.png",native=FALSE)
img13<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject22.png",native=FALSE)
img14<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject24.png",native=FALSE)
img15<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\subject26.png",native=FALSE)
img16<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\title.png",native=FALSE)


par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

par(mfrow=c(2,2))


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
  rasterImage(img16,0,0,1,1)
  
}

title(expression(' Perinasal Perspiration(Stress)'),line = -1, outer = TRUE,font=3,cex=3)


par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

par(mfrow=c(2,2))


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
  rasterImage(img6,0,0,1,1)
  
}


for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img16,0,0,1,1)
  
}

title(expression('Perinasal Perspiration(Stress) ['~PP~degree~C^2~']'),line = -1, outer = TRUE,font=3,cex=3)



par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

par(mfrow=c(2,2))


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
  rasterImage(img16,0,0,1,1)
  
}

title(expression('Perinasal Perspiration(Stress) ['~PP~degree~C^2~']'),line = -1, outer = TRUE,font=3,cex=3)

par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

par(mfrow=c(2,2))


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

title(expression('Perinasal Perspiration(Stress) ['~PP~degree~C^2~']'),line = -1, outer = TRUE,font=3,cex=3)

par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

par(mfrow=c(2,2))


for(i in 1:1) {
  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
  rasterImage(img10,0,0,1,1)
  
}
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
  rasterImage(img16,0,0,1,1)
  
}

title(expression('Perinasal Perspiration(Stress) ['~PP~degree~C^2~']'),line = -1, outer = TRUE,font=3,cex=3)

#install.packages("jpeg")
#library(jpeg)
