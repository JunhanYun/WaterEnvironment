# Desciptive statistics using R

dat <- iris
head(dat)
str(dat)

min(dat$Sepal.Length)
max(dat$Sepal.Length)
range(dat$Sepal.Length)

range2 <- function(x) {
  range <- max(x) - min(x)
  return(range)
}
range2(dat$Sepal.Length)

mean(dat$Sepal.Length, na.rm= TRUE)
median(dat$Sepal.Length)     


sapply(dat[, 1:4], sd)

install.packages("pastecs")
library(pastecs)
stat.desc(dat, norm = TRUE)


hist(dat$Sepal.Length)
boxplot(dat$Sepal.Length)
boxplot(dat$Sepal.Length ~ dat$Species)
plot(dat$Sepal.Length, type = "l")
plot(density(dat$Sepal.Length))

qqnorm(dat$Sepal.Length)     
qqline(dat$Sepal.Length)     

install.packages("car")
library(car)
qqplot(dat$Sepal.Length)

install.packages("ggpubr")
library(ggpubr)

install.packages("ggplot2")
library(ggplot2)

ggplot(dat) +
  aes(x = Sepal.Length) +
  geom_histogram(bins = 20)

ggplot(dat) +
  aes(x = Species, y =Sepal.Length) +
  geom_boxplot()
