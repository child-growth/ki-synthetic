rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# Thanks for sharing these results Andrew! Overall these results are quite encouraging. 
#The pattern of having the fully synthetic dataset more closely matching the real data for adjusted 
#models compared to unadjusted model is a trend we???ve also seen before.
# Regarding the partially synthetic datasets: I???m not sure whether the baseline and QI only datasets 
#are set up appropriately in your analysis. In terms of how the datasets are created, I can clarify the 
#process a bit more. For each partially synthetic dataset, a subset of variables are synthesized. Each 
#synthetic record is then matched to a real record, which is where the values for the remaining variables 
#come from. In both partially synthetic datasets, variables that may be used to re-identify the participants 
#are synthesized, ensuring a low disclosure risk for the partially synthetic data. It???s possible we might be 
#able to improve the performance of the partially synthetic datasets on the risk factor analysis if we expand 
#the matching scheme as it???s currently focused on quasi-identifiers.

# For the QI dataset, the following variables were synthesized:
QI_syn_cov <-  c("country", "arm", "sex",  "brthyr", "brthmon", "brthweek",  "W_mage", "mage", "W_mhtcm", "mhtcm", "W_mwtkg", "mwtkg",
"W_mbmi",  "mbmi", "W_meducyrs", "meducyrs", "single", "W_fage", "fage", "W_fhtcm", "fhtcm", "W_feducyrs", "feducyrs",
"hhwealth_quart", "dead")

# For the BC dataset, the following variables were synthesized:
BC_syn_cov <-  c( "country", "measurefreq", "arm", "sex", "W_gagebrth", "gagebrth", "vagbrth", "hdlvry", "brthyr", "brthmon", "brthweek",
"earlybf", "predexfd6", "W_parity", "parity", "W_mage", "mage", "W_mhtcm", "mhtcm", "W_mwtkg", "mwtkg", "W_mbmi",
"mbmi", "W_meducyrs", "meducyrs", "single", "W_fage", "fage", "W_fhtcm", "fhtcm", "W_feducyrs", "feducyrs",
"hhwealth_quart", "hfoodsec", "impsan", "safeh2o", "trth2o", "cleanck", "impfloor", "W_nrooms", "nrooms",  "W_nhh",
"nhh", "W_nchldlt5", "nchldlt5", "W_perdiar6", "perdiar6", "W_perdiar24", "perdiar24", "dead", "agedth")

# If there are perturbations in other variables, I???m not sure how to explain that without investigating further. 
#Please let me know if it would be helpful to have a call to discuss in more detail




#load synthetic datasets
d <- readRDS(paste0(ghapdata_dir, "ki-synthetic-dataset.rds")) %>% filter(syntype!="Full")
QI_full <- d %>% filter(syntype=="QI")
BC_full <- d %>% filter(syntype=="BC")
real_full <- d %>% filter(syntype=="Real")
table(d$syntype)
head(d)



#single synthetic observation per child
QI <- QI_full %>% group_by(cohortid, subjid) %>% slice(1) %>% ungroup()
BC <- BC_full %>% group_by(cohortid, subjid) %>% slice(1) %>% ungroup()
real <- real_full %>% group_by(cohortid, subjid) %>% slice(1) %>% ungroup()

table(QI$subjid)
table(real$subjid)
QI$subjid[1]
#real$subjid <- paste0("syn-",real$cohortid,"-",real$subjid)
dim(QI)
QI_comp <- full_join(QI, real, by = c("cohortid","subjid"))
BC_comp <- full_join(BC, real, by = c("cohortid","subjid"))
dim(QI_comp)
dim(BC_comp)

#make sure the non-synthesized variables match
for(i in colnames(QI)[!colnames(QI) %in% QI_syn_cov]){
  try(X <- QI_comp[,paste0(i,".x")] %>% pull(1) %>% as.character())
  try(Y <- QI_comp[,paste0(i,".y")] %>% pull(1) %>% as.character())
  
  cat("\n",i,"\n")
  if(length(unique(X))<20){
    try(print(table(X)-table(Y)))
  }else{
    try(print(summary(as.numeric(X))-summary(as.numeric(Y))))
  }
  # X <- X %>% filter(!is.na(nrooms.x))
  # Y <- Y %>% filter(!is.na(nrooms.y))
  # 
  # diff_vec <- (X==Y) 
  # diff_vec <- diff_vec[!is.na(diff_vec)]
  # table(X==Y)
  
}

for(i in QI_syn_cov){
  try(X <- QI_comp[,paste0(i,".x")] %>% pull(1) %>% as.character())
  try(Y <- QI_comp[,paste0(i,".y")] %>% pull(1) %>% as.character())
  
  cat("\n",i,"\n")
  if(length(unique(X))<20){
    print(table(X)-table(Y))
  }else{
    print(summary(as.numeric(X))-summary(as.numeric(Y)))
  }
  # X <- X %>% filter(!is.na(nrooms.x))
  # Y <- Y %>% filter(!is.na(nrooms.y))
  # 
  # diff_vec <- (X==Y) 
  # diff_vec <- diff_vec[!is.na(diff_vec)]
  # table(X==Y)
  
}



for(i in BC_syn_cov){
  try(X <- BC_comp[,paste0(i,".x")] %>% pull(1) %>% as.character())
  try(Y <- BC_comp[,paste0(i,".y")] %>% pull(1) %>% as.character())
  
  cat("\n",i,"\n")
  if(length(unique(X))<20){
    print(table(X)-table(Y))
  }else{
    print(summary(as.numeric(X))-summary(as.numeric(Y)))
  }
}






