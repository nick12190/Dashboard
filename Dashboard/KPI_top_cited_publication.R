library(ggplot2)

#calculate mean for cited_by, both UK and Germany for 2011

cite_ger_2011 <- (ger_2011$cited_by)
cite_ger_2011

Mean_ger_2011 <- mean(cite_ger_2011)
Mean_ger_2011


cite_UK_2011 <-(uk_2011$cited_by)
cite_UK_2011

Mean_UK_2011 <- mean(cite_UK_2011)
Mean_UK_2011

  ##calculate mean for cited_by, both UK and Germany for 2012

cite_ger_2012 <-(ger_2012$cited_by)
cite_ger_2012

Mean_ger_2012 <- mean(cite_ger_2012)
Mean_ger_2012


cite_UK_2012 <-(uk_2012$cited_by)
cite_UK_2012

Mean_UK_2012 <- mean(cite_UK_2012)
Mean_UK_2012

####calculate mean for cited_by, both UK and Germany for 2013

cite_ger_2013 <-(ger_2013$cited_by)
cite_ger_2013

Mean_ger_2013 <- mean(cite_ger_2013)
Mean_ger_2013


cite_UK_2013 <-(uk_2013$cited_by)
cite_UK_2013

Mean_UK_2013 <- mean(cite_UK_2013)
Mean_UK_2013

######calculate mean for cited_by, both UK and Germany for 2014

cite_ger_2014 <-(ger_2014$cited_by)
cite_ger_2014

Mean_ger_2014 <- mean(cite_ger_2014)
Mean_ger_2014


cite_UK_2014 <-(uk_2014$cited_by)
cite_UK_2014

Mean_UK_2014 <- mean(cite_UK_2014)
Mean_UK_2014


## ######calculate mean for cited_by, both UK and Germany for 2015

cite_ger_2015 <-(ger_2015$cited_by)
cite_ger_2015

Mean_ger_2015 <- mean(cite_ger_2015)
Mean_ger_2015


cite_UK_2015 <-(uk_2015$cited_by)
cite_UK_2015

Mean_UK_2015 <- mean(cite_UK_2015)
Mean_UK_2015

## ######calculate mean for cited_by, both UK and Germany for 2016

cite_ger_2016 <-(ger_2016$cited_by)
cite_ger_2016

Mean_ger_2016 <- mean(cite_ger_2016)
Mean_ger_2016


cite_UK_2016 <-(uk_2016$cited_by)
cite_UK_2016

Mean_UK_2016 <- mean(cite_UK_2016)
Mean_UK_2016

## ######calculate mean for cited_by, both UK and Germany for 2017

cite_ger_2017 <-(ger_2017$cited_by)
cite_ger_2017

Mean_ger_2017 <- mean(cite_ger_2017)
Mean_ger_2017


cite_UK_2017 <-(uk_2017$cited_by)
cite_UK_2017

Mean_UK_2017 <- mean(cite_UK_2017)
Mean_UK_2017

## create a dataframe

citation_count <- 14

df <- data.frame(
  Country = rep(" ", citation_count),
  Year = rep(" ", citation_count),
  mean_citation_value = rep(NA, citation_count), stringsAsFactors = FALSE
)

df

#input values in df

df[1,] <- list("UK","2011",Mean_UK_2011)
df[2,] <- list("Germany","2011",Mean_ger_2011)

df[3,] <- list("UK","2012",Mean_UK_2012)
df[4,] <- list("Germany","2012",Mean_ger_2012)

df[5,] <- list("UK","2013",Mean_UK_2013)
df[6,] <- list("Germany","2013",Mean_ger_2013)

df[7,] <- list("UK","2014",Mean_UK_2014)
df[8,] <- list("Germany","2014",Mean_ger_2014)

df[9,] <- list("UK","2015",Mean_UK_2015)
df[10,] <- list("Germany","2015",Mean_ger_2015)

df[11,] <- list("UK","2016",Mean_UK_2016)
df[12,] <- list("Germany","2016",Mean_ger_2016)

df[13,] <- list("UK","2017",Mean_UK_2017)
df[14,] <- list("Germany","2017",Mean_ger_2017)

df = data.frame(Country, Year, mean_citation_value)

df

#code for barplot of top_cited_publication

p <- ggplot(df, aes(x=Year, y=mean_citation_value, fill=Country, 
                    text= paste("mean:",mean_citation_value ))) +
  geom_bar(stat="identity", position="dodge")

p

p1 <- ggplotly(tooltip = c("text", "x", "fill"))
p1

#code for linechart of GERD

df1 <- data.frame(gerd_he)
df1


q <- ggplot(df1, aes(x = year, y = value)) + 
  geom_line(aes(color = country), size = 1)

q


q1 <- ggplotly(tooltip = c("y", "color"))
q1  




