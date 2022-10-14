# ---------------------------------------------------#
# Render file for Social Capital Atlas example
# ---------------------------------------------------#
# Package loading and data import 
library(pacman)

p_load("rmarkdown", "readr", "dplyr", "tidyverse", "purrr", install = T)

SC_Data <- read_csv('/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/SC Example/social_capital_high_school.csv')
# ---------------------------------------------------#

NE_highschools <- tibble(
  zip = "68504", # North Star HS
  "68512", # Southwest HS
  "68510.1", # Lincoln East HS
  "68510.2", # Lincoln HS
  "68510", # Lincoln Pius X
  "68507", # Lincoln Northeast HS 
  "68506", # Lincoln Southeast HS
  "68803" # Grand Island Sr HS
  )

SC_reports <- tibble(
  output_file = str_c(NE_highschools, "-report.html"),
  params = map(NE_highschools, ~list(NE_highschools = .))
)

SC_reports %>%
  pwalk(rmarkdown::render, input = "/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/SC Example/SC_Input.Rmd")

# ---------------------------------------------------#
# Render command with no {purrr} package dependencies
# ---------------------------------------------------#
for (i in 1:n) {
  rmarkdown::render(
    "SC_Input", # reads and performs the input file
    params = NE_highschools, # uses the predefined parameter list of NE high schools
    output_file = str_c(NE_highschools, "-report.html" # joins multiple strings of words together
  ))
}

# ---------------------------------------------------#
# Render command with listed parameters
# ---------------------------------------------------#
for (i in 1:n) {
rmarkdown::render(
    "SC_Input", 
    params = list(zip = c("68504", # North Star HS
                          "68512", # Southwest HS
                          "68510.1", # Lincoln East HS
                          "68510.2", # Lincoln HS
                          "68510", # Lincoln Pius X
                          "68507", # Lincoln Northeast HS 
                          "68506", # Lincoln Southeast HS
                          "68803"), # Grand Island Sr HS))
    output_file = str_c(NE_highschools, "-report.html" 
    )))
}

# ---------------------------------------------------#
# Render command with listed parameters and multiple parameter sets
# ---------------------------------------------------#
for (i in 1:n) {
  rmarkdown::render(
    "SC_Input", 
    params = c(list(zip = 68001:69367, # All NE zip codes
               students_9_to_12 > 600, # High schools with more than 600 students
               volunteering_rate_hs > .05), # Volunteering rate below 5%; 1 in 20 students volunteer
    output_file = str_c(NE_highschools, "-report.html" 
                  )))
}