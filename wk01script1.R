## wk01script.R
## input: reads time series for the ebola virus spread in Africa
## output: graph of ebola spread
## TODO: describe other actions

#print("Welcome to 540!")

## set your working directory to whatever directory you want
# setwd("/Users/wk/Documents/RworkingDirectory")

## define the URL where the ebola data are located
#URL <- "https://raw.githubusercontent.com/cmrivers/ebola/master/country_timeseries.csv"

## define the file name on your computer where you will save the
## remote ebola data
#ebolaFileName = "140904.ebolaTimeSeries.csv" 

## copy the remote ebola data to your local computer
#download.file(URL, destfile = ebolaFileName, method="curl")

## read the ebola data and load it into a variable called 'ebola'
#ebola <- read.csv( ebolaFileName )

## show the ebola data frame in the R console
# print( ebola )

# print( class(ebola) )
# print( dim(ebola) )
# print( head(ebola) )
# print( names(ebola) )

## [1] "Date"               "Day_Liberia"        "Day_SierraLeone"   
## [4] "Cases_Guinea"       "Cases_Liberia"      "Cases_SierraLeone" 
## [7] "Cases_Nigeria"      "Deaths_Guinea"      "Deaths_Liberia"    
## [10] "Deaths_SierraLeone" "Deaths_Nigeria" 

# print( head(ebola[1]) )
# print( head(ebola[2]) )

# print( head(ebola$Date) )
# print( head(ebola$Day_Liberia) )

# print( tail(ebola$Date) )
# print( tail(ebola$Day_Liberia) )

# plot( ebola$Day_Liberia, ebola$Cases_Liberia )