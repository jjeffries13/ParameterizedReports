library(tidyverse)
library(rmarkdown)
library(haven)

GOTG_Data <- read_dta('/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/InstitutionFile.dta')

NE_institutions <- c("University of Nebraska at Kearney", 
                      "Hastings College",
                      "Doane College-Crete",
                      "Concordia University-Seward",
                      "BryanLGH College of Health Sciences",
                      "University of Nebraska at Omaha",
                      "Nebraska Wesleyan University",
                      "University of Nebraska-Lincoln")
  
# subset(GOTG_Data$stabbr == "NE")
# unique(GOTG_Data$instnm)

GOTG_reports <- tibble(
  output_file = str_c(NE_institutions, "-report.html"),
  params = map(NE_institutions, ~list(NE_institutions = .))
)

GOTG_reports %>%
  pwalk(rmarkdown::render, input = "/Users/jayjeffries/Desktop/R Resources/Parameterized Reporting/GOTG_Input.Rmd")
