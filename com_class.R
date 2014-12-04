###### Random Forest as Classifier#####
library(randomForest)
rf_class_trg =randomForest(MLS???.,data=dtest,
                         mtry=6, ntree=500,importance =TRUE)
pred <- predict(rf_class_trg,dtest)$class
table(ytest, pred)

acc = sum(pred==ytest)/length(ytest)
acc
######Gradient Boosting######
#library(rpart)
library(adabag)
adaboost <- boosting(MLS~., data=dtrain, boos=TRUE, 
                             mfinal=10)
pred <- predict(adaboost,dtest)$class
table(ytest, pred)

acc = sum(pred==ytest)/length(ytest)
acc

BC.adaboost.pred$confusion

#####LDA Classifier######
library(MASS)
######Boruta Variables####
lda.fit<-lda(MLS~.,data=dtrain)

lda.pred<-predict(lda.fit, dtest)
ypred=lda.pred$class

table(ytest, ypred)

acc = sum(ypred==ytest)/length(ytest)
acc
#######Backward Elimination variables####
lda.fit_back<-lda(MLS~.,data=)
lda.class2=lda.pred$class

######QDA Classifier####
library(MASS)
qda.fit=qda(MLS???., data=dtrain)
qda.fit
qda.pred =predict(qda.fit,dtest)
ypred=qda.pred$class
table(ytest, ypred)
acc = sum(ypred==ytest)/length(ytest)
acc

#####KNN Classifier#####
library (class)
set.seed(1234)
knn.pred=knn (dtrain,dtest,cl=dtrain$MLS,k=5)
table(ytest,knn.pred)
acc = sum(knn.pred==ytest)/length(ytest)
acc

######NaiveBayes########
library(e1071)
m <- naiveBayes(MLS ~ ., data = dtrain)
pred<-predict(m,dtest)
table(pred,ytest)
acc = sum(pred==ytest)/length(ytest)
acc

