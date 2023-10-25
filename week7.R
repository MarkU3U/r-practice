
flights = readRDS("rpractice/week7/flights.rds")
str(flights)
flightsData <- flights$data[[1]]$data_frame

install.packages("dplyr", lib = "C:/r-lib")
dplyr::glimpse(flightsData)
dplyr::glimpse(flights$data[[1]]$data_frame)

class(flightsData$AirlineID)

class(flightsData$ScheduleStartDate)

householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(flightsData$AirlineID)
class(flightsData$AirlineID)

fct_householdIncome <- factor(householdIncomes)

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

ord_fct_DepartureAirportID <- factor(DepartureAirportID)


dplyr::left_join(flightsData, airlines, by="AirlineID") -> flightsDataflightsDataAirlineName)
