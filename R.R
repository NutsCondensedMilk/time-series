library("lubridate") # работа с датами
library("zoo") # временные ряды
library("dplyr") # манипуляция с данными
library("ggplot2") # графики
library("forecast") # прогноз
library("xts") # расширение для zoo
y <- AirPassengers
plot(y)
acf(y)
pacf(y)
tsdisplay(y)
mod_1 <- Arima(y, order=c(2,0,0))
mod_2 <- Arima(y, order=c(1,0,1))
summary(mod_1)
summary(mod_2)

AIC(mod_1)
AIC(mod_2)

mod_3 <- Arima(y, order=c(2,0,1))
AIC(mod_3)

prognoz <- forecast(mod_2, h=5)
prognoz

plot(prognoz)

mod_4 <- Arima(y, order=c(1,1,0))
AIC(mod_4)

prognoz_4 <- forecast(mod_4, h=5)
plot(prognoz_4)

mod_a <- auto.arima(y)
summary(mod_a)

prognoz_a <- forecast(mod_a, h=5)
plot(prognoz_a)
