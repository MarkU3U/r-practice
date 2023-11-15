####flight week10
# To ensure Chinese characters are displayed correctly
options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "zh_TW.UTF-8")



flights <- readRDS("data/flights_week10.rds")




flightsData <- flights$data[[1]]$data_frame



dplyr::glimpse(flightsData)




flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData











# for each sub data frame
.x=1 # say the first one
# we want to parse the time
split_flightsData[[.x]]$DepartureTime <- 
  lubridate::ymd_hm(split_flightsData[[.x]]$DepartureTime, tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 

data_frame$some_column <- operations on ... other data_frame$column(s)

download.packages(lubridate)

data_frame |>
  dplyr::mutate(
    some_column = operations on ... other column(s)
  )







