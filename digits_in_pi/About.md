# About this folder

## Contents

##### "1,000,000_digits_of_pi.txt" 
  - This is the data used
##### "FreqPlotPi.png" 
  - The frequency polygon of the the digits in  pi
##### "pi_proj.R" 
  - R code file containing the code to cleaning the data and making the desired plot
  
## Description
  
 ### The Data 
The 1 million digits of pi were found at www.datazar.com
The file was obtained in a .txt file and read as a single large character.
By using the gsub() function, spaces were created between the digits in the large character.
The large character was split using the space and a data frame was created using the same.
The data frame contained only one variable and the numbers are stored as factors.

### The Plot
Since, the factors are non-continuous in nature to know the exact count of the digits a frequency polygon was needed.
This frequency polygon was created using functions in the ggplot2 package.
The y co-ordinate was limited between 99500 and 100500 to ensure better visibility.
The x co-ordinate was from 0 to 9 and also the decimal point - "." [Since there is only one decimal point it was an outlier 
and hence it's frequency is not visible in the frequency polygon].
Appropriate care has been taken to label the x-axis,y-axis and the plot.

