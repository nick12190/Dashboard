#top_cited_data_for_UK

uk_2011 <- dbGetQuery(myconn, "select * from top_cited_publications_2011_uk ")
uk_2011

uk_2012 <- dbGetQuery(myconn, "select * from top_cited_publications_2012_uk ") 
uk_2012

uk_2013 <- dbGetQuery(myconn, "select * from top_cited_publications_2013_uk ") 
uk_2013

uk_2014 <- dbGetQuery(myconn, "select * from top_cited_publications_2014_uk ") 
uk_2014

uk_2015 <- dbGetQuery(myconn, "select * from top_cited_publications_2015_uk ") 
uk_2015

uk_2017 <- dbGetQuery(myconn, "select * from top_cited_publications_2017_uk ") 
uk_2017

uk_2016 <- dbGetQuery(myconn,"select * from top_cited_publications_2016_uk " )
uk_2016

#top_cited_data_for_Germany

ger_2011 <- dbGetQuery(myconn, "select * from top_cited_publications_2011_ger ")
ger_2011

ger_2012 <- dbGetQuery(myconn, "select * from top_cited_publications_2012_ger ")
ger_2012

ger_2013 <- dbGetQuery(myconn, "select * from top_cited_publications_2013_ger ")
ger_2013

ger_2014 <- dbGetQuery(myconn, "select * from top_cited_publications_2014_ger ")
ger_2014

ger_2015 <- dbGetQuery(myconn, "select * from top_cited_publications_2015_ger ")
ger_2015

ger_2016 <- dbGetQuery(myconn, "select * from top_cited_publications_2016_ger ")
ger_2016

ger_2017 <- dbGetQuery(myconn, "select * from top_cited_publications_2017_ger ")
ger_2017

#GERD 

GERD_performed_by_higher_education <- dbGetQuery(myconn, "select * from gerd_he WHERE indicator ='EXPPPP_CUR_SP_HIEDUSP'")
GERD_performed_by_higher_education

GERD_performed_by_higher_education_percen <- dbGetQuery(myconn, "select * from gerd_he WHERE indicator ='EXPP_SP_HIEDUSP'")
GERD_performed_by_higher_education_percen


GERD_performed_by_higher_education_percen_GDP <- dbGetQuery(myconn, "select * from gerd_he WHERE indicator = 'EXPGDP_SP_HIEDUSP'")
GERD_performed_by_higher_education_percen_GDP
