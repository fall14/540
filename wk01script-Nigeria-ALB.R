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
#ebolaFileName = "country_timeseries.csv" 

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

## [1] "Date"               "Day"                "Cases_Guinea"       "Cases_Liberia"  
## [5] "Cases_SierraLeone"  "Cases_Nigeria"      "Case_Senegal"       "Deaths_Guinea" 
## [9] "Deaths_Liberia"     "Deaths_SierraLeone" "Deaths_Nigeria"     "Deaths_Senegal"    

# print( head(ebola[6]) )
# print( head(ebola[2]) )

# print( head(ebola$Date) )
# print( head(ebola$Day_Liberia) )

# print( tail(ebola$Date) )
# print( tail(ebola$Day_Liberia) )

#dayCountry <- "Nigeria"
#casesCountry <- "Nigeria"
#peopleCountry <- "Nigerians"

#days  <- eval(parse(text=paste("ebola$Day")))
#cases <- eval(parse(text=paste("ebola$Cases", casesCountry, sep="_")))

#NATimePoints <- is.na( cases )
#goodTimePoints <- ! NATimePoints

#days  <- days[goodTimePoints]  
#days2 = as.integer(factor(days))
#cases <- cases[goodTimePoints]

#print( days )
#print( days2 )
#print( cases )

#numDays <- length(days)

#mostRecentDate <- ebola$Date[1]
#oldestDate <- ebola$Date[numDays]

#print( numDays )
#print( mostRecentDate )
#print( oldestDate )


#xlabel <- paste("\n","number of days from",oldestDate,"to",mostRecentDate)
#ylabel <- "number of cases"

#xmax <- days[1]-days[numDays]
#ymax <- cases[1]

#title <- paste("Spread of ebola virus in",dayCountry)
#subtitle <- paste(ymax,peopleCountry,"were contaminated in",xmax,"days")

#plot(days2, cases, col="red", main=title, sub=subtitle, xlab=xlabel, ylab=ylabel)
