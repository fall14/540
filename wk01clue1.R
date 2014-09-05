dayCountry <- "Liberia"
casesCountry <- "Nigeria"

days  <- eval(parse(text=paste("ebola$Day", dayCountry, sep="_")))
cases <- eval(parse(text=paste("ebola$Cases", casesCountry, sep="_")))

print( days )
print( cases )