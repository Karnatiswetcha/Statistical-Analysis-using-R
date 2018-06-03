
# example image
img1<-readPNG("C:\\Users\\Swetcha\\Documents\\1 time.png",native=FALSE)
img2<-readPNG("C:\\Users\\Swetcha\\Documents\\2 time.png",native=FALSE)
img3<-readPNG("C:\\Users\\Swetcha\\Documents\\3 time.png",native=FALSE)
img4<-readPNG("C:\\Users\\Swetcha\\Documents\\4 time.png",native=FALSE)
img5<-readPNG("C:\\Users\\Swetcha\\Documents\\5 time.png",native=FALSE)
img6<-readPNG("C:\\Users\\Swetcha\\Documents\\6 time.png",native=FALSE)
img7<-readPNG("C:\\Users\\Swetcha\\Documents\\7 time.png",native=FALSE)
img8<-readPNG("C:\\Users\\Swetcha\\Documents\\8 time.png",native=FALSE)
img9<-readPNG("C:\\Users\\Swetcha\\Documents\\9 time.png",native=FALSE)
img10<-readPNG("C:\\Users\\Swetcha\\Documents\\10 time.png",native=FALSE)
img11<-readPNG("C:\\Users\\Swetcha\\Documents\\11 time.png",native=FALSE)
img12<-readPNG("C:\\Users\\Swetcha\\Documents\\12 time.png",native=FALSE)
img13<-readPNG("C:\\Users\\Swetcha\\Documents\\13 time.png",native=FALSE)
img14<-readPNG("C:\\Users\\Swetcha\\Documents\\14 time.png",native=FALSE)
img15<-readPNG("C:\\Users\\Swetcha\\Documents\\15 time.png",native=FALSE)
img16<-readPNG("C:\\Users\\Swetcha\\Desktop\\Stats\\Final perinasal\\type2.png",native=FALSE)


plot(3, type = "n", axes=FALSE, xlab="", ylab="")
plot_colors <- c("indianred1", "turquoise")
legend(x = "top",inset = 0,
       legend = c("Suturing", 
                  "Cutting" 
                  ), 
       col=plot_colors, cex=1.5, pch=15)
mtext(side=3,"Task",padj = -1,font=1,cex=1.5)



dev.off()


par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

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

title(expression('Cutting Vs Suturing Time'),line = -1, outer = TRUE,font=3,cex=3)


par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

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



title(expression('Cutting Vs Suturing Time'),line = -1, outer = TRUE,font=3,cex=3)



par(mar=rep(0,4)) # no margins

# layout the plots into a matrix w/ 12 columns, by row
layout(matrix(1:3, ncol=12, byrow=TRUE))

#title(expression('Perinasal Perspiration '),line = -1, outer = TRUE,font=5,cex=10)



# do the plotting

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

title(expression('Cutting Vs Suturing Time'),line = -1, outer = TRUE,font=3,cex=3)

