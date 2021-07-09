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
d <- readRDS(paste0(here(),"/results/desc_data_comp_df.rds")) %>% mutate(dataset=factor(syntype, levels=c("real","QI","BC","FULL")))




Disease="Stunting"
Measure="Mean LAZ"
Birth="yes"
Severe="no"
Age_range="3 months"
Cohort="pooled"
xlabel="Child age, months"
ylabel='Mean LAZ (95% CI)'
h1=69
h2=72
returnData=T



#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" & 
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)
df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 


Z_plot <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-3, 0)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  facet_wrap(~dataset) +
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="right")
Z_plot

ggsave(Z_plot, file=here::here("figures/stunting/LAZ_by_region.png"), width=10, height=4)


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


prev_plot_pooled <- ki_desc_plot(d,
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
prev_plot_pooled$plot




#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe 
#-------------------------------------------------------------------------------------------


prev_plot_sev <- ki_desc_plot(d,
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


ci_plot <- ki_desc_plot(d,
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
ggsave(ci_plot$plot, file=paste0(fig_dir, "stunting/fig-ci.png"), width=14, height=4)

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion 
# excluding birth
#-------------------------------------------------------------------------------------------




save(Z_plot, prev_plot_pooled, prev_plot, prev_plot_sev, ci_plot, file=paste0(fig_dir, "stunting/fig-comparisons.Rdata"))

