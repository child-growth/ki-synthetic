

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#--------------------------------------------
# Read in synthetic data file
#--------------------------------------------

d1 <- readRDS(paste0(ghapdata_dir, "Partially Synthetic Data - All BC Synthesized.rds")) %>% mutate(syntype="BC")
d1 <- d1 %>%
  mutate(vagbrth=factor(vagbrth),
         hdlvry=factor(hdlvry))
d2 <- readRDS(paste0(ghapdata_dir, "Complete Cohorts Fully Synthetic Data v2.rds")) %>% mutate(syntype="QI")
d3 <- readRDS(paste0(ghapdata_dir, "Partially Synthetic Data - All QI Synthesized.rds"))  %>% mutate(syntype="FULL")

class(d1$single)
class(d2$single)
class(d3$single)

colnames(d1)
d1 <- d1 %>%
  mutate(vagbrth=factor(vagbrth),
         hdlvry=factor(hdlvry),
         brthmon=factor(brthmon),
         earlybf=factor(earlybf),
         predexfd6=factor(predexfd6),
         single=factor(single),
         impsan=factor(impsan),
         safeh2o=factor(safeh2o),
         cleanck=factor(cleanck),
         impfloor=factor(impfloor),
         trth2o=factor(trth2o),
         dead=factor(dead),
         brthmon=factor(brthmon),
         hdlvry=factor(hdlvry),
         hdlvry=factor(hdlvry),
         hdlvry=factor(hdlvry),
         hdlvry=factor(hdlvry),
         hdlvry=factor(hdlvry))
d3 <- d3 %>% mutate( brthmon=factor(brthmon),
                     dead=factor(dead),
                     single=factor(single))


d <- bind_rows(d1,d2,d3)


summary(d$haz)

head(d)

d$studyid <- gsub(" Trial","",d$studyid)
d$studyid <- gsub(" Study","",d$studyid)
unique(d$studyid)

                                                                    
        
d <- d %>% mutate(
  studyid = case_when(
    studyid=="MRC Keneba" ~ "Keneba",
    studyid=="PROBIT Study" ~ "PROBIT",
    studyid=="INCAP Nutrition Supplementation Longitudinal" ~ "COHORTS",
    studyid=="Vellore Crypto Study" ~ "IRC",
    studyid=="Tanzania Child 2" ~ "TanzaniaChild2",
    studyid=="Vitamin A Trial" ~ "Vitamin A",
    studyid=="Food Suppl RCT " ~ "SAS-FoodSuppl",
    studyid=="Optimal Infant Feeding" ~ "SAS-CompFeed",
    studyid=="New Delhi Birth Cohort" ~ "COHORTS",
    studyid=="NIH Cryptosporidium" ~ "NIH-Crypto",
    studyid=="Vitamin A" ~ "Vitamin A",
    studyid=="Burkina Faso Zinc trial" ~ "Burkina Faso Zn",
    studyid=="The Cebu Longitudinal Health and Nutrition Survey" ~ "COHORTS",
    studyid=="Lungwena Child Nutrition RCT" ~ "LCNI-5",
    studyid=="PROVIDE RCT" ~ "PROVIDE",
    studyid=="CMC Birth Cohort, Vellore" ~ "CMC-V-BCS-2002",
    studyid=="Growth Monitoring" ~ "GMS-Nepal",
    studyid=="Biomarkers for EE" ~ "EE",
    studyid=="CONTENT" ~ "CONTENT",
    studyid=="NIH Birth Cohort" ~ "NIH-Birth",
    studyid=="Resp. Pathogens" ~ "ResPak",
    studyid=="Bovine Serum RCT" ~ "Guatemala BSC",
    studyid=="JiVitA-3 Trial" ~ "JiVitA-3",
    studyid=="JiVitA-4 Trial" ~ "JiVitA-4",
    studyid=="Food Suppl RCT" ~ "SAS-FoodSuppl",
    studyid=="Optimal Infant Feeding" ~ "SAS-CompFeed",
    studyid=="Lungwena Child Nutrition RCT" ~ "LCNI-5",
    studyid==studyid ~ studyid
  )
)

unique(d$studyid)
table(d$studyid)



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

d$tr[is.na(d$tr)] <- ""

table(d$studyid, d$tr)

saveRDS(d, paste0(ghapdata_dir, "ki-synthetic-dataset.rds"))






