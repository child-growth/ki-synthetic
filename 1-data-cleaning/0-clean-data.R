
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(here("/1-data-cleaning/1-clean-synthetic-data.R"))
source(here("/1-data-cleaning/2_clean_FINAL_covariates.R"))
source(here("/1-data-cleaning/2-combine-with-real-data.R"))

source(here("/1-data-cleaning/5_process_mortality_data.R"))
source(here("/1-data-cleaning/6_anthro_prepdata.R"))
source(here("/1-data-cleaning/9_seasonality_prepdata.R"))

