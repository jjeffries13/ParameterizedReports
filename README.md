# Iterating Efficiently with <br /> Parameterized Reporting in R Markdown <img align="right" width="100" height="115" src="https://pkgs.rstudio.com/rmarkdown/reference/figures/logo.png"> 
[![Generic badge](https://img.shields.io/badge/Rversion-4.2.1-blue.svg)](https://shields.io/) [![macOS](https://svgshare.com/i/ZjP.svg)](https://svgshare.com/i/ZjP.svg) [![made-with-Markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg)](http://commonmark.org)

### CONTENTS OF THIS REPOSITORY
---------------------
  
 * Introduction
 * [Slides](https://github.com/jjeffries13/ParameterizedReports/blob/main/Slides/Jeffries_ParamReports.pdf)
 * Public Datasets
   * [Social Capital Atlas Report Data](https://github.com/jjeffries13/ParameterizedReports/blob/main/Data/social_capital_high_school.csv)
      * [Link](https://dataforgood.facebook.com/dfg/tools/social-capital-atlas#accessdata) to original source
   * [Grads on the Go: Measuring College-Specific Labor Markets for Graduates Data](https://github.com/jjeffries13/ParameterizedReports/blob/main/Data/InstitutionFile.dta)
      * [Link](https://www.openicpsr.org/openicpsr/project/170381/version/V3/view) to original source
   * [National Center for Educational Statistics High School District Data](https://github.com/jjeffries13/ParameterizedReports/blob/main/Data/HSDistrict_Data.xlsx)
      * [Link](https://nces.ed.gov/ccd/schoolsearch/) to original source
   * [National Center for Educational Statistics National ACT Data](https://github.com/jjeffries13/ParameterizedReports/blob/main/Data/State_ACT.xls)
      * [Link](https://nces.ed.gov/programs/digest/d19/tables/dt19_226.60.asp) to original source
 * Code Files
    * Social Capital Markdown File [(SC.Rmd)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/SC_Input.Rmd)
    * Social Capital Render Script [(SC.R)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/SC_Render.R)
    * Grads on the Go Markdown File [(GOTG.Rmd)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/GOTG_Input.Rmd)
    * Grads on the Go Render Script [(GOTG.R)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/GOTG_Render.R)
    * State Education Markdown File [(StateEd.Rmd)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/StateEd_Input.Rmd)
    * State Education Render Script [(StateEd.R)](https://github.com/jjeffries13/ParameterizedReports/blob/main/Code%20Files/StateEd_Render.R)
 * Output Files
    * [Social Capital](https://github.com/jjeffries13/ParameterizedReports/tree/main/Output%20Files/Social%20Capital)
    * [Grads on the Go](https://github.com/jjeffries13/ParameterizedReports/tree/main/Output%20Files/GOTG)
    * [State Education](https://github.com/jjeffries13/ParameterizedReports/upload/main/Output%20Files/State%20Education)

---------------------

### INTRODUCTION
---------------------

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; When reporting or evaluating findings across different contexts, classes, or categories, you may need to create digestible reports for multiple groups of interest. Yet, manually creating such reports can be hauntingly monotonous and manually intensive. For the sake of your own time and sanity, it might be worthwhile to employ parameterized reporting.  Clusters or strata within data allow for the subsetting of findings across individual variables or sets of variables (i.e., parameters). Parameterized reporting in R Markdown was developed as a method intended to foster computational reproducibility while facilitating scalability. As trends toward mandatory open access data and code sharing continue to emerge, adopting explicitly transparent processes in your research will help others reproduce your analyses and potentially attempt to replicate your conclusions. Whether you wish to compare standardized test scores among schools in a district, salesperson productivity across store locations, or quality of life measures between state counties, parameterized reporting can be a powerfully convenient and ergonomic tool for this. This introductory presentation will conclude with a walkthrough of code examples from three publicly available large-scale datasets.

&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;
Inspiration from [Why R Is Magic](https://rfortherestofus.com/2022/03/why-r-is-magic/) from *R For the Rest of Us*.
