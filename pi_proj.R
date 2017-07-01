##Load Packages
library(ggplot2)

#Reading the file, highly unorganized data
dig <- readLines("1,000,000_digits_of_pi.txt")
class(dig)
#>"character"
#So now converting our character data into a factorised data.frame of 1 column

#Adding spaces to the string
dig <- trimws(gsub(""," ",dig))
#Split by space
data <- unlist(strsplit(dig,split = " ",fixed = TRUE))
#Convert to data frame with the numbers as factors
dataFrame <- data.frame(num = as.factor(data))


#Making Graph of plotting counts of the digits 
##Opening connections to the png
png(file = "FreqPlotPi.png",width = 480, height = 480)

#Begin Plotting !
plot <- ggplot(dataFrame,aes(num,group = 1)) 
base <- plot+geom_freqpoly(stat = "count",color = "violet", size = 1.25) + coord_cartesian(ylim = c(99500,100500)) 
aesPlot <- base+ theme_bw(base_family = "serif",base_size = 13.5) + ggtitle( "Frequency polygon of digits in pi ")+labs(x = "Digits",y = "Count") 
details <- aesPlot + geom_hline(yintercept = 99548, lty = 3, col = "red") + geom_hline(yintercept = 100359, lty = 3, col = "red")
details
dev.off()