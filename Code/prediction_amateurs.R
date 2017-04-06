library(caret)
library(randomForest)
#Set the current Working Directory
setwd("C:/Users/Guru Pradeep/Desktop/Machine-Learning");
#Load the training data
train<-read.csv("training.csv");
test<-read.csv("test.csv");
train2 = read.csv("train.csv");
train2$milk
train
library(rpart)
train$age[train$age=='?']=mean(train$age,na.rm=TRUE)
test$age[test$age=='?']=mean(test$age,na.rm=TRUE)
#table(is.na(train$age))
nrow(train)
mean(train$age,na.rm=TRUE)
levels(train$workclass)
train$workclass[train$workclass=='?']<-' Private'
test$workclass[test$workclass=='?']<-' Private'
table(test$native.country)
train$occupation[train$occupation=='?']<-' Prof-specialty'
test$occupation[test$occupation=='?']<-' Prof-specialty'
train$native.country[train$native.country=='?']<-' United-States'
test$native.country[test$native.country=='?']<-' United-States'
train$profit<-NA
test$profit<-NA
train$profit=train$capital.gain-train$capital.loss
test$profit=test$capital.gain-test$capital.loss
train$capital.gain=NULL
train$capital.loss=NULL
test$capital.gain=NULL
test$capital.loss=NULL

'?' %in% train$education.num
'?' %in% test$final.weight
train$married <- as.integer(train$relationship%in%c(" Husband"," Wife"))
test$married <- as.integer(test$relationship%in%c(" Husband"," Wife"))
for (i in 1:15) {
  if(class(train[,i])=="factor") train[,i] <- as.numeric(train[,i])
  
}
table(train$workclass)
mytable = table(train$workclass)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Work Class Distribution",col = rainbow(length(mytable)))
for (i in 1:14) {
  if(class(test[,i])=="factor") test[,i] <- as.numeric(test[,i])
  
}
mytable
mytable = table(train$education)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Education distribution",col = rainbow(length(mytable)))
for (i in 1:14) {
  if(class(test[,i])=="factor") test[,i] <- as.numeric(test[,i])
  
}

table(train$workclass)
dmy=dummyVars("~.",data=train)
train.new=data.frame(predict(dmy,newdata=train))
train.new$final.weight = NULL
train.new$native.country = NULL
train.new$greater = NULL
train.new$milk = train2$milk
train.new$bread = train2$Bread
train.new$butter = train2$Butter
train.new$honey = train2$Honey
train.new$jam = train2$Jam
train.new$peanut = train2$peanut
train.new$Badam = train2$Badam
train.new$Cashew = train2$Cashew
train.new$pista = train2$pista
max(train.new$age)
min(train.new$age)
train.new$age[train.new$age > 15 && train.new$age < 26] = 1
train.new$age[train.new$age > 25 && train.new$age < 36] = 2
train.new$age[train.new$age > 35 && train.new$age < 46] = 3
train.new$age[train.new$age > 45 && train.new$age < 56] = 4
train.new$age[train.new$age > 55 && train.new$age < 66] = 5
train.new$age[train.new$age > 65 && train.new$age < 76] = 6
train.new$age[train.new$age > 75 && train.new$age < 91] = 7
count(train.new$sex[train.new$sex == 1])
summary(train.new$age)
table(train$marital.status)
table(train.new$sex)
slices = c(66.9,32.1)
lbls = c("Male","Female")
pie(slices, labels = lbls, main="Gender Distribution",col = rainbow(length(slices)))
slices = c(72.4,27.6)
lbls = c("Married","Single")
pie(slices, labels = lbls, main="Marital Status Distribution",col = rainbow(length(slices)))
table(train.new$education)
table(train.new$workclass)
train.new$Tea = train2$Tea
train.new$Coffee = train2$Coffee
train.new$Biscuits = train2$Biscuits
train.new$Nuts = train2$Nuts
write.csv(train.new,file="modified_train2",row.names=FALSE)
head(train.new,1)
dmy2=dummyVars("~.",data=test)
test.new=data.frame(predict(dmy2,newdata=test))
