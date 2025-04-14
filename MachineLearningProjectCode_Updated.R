
library(ggplot2)

student <- (MachineLearningProjectDataSet)
student

summary(student)

#Data Exploration 

#Scatter Plot
plot(student$GRE.Score, student$Chance.of.Admit)
cor(student$GRE.Score, student$Chance.of.Admit)


#Box Plot
fivenum(student$GRE.Score)

fivenum(student$Chance.of.Admit)

boxplot(student$GRE.Score, horizontal = TRUE)

boxplot(student$Chance.of.Admit, horizontal = TRUE)


#F-Test Method
xbar <- mean(student$GRE.Score)
xbar
sx <- sd(student$GRE.Score)
sx

ybar <- mean(student$Chance.of.Admit)
ybar
sy <- sd(student$Chance.of.Admit)
sy

r <- cor(student$GRE.Score, student$Chance.of.Admit)
r

beta1 <- r*sy/sx
beta1

beta0 <- ybar - beta1*xbar
beta0

m <- lm(student$Chance.of.Admit~student$GRE.Score)

# ggplot2
ggplot(student, aes(GRE.Score, Chance.of.Admit)) + 
  geom_point(color="red") +
  geom_smooth(method=lm, #Add linear regression line
              se=F,      #don't add shaded confidence region 
              fullrange=T) +  #Extend regression lines
  ggtitle("Scatterplot of GRE.Score vs. Chance.of.Admit") +
  xlab("GRE.Score")

# Get important summary information on the model
anova(m)

qf(.95,df1=1,df2=398)
summary(m)
confint(m, level=0.95)

hist(resid(m))

################################################################################
#Residual Plot
lm(m)
model <- lm(m)
# get list of residuals 
res <- resid(model)
res

# produce residual vs. fitted plot
plot(fitted(model), res)
# add a horizontal line at 0 
abline(0,0)

# create Q-Q plot for residuals
qqnorm(res)

# add a straight diagonal line 
# to the plot
qqline(res)

#Produce a density plot
plot(density(res))



