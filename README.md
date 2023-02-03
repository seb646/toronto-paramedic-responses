# Toronto Paramedic Services Response Times

This repository contains all of the files required for an analysis of the Toronto Paramedic Services' response times. The aim of this repository is to analyse the Toronto Paramedic Services' response time to determine its efficacy as an emergency service.

## Getting Started

### Download the data

To begin working with these files, you must first download three data sets from [Open Data Toronto](https://www.toronto.ca/city-government/data-research-maps/open-data/). Don't worry, there's no need for you to physically download any files; the code will take care of that.

In `inputs/data` you'll find the `data_import.qmd` document. This is a Quarto file, which is a combination of R and Markdown. Within `data_import.qmd`, you'll see three separate code chunks:

-   The first chunk (lines 21-33) downloads the [Land Ambulance Response Time Standard](https://open.toronto.ca/dataset/land-ambulance-response-time-standard) package
-   The second chunk (lines 35-48) downloads the [Pre-Hospital Emergency Care Performance Metrics](https://open.toronto.ca/dataset/pre-hospital-emergency-care-performance-metrics) package
-   The third chunk (lines 50-62) downloads the [Paramedic Services Incident Data](https://open.toronto.ca/dataset/paramedic-services-incident-data) package

Run each chunk to fetch the data sets and import the relevant data into `.csv` files.

### Analyse the data

All of the data analysis occurs in `outputs/paper` in the `analysis.qmd` document, another Quarto file. The raw references used in `analysis.qmd` are available under the same folder in the `references.bib` file.

## Debugging

### Test the data

If you're experiencing problems with the data, I've compiled a document that tests the data against several parameters, like data types, number ranges, and data ranges. This testing document is available in the root folder in the `data-testing.qmd` file. Before running any of these tests, you must first download the data following the steps outlined above. All of these tests should return true. If they do not, feel free to [create an issue](https://github.com/seb646/toronto-paramedic-responses/issues/new) in this repository and I'll get to it as soon as I can!

### Simulate the data

If you'd like to debug the problem yourself, or if you'd like to use a service like StackOverflow for help, it's important to have some simulated data to reproduce the problem. Within the root directory, I've created a `data-simulation.qmd` file that generates random, fake data based on the information I initially downloaded from Open Data Toronto.

## Acknowledgments

Created by [Sebastian Rodriguez](https://srod.ca) © 2023, licensed under the [BSD 3-Clause License](https://github.com/seb646/toronto-paramedic-responses/blob/main/LICENSE). Contains information from [Open Data Toronto](https://www.toronto.ca/city-government/data-research-maps/open-data/), licensed under the [Open Government Licence -- Toronto](https://open.toronto.ca/open-data-license/). Created using [R](https://www.r-project.org/), an open-source statistical programming language.

This project uses a number of R packages, including: [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html), [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html), [here](https://cran.r-project.org/web/packages/here/index.html), [janitor](https://cran.r-project.org/web/packages/janitor/index.html), [kableExtra](https://cran.r-project.org/web/packages/kableExtra/index.html), [knitr](https://cran.r-project.org/web/packages/knitr/index.html), [lubridate](https://cran.r-project.org/web/packages/lubridate/index.html), [opendatatoronto](https://cran.r-project.org/web/packages/opendatatoronto/index.html), [readr](https://cran.r-project.org/web/packages/readr/index.html), [RColorBrewer](https://cran.r-project.org/web/packages/RColorBrewer/index.html), [scales](https://cran.r-project.org/web/packages/scales/index.html), and [tidyverse](https://cran.r-project.org/web/packages/tidyverse/index.html).
