

# Data
library(datasets)
data(mtcars)
mtcars$cyl<-as.factor(mtcars$cyl)
mtcars$am<-as.factor(mtcars$am)

# Model
model<-lm(mpg~.,data=mtcars)

# Informarion Criterion
AIC(model)

#These two are identical
n<-nrow(mtcars)
AIC(model,k=log(n))
BIC(model)

#Model selection with AIC
library(MASS)
model_AIC<- stepAIC(model, direction="both")
model_AIC$anova # display results 

#Model selection with BIC
model_BIC<-stepAIC(model,direction="both",k=log(n))
model_BIC$anova
AIC(model_BIC,k=log(n))
BIC(model_BIC)
