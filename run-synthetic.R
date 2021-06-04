
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#cleaning
source(here("/1-data-cleaning/1-clean-synthetic-data.R"))
source(here("/1-data-cleaning/2_clean_FINAL_covariates.R"))
source(here("/1-data-cleaning/6_anthro_prepdata.R"))
#source(here("/1-data-cleaning/5_process_mortality_data.R"))
#source(here("/1-data-cleaning/9_seasonality_prepdata.R"))

#Plot Z-score differences
source(here("/1-data-cleaning/2-combine-with-real-data.R"))

#Descriptive
source(here("2-descriptive-outcomes/wasting/0-run-descriptive-outcomes-wasting.R"))
source(here("2-descriptive-outcomes/stunting/0-run-descriptive-outcomes-stunting.R"))
source(here("2-descriptive-outcomes/compile_desc_outcomes.R"))


source(here("3-prep-tmle-analysis/02_calc_wast_rf_outcome.R"))
source(here("3-prep-tmle-analysis/03_calc_wlz-stunt_rf_outcomes.R"))
source(here("3-prep-tmle-analysis/04_calc_stunt_rf_outcomes.R"))
source(here("3-prep-tmle-analysis/05_calc_co_rf_outcomes.R"))
source(here("3-prep-tmle-analysis/07_merge_outcomes_and_covariates.R"))
source(here("3-prep-tmle-analysis/09_specify_analyses.R"))
