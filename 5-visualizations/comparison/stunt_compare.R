##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting incidence, 
# and stunting prevalence

# inputs: desc_data_cleaned.Rdata

# outputs: 
# fig-laz-2-mean-overall_region--allage-primary.png
# fig-stunt-2-prev-overall_region--allage-primary.png
# fig-stunt-3-prev-overall_region--allage-primary.png
# fig-stunt-2-inc-overall_region--allage-primary.png
# fig-stunt-3-inc-overall_region--allage-primary.png

# figdata-laz-2-mean-overall_region--allage-primary.RDS
# figdata-stunt-2-prev-overall_region--allage-primary.RDS
# figdata-stunt-3-prev-overall_region--allage-primary.RDS
# figdata-stunt-2-inc-overall_region--allage-primary.RDS
# figdata-stunt-3-inc-overall_region--allage-primary.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
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

#Load data
syn <- readRDS(paste0(here::here(),"/results/shiny_desc_data_stunting_objects.rds"))

orig <- readRDS("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/shiny_desc_data_stunting_objects.rds")


#merge
head(orig)
head(syn)
dim(orig)
dim(syn)
# d <- inner_join(syn, orig, by = c("disease","age_range","birth","severe","cohort","region","method.used","agecat"))
# dim(d)
# table(d$cohort)

orig <- orig %>% mutate(dataset="Original")
syn <- syn %>% mutate(dataset="Synthetic")
d <- bind_rows(orig, syn)

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



Disease="Stunting"
Measure="Prevalence" 
Birth="yes" 
Severe="no"
Age_range="3 months" 
Cohort="pooled"
xlabel="Child age, months"
ylabel='Point Prevalence (95% CI)'
h1=69
h2=72
returnData=T

#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months
#-------------------------------------------------------------------------------------------
prev_plot <- ki_cohort_plot(d,
                          Disease="Stunting",
                          Measure="Prevalence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Point Prevalence (95% CI)',
                          h1=69,
                          h2=72,
                          returnData=T)
prev_plot$plot



# save plot and underlying data
ggsave(prev_plot$plot, file=paste0(fig_dir, "stunting/fig-prev.png"), width=14, height=4)





#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe 
#-------------------------------------------------------------------------------------------
prev_plot_sev <- ki_cohort_plot(d,
                              Disease="Stunting",
                              Measure="Prevalence", 
                              Birth="yes", 
                              Severe="yes", 
                              Age_range="3 months", 
                              Cohort="pooled",
                              xlabel="Child age, months",
                              ylabel='Point Prevalence (95% CI)',
                              h1=69,
                              h2=72,
                              returnData=T)
prev_plot_sev$plot



# save plot and underlying data
ggsave(prev_plot_sev$plot, file=paste0(fig_dir, "stunting/fig-sev-prev.png"), width=14, height=4)


#-------------------------------------------------------------------------------------------
# incidence proportion
#-------------------------------------------------------------------------------------------
ip_plot <- ki_cohort_plot(d,
                            Disease="Stunting",
                            Measure="Incidence_proportion", 
                            Birth="yes", 
                            Severe="no", 
                            Age_range="3 months", 
                            Cohort="pooled",
                            xlabel="Child age, months",
                            ylabel='Incidence proportion (95% CI)',
                            h1=69,
                            h2=72,
                            returnData=T)
ip_plot$plot



# save plot and underlying data
ggsave(ip_plot$plot, file=paste0(fig_dir, "stunting/fig-ip.png"), width=14, height=4)


ci_plot <- ki_cohort_plot(d,
                          Disease="Stunting",
                          Measure="Cumulative incidence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Cumulative incidence (95% CI)',
                          h1=69,
                          h2=72,
                          returnData=T)
ci_plot$plot



# save plot and underlying data
ggsave(ip_plot$plot, file=paste0(fig_dir, "stunting/fig-ip.png"), width=14, height=4)

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion 
# excluding birth
#-------------------------------------------------------------------------------------------


# # get N's for figure caption
# inc_n = d %>%
#   filter(disease == "Stunting" & 
#            (measure == "Cumulative incidence" | measure== "Incidence proportion") & 
#            age_range == "3 months" &
#            cohort == "pooled" &
#            severe == "no") %>% 
#   group_by(region) %>% 
#   summarise(min_study = min(nstudies, na.rm=TRUE), 
#             max_study = max(nstudies, na.rm=TRUE),
#             min_n = min(nmeas, na.rm=TRUE), 
#             max_n = max(nmeas, na.rm=TRUE))
# 
# # define standardized plot names
# ci_inc_plot_nobirth_name = create_name(
#   outcome = "stunting",
#   cutoff = 2,
#   measure = "incidence",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "sensitivity analysis excluding birth"
# )
# 
# # save plot and underlying data
# ggsave(ci_inc_plot_nobirth$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_nobirth_name,".png"), width=14, height=4)
# 
# 
# 






#Z-scores


Z_plot <- ki_cohort_plot(d,
                          Disease="Stunting",
                          Measure="Mean LAZ", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Mean LAZ (95% CI)',
                          h1=69,
                          h2=72,
                          returnData=T)
Z_plot$plot

ggsave(Z_plot$plot, file=paste0(fig_dir, "stunting/fig-Zscore.png"), width=14, height=4)

save(Z_plot, prev_plot, prev_plot_sev, ci_plot, ip_plot, file=paste0(fig_dir, "stunting/fig-comparisons.Rdata"))
