# Toronto Paramedic Services Response Times

This repository contains all of the files required for an analysis of the Toronto Paramedic Services' response times. The aim of this project is to analyse the Toronto Paramedic Services' response times to determine its efficacy as an emergency medical service.

## Getting Started

### Requirements

This project requires both the [R programming language](https://www.r-project.org/) and [Quarto](https://quarto.org/docs/get-started/). If you do not have these tools in your development environment, please install them now. You will also need an integrated development environment (IDE) capable of running R scripts. I recommend [RStudio](https://posit.co/products/open-source/rstudio/) (local) or [Posit Cloud](https://posit.cloud/) (cloud-based).

Once your environment is set up, you must install several packages that handle various tasks, like graphing data, creating tables, and general organization and processing. You will find a complete list of these packages in the file `00-install_dependencies.qmd` within the `scripts` folder. On lines 16-29 of `00-install_dependencies.qmd`, there is a code chunk that installs all of the required dependencies for this project. You only need to run this code once to install the required dependencies.

### Download the data

The first step in working with this project is to download three data sets from [Open Data Toronto](https://www.toronto.ca/city-government/data-research-maps/open-data/). Don't worry, there's no need for you to physically download any files; the code will take care of that.

In the `scripts` folder, you'll find the `01-data_import.qmd` file. This is a [Quarto](https://quarto.org/) document, which is a technical publishing system using Markdown as a foundation and allowing us to run embedded R code chunks. Within `data_import.qmd`, you'll see three separate R code chunks:

-   The first chunk (lines 21-33) downloads the [Land Ambulance Response Time Standard](https://open.toronto.ca/dataset/land-ambulance-response-time-standard) package
-   The second chunk (lines 35-48) downloads the [Pre-Hospital Emergency Care Performance Metrics](https://open.toronto.ca/dataset/pre-hospital-emergency-care-performance-metrics) package
-   The third chunk (lines 50-62) downloads the [Paramedic Services Incident Data](https://open.toronto.ca/dataset/paramedic-services-incident-data) package

Run each chunk to fetch the data sets and import the relevant data into `.csv` files. At the end of this process, you should have three new files in `inputs/data`: `raw_response_data.csv`, `raw_incident_data.csv`, and `raw_emergent_cara_data.csv`.

### Analyse the data

The core data analysis of this project occurs in `outputs/paper` under the `analysis.qmd` file, another Quarto document. The raw references used in `analysis.qmd` are available under the same folder in the `references.bib` file.

## Debugging

### Test the data

If you're experiencing problems with the data, I've compiled a document that tests the data against several parameters, like data types, number ranges, and data ranges. This testing document is available under the `scripts` folder in the `02-data_testing.qmd` file. Before running any of these tests, you must first download the data following the steps outlined above. All of these tests should return true. If they do not, feel free to [create an issue](https://github.com/seb646/toronto-paramedic-responses/issues/new).

### Simulate the data

If you'd like to debug the problem yourself, or if you'd like to use a service like Stack Overflow for help, it's important to have some simulated data to reproduce the problem. Within the `scripts` folder, I've created the file `03-data_simulation.qmd` that generates random, fake data based on the information initially downloaded from Open Data Toronto.

## Notes

### Use of Quarto files instead of R scripts

I opted to use Quarto files instead of R scripts to handle processes like data testing and simulation. This allowed me to divide tasks into separate chunks capable of running independently. Although this is not standard convention, I felt it would make this project more reproducible by allowing users to identify specific errors in each chunk. By allowing code chunks to run independently, it also gives users the opportunity to continue with a process despite errors (for example, if users encounter an error with the code in one test, it has no impact on the other tests).

## Acknowledgments

Created by [Sebastian Rodriguez](https://srod.ca) © 2023, licensed under the [BSD 3-Clause License](https://github.com/seb646/toronto-paramedic-responses/blob/main/LICENSE). Contains information from [Open Data Toronto](https://www.toronto.ca/city-government/data-research-maps/open-data/), licensed under the [Open Government Licence - Toronto](https://open.toronto.ca/open-data-license/). Created using [R](https://www.r-project.org/), an open-source statistical programming language.

This project uses a number of R packages, including: [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html), [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html), [here](https://cran.r-project.org/web/packages/here/index.html), [janitor](https://cran.r-project.org/web/packages/janitor/index.html), [kableExtra](https://cran.r-project.org/web/packages/kableExtra/index.html), [knitr](https://cran.r-project.org/web/packages/knitr/index.html), [lubridate](https://cran.r-project.org/web/packages/lubridate/index.html), [opendatatoronto](https://cran.r-project.org/web/packages/opendatatoronto/index.html), [readr](https://cran.r-project.org/web/packages/readr/index.html), [RColorBrewer](https://cran.r-project.org/web/packages/RColorBrewer/index.html), [scales](https://cran.r-project.org/web/packages/scales/index.html), and [tidyverse](https://cran.r-project.org/web/packages/tidyverse/index.html).

Much of this project's development was informed by [Rohan Alexander](https://rohanalexander.com/)'s book [*Telling Stories with Data*](https://tellingstorieswithdata.com/).
