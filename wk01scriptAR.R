# wk01script.R
## input: reads time series for the ebola virus spread in Africa
## output: graph of ebola spread
## TODO: describe other actions

print("Welcome to 540!")

## set your working directory to whatever directory you want
# setwd("/Users/wk/Documents/RworkingDirectory")

## define the URL where the ebola data are located
#URL <- "https://raw.githubusercontent.com/cmrivers/ebola/master/country_timeseries.csv"

## define the file name on your computer where you will save the
## remote ebola data
ebolaFileName = "country_timeseries.csv"

## copy the remote ebola data to your local computer
#download.file(URL, destfile = ebolaFileName, method="curl")

## read the ebola data and load it into a variable called 'ebola'
ebola <- read.csv( ebolaFileName )

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

dayCountry <- "Liberia"
casesCountry <- "Nigeria"

columnName <- paste("ebola$Day")
print(columnName)

days  <- eval(parse(text=columnName))
cases <- eval(parse(text=paste("ebola$Cases", casesCountry, sep="_")))

NATimePoints <- is.na( cases )
goodTimePoints <- ! NATimePoints

days  <- days[goodTimePoints]
cases <- cases[goodTimePoints]

print( days )
print( cases )

mostRecentDate <- head(ebola$Date,1)
oldestDate <- tail(ebola$Date,1)

numDays <- length(days)

mostRecentDate <- ebola$Date[1]
oldestDate <- ebola$Date[numDays]

print( mostRecentDate )
print( oldestDate )

xlabel <- paste("number of days from",oldestDate,"to",mostRecentDate,"\n")
ylabel <- "number of case"

xmax <- days[1]
ymax <- cases[1]

title <- paste("Spread of ebola virus in", casesCountry)
subtitle <- paste(ymax,"persons were contaminated in",xmax,"days")

plot(days, cases, main=title, sub=subtitle, xlab=xlabel, ylab=ylabel)