# 1. PIE CHARTS

# Create data for the graph.
# Les transferts les plus chers de l'histoire en Ligue 1

x <- c(222, 64, 63, 49.5,45,43,43,42,42,36)
labels <- c("Neymar(222)", "Cavani(64)", "Di Maria(63)", "David Luiz(49.5)","James Rodriguez(45)","Lucas Moura(43)","Falcao(43)","Pastore(42)","T.Silva(42)","Draxler(36)")

# Give the chart file a name.
png(file = "transfertsL1.jpg")

# Plot the chart.
pie(x,labels,main = "Transferts les plus chers de l'histoire en ligue 1",col = rainbow(length(x)),clockwise=TRUE)

# Save the file.
dev.off()

# Create data for the graph.
x <- c(222, 64, 63, 49.5,43,42,42,36)
labels <- c("Neymar(222)", "Cavani(64)", "Di Maria(63)", "David Luiz(49.5)","Lucas Moura(43)","Pastore(42)","T.Silva(42)","Draxler(36)")

piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "depensesrelativesPSG.jpg")

# Plot the chart.
pie(x, labels = piepercent, main = "Depenses relatives des plus gros transferts de l'histoire du PSG",col = rainbow(length(x)))
legend("topright",c("Neymar(222)", "Cavani(64)", "Di Maria(63)", "David Luiz(49.5)","Lucas Moura(43)","Pastore(42)","T.Silva(42)","Draxler(36)") , cex = 0.8,
   fill = rainbow(length(x)))

# Save the file.
dev.off()


# Get the library.
library(plotrix)

# Create data for the graph.
x <-  x <- c(222, 64, 63, 49.5,43,42,42,36)
lbl <- c("Neymar(222)", "Cavani(64)", "Di Maria(63)", "David Luiz(49.5)","Lucas Moura(43)","Pastore(42)","T.Silva(42)","Draxler(36)")

# Give the chart file a name.
png(file = "3d_PSG.jpg")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Depenses relatives des plus gros transferts de l'histoire du PSG ")

# Save the file.
dev.off()

# 2. BAR CHARTS

# Create the data for the chart.
valeurs <- c(222, 64, 63, 49.5,43,42,42,36)
joueurs <- c("Neymar", "Cavani", "Di Maria", "David Luiz","Lucas Moura","Pastore","T.Silva","Draxler")

# Give the chart file a name.
png(file = "plusgrostransfertPSG.jpg")

# Plot the bar chart.
barplot(valeurs,names.arg = joueurs,xlab = "Joueurs",ylab = "Transfert en millions d'euros",col = "blue",
main = "Plus gros transfert de l'histoire du PSG",border = "yellow")

# Save the file.
dev.off()

# Create the input vectors.
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)

# Give the chart file a name.
png(file = "barchart_stacked.jpg")

# Create the bar chart.
barplot(Values,main = "total revenue",names.arg = months,xlab = "month",ylab = "revenue",
   col = colors)

# Add the legend to the chart.
legend("topleft", regions, cex = 1.3, fill = colors)

# Save the file.
dev.off()

# 3. HISTOGRAMS
# Create data for the graph.
v <-  c(22, 6.4, 6.3, 4.95,4.3,4.2,4.2,3.6)
# Give the chart file a name.
png(file = "histogramPSG.jpg")

# Create the histogram.
hist(v, breaks = seq(3,23,by = 1),xlab = "Prix du transfert en dizaine de millions d'euros",ylab = "nombre de transferts dans l'intervalle", main = "Repartition des plus gros transferts du PSG",col = "yellow",border = "blue",xlim = c(3,23), ylim = c(0,4))
axis(side=1, at=seq(3,23,1))

# Save the file.


dev.off()

# 4. LINE GRAPHS

# Create the data for the chart.
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

# Give the chart file a name.
png(file = "line_chart.jpg")

# Plot the bar chart. 
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", main = "Rain fall chart")
   lines(t, type = "o", col = "blue")

# Save the file.
dev.off()

# 5. SCATTER PLOTS

input <- mtcars[,c('wt','mpg')]

# Give the chart file a name.
png(file = "scatterplot.jpg")

# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
   xlab = "Weight",
   ylab = "Milage",
   xlim = c(2.5,5),
   ylim = c(15,30),		 
   main = "Weight vs Milage"
)
	 
# Save the file.
dev.off()


