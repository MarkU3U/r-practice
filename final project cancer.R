##library(readr)
##banking <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/banking14.csv")
##View(banking14)

library(readr)
CANCER <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/File_22018.csv")
View(CANCER)

dplyr::glimpse(CANCER)
table(CANCER$癌症診斷年)
View(CANCER$癌症診斷年)

library(dplyr)

    
  

# 資料處理和分析
CANCER %>%
  group_by(癌症別) %>%
  summarise(
    平均年齡 = mean(平均年齡, na.rm = TRUE),
    年齡中位數 = median(年齡中位數, na.rm = TRUE),
    `年齡標準化發生率  WHO 2000世界標準人口 (每10萬人口)` = mean(`年齡標準化發生率  WHO 2000世界標準人口 (每10萬人口)`, na.rm = TRUE)
  ) %>%
  print()
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 