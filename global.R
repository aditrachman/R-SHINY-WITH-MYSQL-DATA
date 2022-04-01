library(shiny)
library(shinydashboard)
library(tidyverse)
library(plotly)
library(glue)
library(readxl)
library(lubridate)
library(ggthemes)
library(RMariaDB)

localuserpassword <- ""

storiesDb <- dbConnect(RMariaDB::MariaDB(), user='root', password=localuserpassword, dbname='teknomedika', host='localhost')
dbListTables(storiesDb)

query <- paste("SELECT * FROM mesin5_a")
rs <- dbSendQuery(storiesDb,query)
kie <- dbFetch(rs)
