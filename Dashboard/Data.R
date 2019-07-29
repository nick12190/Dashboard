library(ggplot2)
library(plotly)
library(ColorPalette)
library(scales)
library(shinythemes)
library(polynom)
library(pracma)
#calculate median for cited_by, both UK and Germany for 2011

cite_ger_2011 <- (ger_2011$cited_by)
cite_ger_2011

median_ger_2011 <- median(cite_ger_2011)
median_ger_2011


cite_UK_2011 <-(uk_2011$cited_by)
cite_UK_2011

median_UK_2011 <- median(cite_UK_2011)
median_UK_2011

  ##calculate median for cited_by, both UK and Germany for 2012

cite_ger_2012 <-(ger_2012$cited_by)
cite_ger_2012

median_ger_2012 <- median(cite_ger_2012)
median_ger_2012


cite_UK_2012 <-(uk_2012$cited_by)
cite_UK_2012

median_UK_2012 <- median(cite_UK_2012)
median_UK_2012

####calculate median for cited_by, both UK and Germany for 2013

cite_ger_2013 <-(ger_2013$cited_by)
cite_ger_2013

median_ger_2013 <- median(cite_ger_2013)
median_ger_2013


cite_UK_2013 <-(uk_2013$cited_by)
cite_UK_2013

median_UK_2013 <- median(cite_UK_2013)
median_UK_2013

######calculate median for cited_by, both UK and Germany for 2014

cite_ger_2014 <-(ger_2014$cited_by)
cite_ger_2014

median_ger_2014 <- median(cite_ger_2014)
median_ger_2014


cite_UK_2014 <-(uk_2014$cited_by)
cite_UK_2014

median_UK_2014 <- median(cite_UK_2014)
median_UK_2014


## ######calculate median for cited_by, both UK and Germany for 2015

cite_ger_2015 <-(ger_2015$cited_by)
cite_ger_2015

median_ger_2015 <- median(cite_ger_2015)
median_ger_2015


cite_UK_2015 <-(uk_2015$cited_by)
cite_UK_2015

median_UK_2015 <- median(cite_UK_2015)
median_UK_2015

## ######calculate median for cited_by, both UK and Germany for 2016

cite_ger_2016 <-(ger_2016$cited_by)
cite_ger_2016

median_ger_2016 <- median(cite_ger_2016)
median_ger_2016


cite_UK_2016 <-(uk_2016$cited_by)
cite_UK_2016

median_UK_2016 <- median(cite_UK_2016)
median_UK_2016

## ######calculate median for cited_by, both UK and Germany for 2017

cite_ger_2017 <-(ger_2017$cited_by)
cite_ger_2017

median_ger_2017 <- median(cite_ger_2017)
median_ger_2017


cite_UK_2017 <-(uk_2017$cited_by)
cite_UK_2017

median_UK_2017 <- median(cite_UK_2017)
median_UK_2017

## create a dataframe

citation_count <- 14

df <- data.frame(
  Country = rep(" ", citation_count),
  Year = rep(" ", citation_count),
  median_Citation_Value = rep(NA, citation_count), stringsAsFactors = FALSE
)

df

#input values in df

df[1,] <- list("UK","2011",median_UK_2011)
df[2,] <- list("UK","2012",median_UK_2012)
df[3,] <- list("UK","2013",median_UK_2013)
df[4,] <- list("UK","2014",median_UK_2014)
df[5,] <- list("UK","2015",median_UK_2015)
df[6,] <- list("UK","2016",median_UK_2016)
df[7,] <- list("UK","2017",median_UK_2017)

df[8,] <- list("Germany","2011",median_ger_2011)
df[9,] <- list("Germany","2012",median_ger_2012)
df[10,] <- list("Germany","2013",median_ger_2013)
df[11,] <- list("Germany","2014",median_ger_2014)
df[12,] <- list("Germany","2015",median_ger_2015)
df[13,] <- list("Germany","2016",median_ger_2016)
df[14,] <- list("Germany","2017",median_ger_2017)

df

#Barplot of top_cited_publication

TCP <- ggplot(df, aes(x=Year, y=median_Citation_Value, fill= Country,text= paste("median:",median_Citation_Value ))) +
  geom_bar(stat="identity", position="dodge", show.legend = TRUE) + 
  scale_fill_manual(values=c('#0db86a','#f5e810'))+
  theme(legend.position = "bottom")

TCP

A <- ggplotly(TCP) ## A stores the plotly valu for top cited publication(TCP)
A

#Gross expenditure on reseach and developement in PPP

               
DF1 <- data.frame(GERD_performed_by_higher_education) ## Data Frame for GERD by Higher Education
DF1

Decimal <- 1000000

graphyplot_PPP <- ggplot(df1, aes(x = year, y = value/Decimal)) + 
  geom_line(aes(color = country), size = 1, show.legend = TRUE) +
  scale_color_manual(values=c("#0db86a","#f5e810"))+ 
  theme(legend.position = "bottom")+
   geom_point(shape=10)+ labs(x = " Years", y = "Higher Education_PPP(in millions)")

graphyplot_PPP

  

PPP <- ggplotly(graphyplot_PPP)
PPP

## GERD as percentage

df2 <- data.frame(GERD_performed_by_higher_education_percen)
df2

GERD_as_percentage <- ggplot(df2, aes(x = year, y = value)) + 
  geom_line(aes(color = country), size = 1, show.legend = TRUE) +
  scale_color_manual(values=c("#0db86a","#f5e810"))+ 
  theme(legend.position = "bottom")+ geom_point(shape=10)+ labs(x = " Years", y = "Percentage of Higher Education")

GERD_as_percentage

EduASPercentage <- ggplotly(GERD_as_percentage)
EduASPercentage

###GERD as a percntage of GDP

df3 <- data.frame (GERD_performed_by_higher_education_percen_GDP)
df3

GERD_as_percentage_GDP <- ggplot(df3, aes(x = year, y = value)) + 
  geom_line(aes(color = country), size = 1, show.legend = TRUE) +
  scale_color_manual(values=c("#0db86a","#f5e810"))+ 
  theme(legend.position = "bottom") + geom_point(shape=10)+ 
  labs(x = " Years", y = "Higher Education (Percentage of GDP)")

GERD_as_percentage_GDP

gredPerGDP <- ggplotly(GERD_as_percentage_GDP)
gredPerGDP

## Predictive Analysis(percentage of GDP )

df6_ger <- GERD_performed_by_higher_education_percen_GDP[1:6, c(4,5,6)]
df6_ger

linearRegression_ger <- lm(value ~ year,  df6_ger)
linearRegression_ger

summary(linearRegression_ger) ## Multiple R-squared:  0.5195

##UK

df7_UK <- GERD_performed_by_higher_education_percen_GDP[7:12, c(4,5,6)]
df7_UK

linearRegression <- lm(value ~ year,  df7_UK)
linearRegression

summary(linearRegression) ## Multiple R-squared:  0.7026


##############

Pred_Ger <- ggplot(df6_ger, aes(x= year,y= value)) + 
   geom_point(shape=10, aes(color = "Raw Data"))+ geom_smooth(method = 'lm', aes(color = "Regression Line"))+
  labs(x = " Years", y = "Higher Education (Percentage of GDP)") +
scale_color_manual(name = "Predictive analysis", values  = c( "Raw Data" ="darkgreen", "Regression Line" = "blue"), 
                   guide = guide_legend(override.aes = list(linetype = c(NA, 1),
                                                      shape = c(16, NA))))

Pred_Ger

PA_UK <- ggplot(df7_UK, aes(x= year,y= value)) + 
  geom_point(shape=10, aes(color = "Raw Data"))+ geom_smooth(method = 'lm', aes(color = "Regression Line"))+
  labs(x = " Years", y = "Higher Education (Percentage of GDP)") +
  scale_color_manual(name = "Predictive analysis", values  = c( "Raw Data" ="darkgreen", "Regression Line" = "blue"), 
                     guide = guide_legend(override.aes = list(linetype = c(NA, 1),
                                                              shape = c(16, NA))))

PA_UK







