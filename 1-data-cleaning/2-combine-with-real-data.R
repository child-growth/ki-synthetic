

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


syn <- synfull %>% subset(., select=c(studyid, country, measurefreq, region, subjid, agedays, haz, waz, whz, sex, lencm,wtkg)) %>% mutate(dataset="Synthetic") 
real <- real %>% subset(., select=c(studyid, country, measurefreq, region, subjid, agedays, haz, waz, whz, sex, lencm,wtkg)) %>% mutate(dataset="Original")

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
library(zscorer)
library(anthro)


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



head(syn)
head(real)

syn <- syn %>% filter(studyid=="MAL-ED", country=="BANGLADESH")
real <- real %>% filter(studyid=="MAL-ED", country=="BANGLADESH") %>% filter(agedays<=730)


syn_recalc <- syn %>% subset(., select=c(studyid, country, subjid, measurefreq, region, agedays, sex, lencm,wtkg)) %>% mutate(dataset="Recalculated") 
syn_recalc$haz <- who_lenhtcm2zscore(syn_recalc$agedays, syn_recalc$lencm, sex = syn_recalc$sex)
syn_recalc$waz <- who_wtkg2zscore(syn_recalc$agedays, syn_recalc$wtkg, sex = syn_recalc$sex)
syn_recalc$whz <- who_value2zscore(x=syn_recalc$lencm, y=syn_recalc$wtkg, x_var = "lencm",  y_var = "wtkg", sex = syn_recalc$sex)
syn_recalc$haz[abs(syn_recalc$haz) > 6] <- NA
syn_recalc$waz[syn_recalc$waz > -6 & syn_recalc$waz < 5] <- NA
syn_recalc$whz[abs(syn_recalc$whz) > 5] <- NA

syn$haz[abs(syn$haz) > 6] <- NA
syn$waz[syn$waz > -6 & syn_recalc$waz < 5] <- NA
syn$whz[abs(syn$whz) > 5] <- NA

real$haz[abs(real$haz) > 6] <- NA
real$waz[real$waz > -6 & syn_recalc$waz < 5] <- NA
real$whz[abs(real$whz) > 5] <- NA


df <- bind_rows(syn, real, syn_recalc)


p <- ggplot(df, aes(x=agedays, y=haz, group=dataset, color=dataset)) + 
  geom_smooth() + theme(legend.position = "right")
p
p <- ggplot(df, aes(x=agedays, y=whz, group=dataset, color=dataset)) + 
  geom_smooth() + theme(legend.position = "right")
p


p <- ggplot(df, aes(x=agedays, y=wtkg, group=dataset, color=dataset)) + 
  geom_smooth() + theme(legend.position = "right")
p



syn$haz_recalc <- who_lenhtcm2zscore(syn$agedays, syn$lencm, sex = syn$sex)
head(syn)

syn$sex2 <- ifelse(syn$sex=="Male",1,2)

syn <- addWGSR(data = syn, sex = "sex2", firstPart = "lencm", secondPart = "agedays", index = "lfa")
syn <- addWGSR(data = syn, sex = "sex2", firstPart = "lencm", secondPart = "agedays", index = "hfa")
head(syn)



syn$waz_recalc <- who_wtkg2zscore(syn$agedays, syn$wtkg, sex = syn$sex)
syn <- addWGSR(data = syn, sex = "sex2", firstPart = "wtkg", secondPart = "agedays", index = "wfa")
head(syn)

p <- ggplot(syn, aes(x=agedays, y=hfaz, group=sex, color=sex)) + 
  geom_smooth() + theme(legend.position = "right")
p



res <- with(
  syn,
  anthro_zscores(
    sex = sex2, age = agedays,
    weight = wtkg, lenhei = lencm
  )
)


#sanity-check different package calculations
d <- data.frame(sex=c("Male","Female"),sex2=c(1,2), sex3=c(2,1), agedays=1, wtkg=3, lencm=45)
res <- with(
  d,
  anthro_zscores(
    sex = sex2, age = agedays,
    weight = wtkg, lenhei = lencm
  )
)

res2 <- with(
  d,
  anthro_zscores(
    sex = sex3, age = agedays,
    weight = wtkg, lenhei = lencm
  )
)
res2

d$waz_recalc <- who_wtkg2zscore(d$agedays, d$wtkg, sex = d$sex)
d <- addWGSR(data = d, sex = "sex2", firstPart = "wtkg", secondPart = "agedays", index = "wfa")
d2 <- addWGSR(data = d, sex = "sex3", firstPart = "wtkg", secondPart = "agedays", index = "wfa")
res
res2
d
d2