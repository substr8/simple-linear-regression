options(scipen=999,digits=2)

#get the data from the file
servicecalldata = read.csv("servicecalldata.csv")

#plot the data points
plot(servicecalldata$units,servicecalldata$minutes)

#generate the regression equation using linear model
simplelrfit = lm(minutes~units, data=servicecalldata)

#display the summary of the linear model
summary(simplelrfit)


deliverytime =  read.csv("deliverytimedata.csv")
LRFit=lm(deltime ~ ncases + distance,  data=	deliverytime)
summary(LRFit)

LRFit=lm(distance ~ ncases + deltime,  data=	deliverytime)
summary(LRFit)
