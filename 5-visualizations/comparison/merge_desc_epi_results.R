

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
expand_scale = function(mult = 0, add = 0) {
  stopifnot(is.numeric(mult) && is.numeric(add))
  stopifnot((length(mult) %in% 1:2) && (length(add) %in% 1:2))
  
  mult <- rep(mult, length.out = 2)
  add <- rep(add, length.out = 2)
  c(mult[1], add[1], mult[2], add[2])
}

#Plot themes
theme_set(theme_ki())

syn <- readRDS(paste0(here(),"/results/desc_data_cleaned.rds")) %>% filter(analysis=="Primary")
real <- readRDS(paste0(ghapdata_dir,"real_desc_data_cleaned.rds")) %>% mutate(syntype="Real")%>% filter(analysis=="Primary")

head(syn)

df <- syn %>% filter(disease=="Stunting",age_range=="3 months", severe=="no", measure=="Prevalence", cohort=="pooled", region=="Overall", agecat=="3 months", analysis=="Primary")
head(df)
df <- real %>% filter(disease=="Stunting",age_range=="3 months", severe=="no", measure=="Prevalence", cohort=="pooled", region=="Overall", agecat=="3 months", analysis=="Primary")
head(df)
df <- syn %>% filter(disease=="Wasting",age_range=="3 months", severe=="no", measure=="Prevalence", cohort=="pooled", region=="Overall", agecat=="3 months", analysis=="Primary")
head(df)
df <- real %>% filter(disease=="Wasting",age_range=="3 months", severe=="no", measure=="Prevalence", cohort=="pooled", region=="Overall", agecat=="3 months", analysis=="Primary")
head(df)

# #TEMP!
# #Note I flipped two synthetic dataset labels. Fix here:
# syn$syntype <- as.character(syn$syntype)
# table(syn$syntype)
# syn$syntype[syn$syntype=="QI"] <- "TEMP"
# syn$syntype[syn$syntype=="FULL"] <- "QI"
# syn$syntype[syn$syntype=="TEMP"] <- "FULL"
# table(syn$syntype)


d <- bind_rows(syn, real)
#Harmonize study names
d$cohort <- gsub("IRC","Vellore Crypto",d$cohort)
d$cohort <- gsub("TANZANIA, UNITED REPUBLIC OF","Tanzania",d$cohort)
d$cohort <- gsub("TANZANIA","Tanzania",d$cohort)


d$region[d$cohort %in% c("TanzaniaChild2-Tanzania","MAL-ED-Tanzania")] <- "Africa"


table(d$cohort, d$syntype)



# 
# head(syn)
# 
# dim(syn)
# diff <- left_join(syn, real, by=c("disease","age_range","birth","severe","measure","cohort","region","agecat","analysis","country"))
# dim(diff)
# 
# head(diff)





unique(d$agecat)
d$agecat <- factor(d$agecat, levels=c(
  "Birth", "3 months","6 months","9 months","12 months","15 months","18 months",      
  "21 months","24 months","Two weeks","One month","2 months","4 months","5 months",       
  "7 months","8 months","10 months","11 months","13 months","14 months","16 months",      
  "17 months","19 months","20 months","22 months","23 months","0-3 months","3-6 months",     
  "6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months","8 days-3 months",
  "0-6 months","6-12 months","12-18 months","18-24 months" 
))

head(d)

d$nmeas.f <- clean_nmeans(d$nmeas)

# scale cohort-specific estimates
d = d %>% mutate(
  est = ifelse(disease=="Stunting"  & cohort!="pooled" & measure!="Mean LAZ",
               est*100, est),
  lb = ifelse(disease=="Stunting"  & cohort!="pooled" & measure!="Mean LAZ",
              lb*100, lb),
  ub = ifelse(disease=="Stunting"  & cohort!="pooled" & measure!="Mean LAZ",
              ub*100, ub)
)





saveRDS(d, paste0(here(),"/results/desc_data_comp_df.rds"))
