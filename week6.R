#my ecocnomics grade-----

myEconomicGrades<-c(100,99)

#import json file-----
flights <-jsonlite::fromJSON("data/international_flights.json")

##data information-------

data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

flights <- list(
  data = list(data1)
)

data1$file
data1$mata$name
data1$mata$source_link








