library(pacman)

p_load("ggplot2", "geomtextpath", "dplyr", "readr", "stats", "prettydoc", "readxl", "purrr", install = T)

StateEd_Data <- read_excel("/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/State Ed Example/HSDistrict_Data.xlsx")

State <- unique(StateEd_Data$STATE)

SC_reports <- tibble(
  output_file = str_c(State, "-report.html"),
  params = map(State, ~list(State = .))
)

SC_reports %>%
  pwalk(rmarkdown::render, input = 
          "/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/State Ed Example/StateEd_Input.Rmd")