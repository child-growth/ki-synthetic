

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in synthetic data file
#--------------------------------------------

synfull <- readRDS(paste0(ghapdata_dir, "ki-synthetic-dataset.rds"))


#--------------------------------------------
# Read in real data 
#--------------------------------------------

real <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-manuscript-dataset.rds")


syn <- synfull %>% subset(., select=c(studyid, country, measurefreq, region, subjid, agedays, haz, waz, whz, sex, htcm, lencm,wtkg)) %>% mutate(dataset="Synthetic") 
real <- real %>% subset(., select=c(studyid, country, measurefreq, region, subjid, agedays, haz, waz, whz, sex, htcm, lencm,wtkg)) %>% mutate(dataset="Original")

d <- bind_rows(syn, real)

d$country <- gsub("TANZANIA, UNITED REPUBLIC OF","TANZANIA", d$country)
d$studyid <- gsub("MRC Keneba","Keneba", d$studyid)

d <- d %>% mutate(cohort=paste0(studyid,"-",country)) %>% filter(studyid=="MAL-ED" & country=="BANGLADESH", agedays < 730)

d %>% group_by(dataset) %>% summarize(N=n(), Nsubjects=length(unique(subjid)), mean(haz, na.rm=T), mean(htcm, na.rm=T), mean(agedays, na.rm=T))


