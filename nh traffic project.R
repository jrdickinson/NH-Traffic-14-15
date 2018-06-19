library(tidyverse)
library(lubridate)
library(plotly)
getwd()
setwd("C:/Users/jerem.DESKTOP-GGM6Q2I/Documents/UNH Data Analytics/csv excel files")
nh=read.csv("NH_cleaned.csv")
nh$hour<-hour(hm(nh$stop_time)) 
l<-ggplot(nh,aes(x=hour,fill=county_name))+geom_bar()#bar chart
l<-l+ggtitle("Bar Chart of Hours")
l
