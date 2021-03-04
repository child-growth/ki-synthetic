
#-----------------------------------------------------------------------------------------
# Process FINAL dataset into a dataset of covariates to be used in the exposure/risk factor
# analysis in the causes and consequences manuscript. 
#
# Output: Single dataset with one row per child and all baseline covariates
#         Time-varying covariates and anthropometry measures processed in a seperate script.
#
# Author: Andrew Mertens (amertens@berkeley.edu)
#-----------------------------------------------------------------------------------------




rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)


d <- readRDS(paste0(ghapdata_dir, "ki-synthetic-dataset.rds"))


d <- d %>% group_by(studyid, subjid) %>% 
  arrange(studyid, subjid, agedays) %>% 
  filter(!is.na(haz)) %>% #Note that this is dropping covariates for children with only WAZ
  #keep one observation per child
  slice(1) 




#--------------------------------------------------------
# create id variable for unit of independent observation
# (At level of child for most studies, but some trials are cluster-randomized)
#--------------------------------------------------------

d$id <- NA
d$id[d$studyid %in% c("iLiNS-Zinc",
                      "JiVitA-3",    
                      "JiVitA-4",
                      "PROBIT",
                      "SAS-CompFeed")] <-d$clusterid[d$studyid %in% c("iLiNS-Zinc",
                                                                               "JiVitA-3",    
                                                                               "JiVitA-4",
                                                                               "PROBIT",
                                                                               "SAS-CompFeed")]
# d$id[!(d$studyid %in% c("iLiNS-Zinc",
#                         "JiVitA-3",    
#                         "JiVitA-4",
#                         "PROBIT",
#                         "SAS-CompFeed"))] <-d$subjid[!(d$studyid %in% c("iLiNS-Zinc",
#                                                                                    "JiVitA-3",    
                                                                               # "JiVitA-4",
                                                                               #     "PROBIT",
                                                                               #     "SAS-CompFeed"))]
d$id[is.na(d$id)]   <-  d$subjid[is.na(d$id)]  

#use siteid from PROBIT
#d$id[d$studyid %in% c("PROBIT")] <-d$siteid[d$studyid %in% c("PROBIT")]

table(is.na(d$id))


d <- subset(d, select = c(studyid,       subjid,        sex,           month,  country,       region,         arm,           tr,            gagebrth,     
                           brthmon,       parity,       
                           birthwt,       birthlen,      vagbrth,       hdlvry,        mage,          mhtcm,        
                           mwtkg,         mbmi,          meducyrs,      single,        fage,          fhtcm,         feducyrs,     
                           trth2o,        cleanck,       impfloor,      nrooms,        nhh,           nchldlt5,              
                           earlybf,       hfoodsec,   measurefreq,   anywast06,    
                           pers_wast,     enstunt,       enwast,     hhwealth_quart,      id))




#--------------------------------------------
# Save dataset
#--------------------------------------------


#Save dataset
saveRDS(d, clean_covariates_path)


