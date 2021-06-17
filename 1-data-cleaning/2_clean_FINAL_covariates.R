
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

real_cov <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")
saveRDS(real_cov, here("data/real_cov.rds"))

d <- d %>% group_by(studyid, subjid, syntype) %>% 
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

#birthweight
# Low birth weight: < 2500
# healthy birth weight 2500-4200

d$birthwt <- relevel(d$birthwt, ref="Normal or high birthweight")


#birth length: 
#No WHO categories:
#Based on quantiles

d$birthlen <- relevel(d$birthlen, ref=">=50 cm")

#wealth index: 
#wealthiest quartile - Q4 is baseline
d$hhwealth_quart <- gsub(" ","",d$hhwealth_quart)
table(paste0(d$studyid," ", d$country), d$hhwealth_quart)
d$hhwealth_quart <- factor(d$hhwealth_quart, levels=c("WealthQ4","WealthQ1","WealthQ2","WealthQ3"))

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

d$hfoodsec <- relevel(d$hfoodsec, ref="Food Secure")


d$single <- relevel(d$single, ref="0")
d$vagbrth <- relevel(d$vagbrth, ref="1")
d$hdlvry <- relevel(d$hdlvry, ref="1")



#Set remaining risk factors to factors
d$brthmon <- factor(d$brthmon)
d$month <- factor(d$month)
d$single <- factor(d$single)
d$vagbrth <- factor(d$vagbrth)
d$hdlvry <- factor(d$hdlvry)
d$hfoodsec <- factor(d$hfoodsec)
d$enstunt <- factor(d$enstunt)
d$sex <- factor(d$sex)
d$meducyrs <- factor(d$meducyrs)

#Check that all risk factor variables are set as factors
d<-as.data.frame(d)
for(i in 1:ncol(d)){
  cat(colnames(d)[i], ": ", class(d[,i]), "\n")
}



#Tabulate missingness
for(i in 1:ncol(d)){
  print(colnames(d)[i])
  print(table(is.na(d[,i])))
  print(levels(d[,i]))
}



#--------------------------------------------
# Check for sparsity across RF levels
#--------------------------------------------

tabRF <- function(d, Avar){
  tab <- table(paste0(d$studyid, " ",d$country), d[,Avar])
  tab <- tab[rowSums(tab)!=0, ]
  print(tab)
}





tabRF(d, "gagebrth")
tabRF(d, "birthwt")
tabRF(d, "birthlen")
tabRF(d, "parity") 
tabRF(d, "mage")
tabRF(d, "mhtcm") 
tabRF(d, "mwtkg") 
tabRF(d, "mbmi") 
tabRF(d, "fage")
tabRF(d, "fhtcm")
tabRF(d, "feducyrs")
tabRF(d, "nrooms")
tabRF(d, "nhh")
tabRF(d, "nchldlt5")


levels(d$meducyrs)
levels(d$feducyrs)
levels(d$vagbrth)
levels(d$hfoodsec)
levels(d$hdlvry)
levels(d$single)
levels(d$safeh20)


#--------------------------------------------
# Save dataset
#--------------------------------------------


#Save dataset
saveRDS(d, clean_covariates_path)


