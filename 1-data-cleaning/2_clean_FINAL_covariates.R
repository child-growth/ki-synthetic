
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
head(d)

d <- d %>% group_by(studyid, subjid) %>% 
  arrange(studyid, subjid, agedays) %>% 
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


colnames(d)
d <- subset(d, select = -c(haz,whz,waz, muaz))
# d <- subset(d, select = c(studyid,       subjid,        sex,           month,  country,       region,         arm,           tr,            gagebrth,     
#                            brthmon,       parity,       
#                            birthwt,       birthlen,      vagbrth,       hdlvry,        mage,          mhtcm,        
#                            mwtkg,         mbmi,          meducyrs,      single,        fage,          fhtcm,         feducyrs,     
#                            trth2o,        cleanck,       impfloor,      nrooms,        nhh,           nchldlt5,              
#                            earlybf,       hfoodsec,   measurefreq,   anywast06,    
#                            pers_wast,     enstunt,       enwast,     hhwealth_quart,      id))



d$parity <- relevel(d$parity, ref="1")




#---------------------------------------
# Set reference levels
#---------------------------------------


d$birthwt <- relevel(d$birthwt, ref="Normal or high birthweight")
d$birthlen <- relevel(d$birthlen, ref=">=50 cm")

table(paste0(d$studyid," ", d$country), d$hhwealth_quart)
d$hhwealth_quart <- gsub(" ","",d$hhwealth_quart)
d$hhwealth_quart <- relevel(factor(d$hhwealth_quart), ref="WealthQ4")

# children < 5 in HH
#not sure how this could be zero - can you double check this? 
#baseline should be smallest number

d$nchldlt5 <- relevel(d$nchldlt5, ref="1")

#gestational age at birth
#<37 weeks = preterm
#37-38 weeks = early term
#39-40 weeks = full term (baseline)
#>=41 weeks = late/post term

d$gagebrth <- relevel(d$gagebrth, ref="Full or late term")

#maternal BMI (is this measured when pregnant or not? if pregnant, then we may need to change these categories)
#<18.5 = underweight
#>=18.5 and <25 = normal weight (baseline)
#>=25 and <30 = overweight
#>=30 = obese

d$mbmi <- relevel(d$mbmi, ref="Normal weight")

#maternal height (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3095774/)
#less than 145 cm
#145-149.9 cm
#150-154.9 cm
#155-159.9 cm
#160.0 cm or greater. (baseline)

d$mhtcm <- relevel(d$mhtcm, ref=">=155 cm")

#maternal weight?
d$mwtkg <- relevel(d$mwtkg, ref=">=58 kg")

#mother's/father's education
#lowest education level = baseline
d$meducyrs <- relevel(factor(d$meducyrs), ref="Low")
d$feducyrs <- relevel(factor(d$feducyrs), ref="Low")

#mother's age
#middle = baseline
d$mage <- relevel(d$mage, ref="[20-30)")

#father age
#oldest = baseline
d$fage <- relevel(d$fage, ref=">=38")

#father height
d$fhtcm <- relevel(d$fhtcm, ref=">=167 cm")

#parental education
d$meducyrs <- relevel(d$meducyrs, ref="High")
d$feducyrs <- relevel(d$feducyrs, ref="High")

#number of rooms
d$nrooms <- relevel(d$nrooms, ref="4+")

d$nchldlt5 <- relevel(d$nchldlt5, ref="1")
d$meducyrs <- factor(d$meducyrs, levels = c("Low","Medium","High"))
d$feducyrs <- factor(d$feducyrs, levels = c("Low","Medium","High"))

table(d$tr)

d$tr <- relevel(factor(d$tr), ref="Control")
d$brthmon <- relevel(factor(d$brthmon), ref="1")

d$vagbrth <- relevel(factor(d$vagbrth), ref="1")
d$hdlvry <- relevel(factor(d$hdlvry), ref="1")
d$single <- relevel(factor(d$single), ref="1")
d$trth2o <- relevel(factor(d$trth2o), ref="1")
d$cleanck <- relevel(factor(d$cleanck), ref="1")
d$impfloor <- relevel(factor(d$impfloor), ref="1")
d$earlybf <- relevel(factor(d$earlybf), ref="1")


for(i in 1:ncol(d)){
  cat(colnames(d)[i],"\n")
  print(class(d[[i]]))
}

#--------------------------------------------
# Save dataset
#--------------------------------------------


#Save dataset
saveRDS(d, clean_covariates_path)


