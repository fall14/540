## wk01script.R
## input: reads time series for the ebola virus spread in Africa
## output: graph of ebola spread
## TODO: describe other actions

print("Welcome to 540!")

## set your working directory to whatever directory you want
setwd("/Users/valeriiklymchuk/git my/540")

## define the URL where the ebola data are located
#URL <- "https://raw.githubusercontent.com/cmrivers/ebola/master/country_timeseries.csv"

## define the file name on your computer where you will save the
## remote ebola data
ebolaFileName = "140904.ebolaTimeSeries.csv" 

## copy the remote ebola data to your local computer
#download.file(URL, destfile = ebolaFileName, method="curl")

## read the ebola data and load it into a variable called 'ebola'
ebola <- read.csv( ebolaFileName )

## show the ebola data frame in the R console
print( ebola )

#print( class(ebola) )

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

country <- "Nigeria" ##Guinea, Liberia, SierraLeone, Nigeria, Senegal
Key <- "Deaths" ## "Cases", "Case" - for Senegal, or "Deaths"

dayCountry <- country ##"Liberia"
casesCountry <- country

##days  <- eval(parse(text=paste("ebola$Day", dayCountry, sep="_")))
days <- ebola$Day
cases <- eval(parse(text=paste(paste("ebola$", Key), casesCountry, sep="_")))
dates <- ebola$Date

print( days )
print( cases )

NATimePoints <- is.na( cases )

goodTimePoints <- ! NATimePoints
print(goodTimePoints)

days  <- days[goodTimePoints]
days  <- days - tail(days,1) # if graph starts from day # 0
cases <- cases[goodTimePoints]
dates <- dates[goodTimePoints]

print( days )
print( cases )
print( dates )

mostRecentDate <- head(dates,1)
oldestDate <- tail(dates,1)

print( mostRecentDate )
print( oldestDate )

xlabel <- paste("number of days from",oldestDate,"to",mostRecentDate,"\n")
ylabel <- "number of cases"

xmax <- days[1] # days already starts from 0 going up to max # of days
ymax <- pmax(cases)[1] ## if # of cases is not in decreasing order


title <- paste("Spread of ebola virus in",country)
subtitle <- paste(ymax,"persons were", ifelse(Key=="Deaths", "dead in", "contaminated in"), xmax,"days")

plot(days, cases, main=title, sub=subtitle, xlab=xlabel, ylab=ylabel)
