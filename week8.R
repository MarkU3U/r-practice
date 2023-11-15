
options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "zh_TW.UTF-8")

flightsData <- readRDS("data/flightsData_week8.rds")

dplyr::glimpse(flightsData)



whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE)

whichNeedPlus1

departureDate <- flightsData$ScheduleStartDate
departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1)

departureTimeString <- flightsData$DepartureTime
departureTimeString <- sub("+1", "", departureTimeString, fixed = T)

departureTime <- paste(departureDate, departureTimeString)

head(departureTime)

flightsData$DepartureTime <- departureTime # replace the old DepartureTime inside the data frame

names(flightsData)

flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

dplyr::glimpse(split_flightsData[[1]])

names(split_flightsData[[.x]])
