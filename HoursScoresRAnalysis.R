#Regression
setwd("C:/Users/janhv/OneDrive/Desktop")
library("readxl")
mydata <- read_excel("HoursTestScores.xlsx")
testdata <-read_excel("HoursScoresTestData.xlsx")
lm_model<- lm(Scores~Hours,data = mydata)
mydata$predict <- predict(lm_model, mydata)
summary(mydata$predict)
summary(lm_model)

scorePredict <-predict(lm_model,testdata)
scorePredict

#when hours are 9.25 the score is 92.90985
