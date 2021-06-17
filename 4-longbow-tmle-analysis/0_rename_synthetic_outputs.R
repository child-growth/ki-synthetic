


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


# Zscores_BC <-readRDS(here("/results/rf results/raw longbow results/results_cont_2021-05-11.RDS")) %>% mutate(syntype="BC")
# Zscores_QI <-readRDS(here("/results/rf results/raw longbow results/results_cont_2021-06-03.RDS")) %>% mutate(syntype="QI")
# Zscores_full <-readRDS(here("/results/rf results/raw longbow results/results_cont_2021-06-03.RDS")) %>% mutate(syntype="Full")
Zscores_syn <- readRDS(here("/results/rf results/raw longbow results/results_cont_2021-06-16.RDS")) 
Zscores_real <- readRDS("/data/KI/ki-manuscript-output/results/rf results/longbow results/results_cont.RDS") %>% mutate(syntype="Real")

Zscores_syn_unadj <- readRDS( "/home/andrew.mertens/ki-synthetic/results/rf results/raw longbow results/results_cont_unadj_2021-06-17.RDS") 
Zscores_real_unadj <- readRDS("/data/KI/ki-manuscript-output/results/rf results/longbow results/results_cont_unadj.RDS") %>% mutate(syntype="Real")



#Note I flipped two synthetic dataset labels. Fix here:
Zscores_syn$syntype <- as.character(Zscores_syn$syntype)
table(Zscores_syn$syntype)
Zscores_syn$syntype[Zscores_syn$syntype=="QI"] <- "TEMP"
Zscores_syn$syntype[Zscores_syn$syntype=="FULL"] <- "QI"
Zscores_syn$syntype[Zscores_syn$syntype=="TEMP"] <- "FULL"
table(Zscores_syn$syntype)

Zscores <- bind_rows(Zscores_syn, Zscores_real, Zscores_syn_unadj, Zscores_real_unadj)

#Drop new and old cohorts based on updates from peer reviews
Zscores <- Zscores %>% group_by(studyid, country) %>% mutate(Ndatasets=length(unique(syntype)), has_real=max(syntype=="Real"))
table(Zscores$Ndatasets)
Zscores <- Zscores %>% filter(Ndatasets>1,has_real==1)

d <- Zscores %>% filter(intervention_variable!="perdiar24" & intervention_variable!="perdiar6" & !(intervention_variable=="fhtcm" & outcome_variable=="haz"))

#drop EE gestational age
dim(d)
d <- d %>% filter(!(studyid=="EE" & intervention_variable=="gagebrth"))
dim(d)

#drop water treatment
d <- d %>% filter(intervention_variable!="trth2o",intervention_variable!="safeh20")

#temp drop hdlvry and vagbrth
d <- d %>% filter(intervention_variable!="hdlvry",intervention_variable!="vagbrth")

table(d$intervention_variable, d$baseline_level)

#Drop duplicated (unadjusted sex and month variables)
d1 <- d %>% filter(adjustment_set=="unadjusted")
d2 <- d %>% filter(adjustment_set!="unadjusted")

dim(d1)
dim(d2)
d1 <- d1 %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", "syntype",
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
d2 <- d2 %>% distinct_at(., .vars=c("agecat", "studyid", "country", "strata_label", "intervention_variable", "syntype",
                                    "outcome_variable","type","parameter","intervention_level",  "baseline_level"),
                         .keep_all=TRUE)
dim(d1)
dim(d2)
d <- bind_rows(d1, d2)

#Mark region
d <- mark_region(d)

#Mark continious 
unique(d$outcome_variable)
d$continuous <- ifelse(d$outcome_variable %in% c("haz","whz","y_rate_haz","y_rate_len","y_rate_wtkg"), 1, 0)

#Drop non-included risk factors (treat h20, with very little variance, month and birth month, and secondry breastfeeding indicators)
d <- d %>% filter(!(intervention_variable %in% c("enstunt","trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","brthmon","month")) )

# #----------------------------------------------------------
# # Merge in Ns
# #----------------------------------------------------------
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/stunting_rf_Ns_sub.rdata")
# N_sums_bin <- N_sums %>% mutate(continuous = 0)
# load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/continuous_rf_Ns_sub.rdata")
# N_sums_cont <- N_sums %>% mutate(continuous = 1)
# N_sums <- rbind(N_sums_bin, N_sums_cont)
# 
# 
# 
# dim(d)
# dim(N_sums)
# d <- left_join(d, N_sums, by = c("agecat", "outcome_variable", "intervention_variable", "intervention_level", "continuous"))
# head(d)
# dim(d)
# table(is.na(d$n[d$continuous==0 & d$type=="PAR"]))
# table(is.na(d$n[d$continuous==1 & d$type=="PAR" & d$agecat=="24 months"]))
# 
# 
# df <- d[d$continuous==1 & d$type=="PAR" & d$agecat=="24 months",]
# df[is.na(df$n) & !is.na(df$estimate),]
# 
# #drop estimates from rare cells
# load(here("results/stunting_rf_Ns.rdata"))
# rare_strat <- Ndf_Ystrat %>% group_by(studyid, country, agecat, outcome_variable, intervention_variable) %>%
#   mutate(min_n_cell =  min(n_cell)) %>%
#   select(studyid, country, agecat, outcome_variable, intervention_variable, min_n_cell)
# 
# d <- left_join(d, rare_strat, by = c("studyid", "country", "agecat", "outcome_variable", "intervention_variable")) %>% distinct(.)
# d <- d %>% filter(is.na(min_n_cell) | min_n_cell>=5)

d$n <- 1
d$n_cell <- 1


#Harmonize agecat names for variables excluding faltering at birth
d$agecat <- as.character(d$agecat)
d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Keep only primary breastfeeding exposure
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast", "birthlen")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("whz","wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )



dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable == "birthwt" & agecat=="Birth" & outcome_variable %in% wasting_outcomevars))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars))
dim(d)

dsub <- d %>% filter(agecat=="Birth") 
table(dsub$intervention_variable, dsub$outcome_variable)


#Seperate adjusted and unadjusted
#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Seperate unadjusted estimates
d_adj <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="rain_quartile") & adjusted==0))
d_unadj <- d %>% filter(adjusted==0)


saveRDS(d_adj, paste0(here::here(),"/results/rf results/full_RF_results.rds"))
saveRDS(d_unadj, paste0(here::here(),"/results/rf results/full_RF_unadj_results.rds"))






