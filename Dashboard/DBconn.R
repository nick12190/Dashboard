library(RODBC)
library(DBI)
library(RPostgreSQL)

myconn <- dbConnect(PostgreSQL(),user="postgres", dbname= "postgres", password="1234")

install.packages('rsconnect')

rsconnect::setAccountInfo(name='eu-research-quality',
                          token='93A7D1936EDDC2AAC686123F38F9311F',
                          secret='<SECRET>')


  

