

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in synthetic data file
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "Synthetic-cohorts-initial.rds"))

head(d)

unique(d$studyid)

d <- d %>% mutate(
  studyid = case_when(
    studyid=="JiVitA-4 Trial" ~ "JiVitA-4",
    studyid=="Food Suppl RCT" ~ "SAS-FoodSuppl",
    studyid=="Optimal Infant Feeding" ~ "SAS-CompFeed",
    studyid=="Lungwena Child Nutrition RCT" ~ "LCNI-5"
  )
                                 
)


#code tr treatment variable
d$tr <- NA

d$tr[d$studyid=="Serrinha-VitA" & d$arm=="Placebo"] <- "Control"
d$tr[d$studyid=="Serrinha-VitA" & d$arm=="Vitamin A"] <- "VitA"

d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya")] <- "Other"
d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya") & (d$arm=="Control" | d$arm=="Passive Control")] <- "Control"
d$tr[(d$studyid=="WASH-Bangladesh" | d$studyid=="WASH-Kenya") & (d$arm=="Nutrition" | d$arm=="Nutrition + WSH")] <- "LNS"

d$tr[d$studyid=="AgaKhanUniv" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="AgaKhanUniv" & d$arm=="Intervention"] <- "Maternal"

d$tr[d$studyid=="EU" & d$arm=="Placebo"] <- "Control"
d$tr[d$studyid=="EU" & d$arm=="Zinc"] <- "Zinc"

d$tr[d$studyid=="VITAMIN-A" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="VITAMIN-A" & d$arm=="Vitamin A"] <- "VitA"

d$tr[d$studyid=="Vitamin-B12" ] <- "Other"
d$tr[d$studyid=="Vitamin-B12" & d$arm=="Placebo"] <- "Control"

d$tr[d$studyid=="ZnMort" & d$arm=="IFA"] <- "Control"
d$tr[d$studyid=="ZnMort" & d$arm=="Zinc+IFA"] <- "Zinc"

d$tr[d$studyid=="SAS-CompFeed" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="SAS-CompFeed" & (d$arm=="Intervention"|d$arm=="")] <- "Other"

d$tr[d$studyid=="SAS-FoodSuppl" ] <- "Other"
d$tr[d$studyid=="SAS-FoodSuppl" & d$arm=="No intervention"] <- "Control"

d$tr[d$studyid=="PROVIDE" ] <- "Other"
d$tr[d$studyid=="PROVIDE" & d$arm=="No Rotarix + No IPV (175)"] <- "Control"

d$tr[d$studyid=="TanzaniaChild2" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="TanzaniaChild2" & d$arm=="Multivitamin Alone"] <- "Other"
d$tr[d$studyid=="TanzaniaChild2" & (d$arm=="Zinc Alone" | d$arm=="Zinc + Multivitamin")] <- "Zinc"

d$tr[d$studyid=="Burkina Faso Zn" ] <- "Zinc"
d$tr[d$studyid=="Burkina Faso Zn" & d$arm=="Control (no Zinc)"] <- "Control"

d$tr[d$studyid=="Guatemala BSC" ] <- "Other"
d$tr[d$studyid=="Guatemala BSC" & (d$arm=="WPC"|d$arm=="MNT + WPC")] <- "Control"

d$tr[d$studyid=="iLiNS-Zinc" ] <- "LNS"
d$tr[d$studyid=="iLiNS-Zinc" & d$arm=="e.Control"] <- "Control"

#Create secondary dataset for Zinc+LNS vs LNS contrast
iLiNS_Zinc_df <- d[d$studyid=="iLiNS-Zinc" & d$arm!="e.Control", ]
iLiNS_Zinc_df$tr <- "Zinc"
iLiNS_Zinc_df$tr[iLiNS_Zinc_df$arm=="a.LNS-Zn0"] <- "Control"
iLiNS_Zinc_df$studyid <- "iLiNS-Zinc_ZvLNS"

d$tr[d$studyid=="PROBIT" ] <- "Maternal"
d$tr[d$studyid=="PROBIT" & d$arm=="Control group"] <- "Control"

d$tr[d$studyid=="ZVITAMBO" ] <- "VitA"
d$tr[d$studyid=="ZVITAMBO" & d$arm=="Placebo nippled + Placebo Oval"] <- "Control"


d$tr[d$studyid=="COHORTS" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="COHORTS" & d$arm=="Intervention"] <- "Other"

d$tr[d$studyid=="iLiNS-DOSE" & d$arm=="Control"] <- "Control"
d$tr[d$studyid=="iLiNS-DOSE" & d$arm!="Control"] <- "LNS"

d$tr[d$studyid=="iLiNS-DYAD-M" & d$arm=="Iron and folic acid supplementation"] <- "Control"
d$tr[d$studyid=="iLiNS-DYAD-M" & d$arm!="Iron and folic acid supplementation"] <- "Maternal"


iLiNS_DYADM_df <- d[d$studyid=="iLiNS-DYAD-M" & d$arm!="Multiple micronutrient supplementation", ]
iLiNS_DYADM_df$tr <- "Control"
iLiNS_DYADM_df$tr[iLiNS_DYADM_df$arm!="Iron and folic acid supplementation"] <- "LNS"
iLiNS_DYADM_df$studyid <- "iLiNS_DYADM_LNS"

d$tr[d$studyid=="LCNI-5"& d$arm=="Standard(Control)"] <- "Control"
d$tr[d$studyid=="LCNI-5"& (d$arm=="Milk FS"|d$arm=="Soy FS")] <- "LNS"
d$tr[d$studyid=="LCNI-5"& d$arm=="Likuni Phala"] <- "Other"

d$tr[d$studyid=="JiVitA-3" & d$arm=="Iron Folic Acid"] <- "Control"
d$tr[d$studyid=="JiVitA-3" & d$arm=="Multiple Micronutrients"] <- "Maternal"

d$tr[d$studyid=="JiVitA-4"] <- "Other"
d$tr[d$studyid=="JiVitA-4" & d$arm=="CFC"] <- "Control"
d$tr[d$studyid=="JiVitA-4" & d$arm=="Plumpy Doz"] <- "LNS"


saveRDS(d, paste0(ghapdata_dir, "ki-synthetic-dataset.rds"))



