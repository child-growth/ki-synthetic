

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in synthetic data file
#--------------------------------------------

synfull <- readRDS(paste0(ghapdata_dir, "Synthetic-cohorts-full-v1.rds"))


#--------------------------------------------
# Read in real data 
#--------------------------------------------

real <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-manuscript-dataset.rds")


syn <- synfull %>% subset(., select=c(studyid, country, measurefreq, region, agedays, haz, waz, whz)) %>% mutate(dataset="Synthetic") 
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


#compare synthetic versus real versus recalculated Z-scores
library(growthstandards)

head(synfull)
syn_recalc <- synfull %>% subset(., select=c(studyid, country, measurefreq, region, agedays, sex, lencm,wtkg)) %>% mutate(dataset="Recalculated") 
syn_recalc$haz <- who_lenhtcm2zscore(syn_recalc$agedays, syn_recalc$lencm, sex = syn_recalc$sex)
syn_recalc$waz <- who_wtkg2zscore(syn_recalc$agedays, syn_recalc$wtkg, sex = syn_recalc$sex)
syn_recalc$whz <- who_value2zscore(x=syn_recalc$lencm, y=syn_recalc$wtkg, x_var = "lencm",  y_var = "wtkg", sex = syn_recalc$sex)
syn_recalc$haz[abs(syn_recalc$haz) > 6] <- NA
syn_recalc$waz[syn_recalc$waz > -6 & syn_recalc$waz < 5] <- NA
syn_recalc$whz[abs(syn_recalc$whz) > 5] <- NA


df <- bind_rows(syn, real, syn_recalc)
df$country <- gsub("TANZANIA, UNITED REPUBLIC OF","TANZANIA", df$country)
df$studyid <- gsub("MRC Keneba","Keneba", df$studyid)
df <- df %>% mutate(cohort=paste0(studyid,"-",country)) %>% filter(studyid=="MAL-ED"|studyid=="Keneba", agedays < 730)

p <- ggplot(df, aes(x=agedays, y=whz, group=dataset, color=dataset)) + 
  geom_smooth() +
  facet_wrap(~cohort, scales="free") + theme(legend.position = "right")


saveRDS(p, file=paste0(fig_dir, "plot-objects/fig-WLZ-comp.RDS"))

p <- ggplot(df, aes(x=agedays, y=haz, group=dataset, color=dataset)) + 
  geom_smooth() +
  facet_wrap(~cohort, scales="free") + theme(legend.position = "right")

saveRDS(p, file=paste0(fig_dir, "plot-objects/fig-LAZ-comp.RDS"))

