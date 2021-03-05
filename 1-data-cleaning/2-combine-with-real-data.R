

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in synthetic data file
#--------------------------------------------

syn <- readRDS(paste0(ghapdata_dir, "Synthetic-cohorts-full-v1.rds"))


#--------------------------------------------
# Read in real data 
#--------------------------------------------

real <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-manuscript-dataset.rds")


syn <- syn %>% subset(., select=c(studyid, country, measurefreq, region, agedays, haz, waz, whz)) %>% mutate(dataset="Synthetic") 
real <- real %>% subset(., select=c(studyid, country, measurefreq, region, agedays, haz, waz, whz)) %>% mutate(dataset="Original")

d <- bind_rows(syn, real)

d$country <- gsub("TANZANIA, UNITED REPUBLIC OF","TANZANIA", d$country)
d$studyid <- gsub("MRC Keneba","Keneba", d$studyid)

d <- d %>% mutate(cohort=paste0(studyid,"-",country)) %>% filter(studyid=="MAL-ED"|studyid=="Keneba", agedays < 730)



table(d$cohort, d$dataset)

p <- ggplot(d, aes(x=agedays, y=whz, group=dataset, color=dataset)) + 
  geom_smooth() +
  facet_wrap(~cohort, scales="free") + theme(legend.position = "right")
p

d %>% group_by(dataset) %>% filter(!is.na(whz)) %>% summarize(mean(whz), sd(whz), num_wast=sum(whz < (-2)))


df <- d %>% mutate(wast = 1*(whz < (-2))) %>% filter(!is.na(wast))

df2 <- df %>% filter(wast==1)
table(df2$cohort, df2$dataset)

p2 <- ggplot(df, aes(x=agedays, y=wast, group=dataset, color=dataset)) + 
  geom_smooth(method = 'loess', se = F) +
  facet_wrap(~cohort, scales="free") + theme(legend.position = "right")
p2



