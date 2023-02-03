library(opendatatoronto)
library(tidyverse)
library(dplyr)

raw_response_data <-
  list_package_resources("8b068db1-95b8-4ea9-b942-8a7ce3a5fbd6") |>
  filter(name == "Response Time (2013 - 2021)") |>
  get_resource()

write_csv(
  x = raw_response_data$`Land Ambulance Services`,
  file = "raw_response_data"
)

raw_emergent_care_data <-
  list_package_resources("174ace54-bcc7-4885-85c1-76094ab4a0ca") |>
  filter(name == "Pre-hospital emergency care performance metrics 2014-2021") |>
  get_resource()

write_csv(
  x = raw_emergent_care_data$`Land Ambulance Services`,
  file = "raw_emergent_care_data"
)