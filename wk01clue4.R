xlabel <- paste("number of days from",oldestDate,"to",mostRecentDate,"\n")
ylabel <- "number of cases"

xmax <- days[1]
ymax <- cases[1]

title <- paste("Spread of ebola virus in",country)
subtitle <- paste(ymax,"persons were contaminated in",xmax,"days")

plot(days, cases, main=title, sub=subtitle, xlab=xlabel, ylab=ylabel)