library("lubridate") # работа с датами
library("zoo") # временные ряды
library("dplyr") # манипуляция с данными
library("ggplot2") # графики
library("forecast") # прогноз
library("xts") # расширение для zoo
y <- AirPassengers
mod_a <- auto.arima(y)
prognoz_a <- forecast(mod_a, h=25)
plot(prognoz_a)
