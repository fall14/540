NATimePoints <- is.na( cases )
goodTimePoints <- ! NATimePoints

days  <- days[goodTimePoints]
cases <- cases[goodTimePoints]

print( days )
print( cases )