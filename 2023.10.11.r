
#DataFlight file-----

data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

flights <- list(
  data = list(data1)
)


saveRDS(flights, "data/flights.rds")

flights = readRDS("data/flights.rds")

# Read JSON file-----

filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame <- flightsData

saveRDS(flights, "data/flights.rds")

flightsData[3,2]
flightsData[c(3,2),"ScheduleStartDate"]
flightsData[c(3,2),c("ScheduleStartDate","FlightNumber")]


# feature by feature stacking-----

names = c("John", "Mary", "Tom")
ages = c(30, 25, 35)
isMarried = c(TRUE, FALSE, TRUE)

data_fbf <- list(
  name = names, 
  age = ages, 
  married = isMarried)










