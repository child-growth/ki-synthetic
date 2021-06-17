



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)





#Load data
ate <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results.rds"))
head(ate)
ate$syntype <- factor(ate$syntype)
ate$syntype <- relevel(ate$syntype, ref="Real")
levels(ate$syntype)
df <- ate %>% group_by( intervention_variable,agecat, intervention_level, baseline_level, outcome_variable, region ) %>%
  mutate(diff=ATE-first(ATE)) %>% filter(syntype!="Real") 
head(df)

df %>% group_by(syntype) %>%
  summarise(mean(diff))
  
df <- df %>% filter(syntype!="BC")

df <- df %>% mutate(syntype=factor(syntype, levels=c("Real","QI","BC","FULL")))

p <- ggplot(df, aes(x=diff, fill=syntype, group=syntype)) +
  geom_density() + facet_wrap(~syntype) + 
  xlab("Difference in ATE from real-data estimates") +
  scale_fill_manual(values=cbbPalette[-1]) +
  scale_color_manual(values=cbbPalette[-1])



saveRDS(p, file=paste0(here::here(), "/results/rf results/ate_diff_object.RDS"))




