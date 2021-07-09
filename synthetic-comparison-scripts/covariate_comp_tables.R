

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(arsenal)
library(dataCompareR)

cov <- readRDS(clean_covariates_path)
table(cov$syntype)

covQI <- cov %>% filter(syntype=="QI")
covBC <- cov %>% filter(syntype=="BC")
covFULL <- cov %>% filter(syntype=="FULL")
real_cov <- cov %>% filter(syntype=="real")


QI_comp <- rCompare(real_cov, covQI)
BC_comp <- rCompare(real_cov, covBC)
FULL_comp <- rCompare(real_cov, covFULL)

#save(QI_comp, BC_comp, FULL_comp, file=paste0(fig_dir, "cov-comparisons.Rdata"))

saveReport(QI_comp, reportName = 'QI_cov_comp')
saveReport(BC_comp, reportName = 'BC_cov_comp')
saveReport(FULL_comp, reportName = 'Full_cov_comp')

