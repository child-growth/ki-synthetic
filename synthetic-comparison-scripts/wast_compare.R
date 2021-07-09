
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here(),"/results/desc_data_comp_df.rds")) %>% mutate(dataset=factor(syntype, levels=c("real","QI","BC","FULL")))


#Subset to primary analysis
d <- d %>% mutate(pooling=ifelse(cohort=="pooled" & is.na(pooling),region,pooling)) %>%
  filter(analysis=="Primary", (pooling!="country" | is.na(pooling)))

d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100

#d %>% filter(measure=="Prevalence", disease=="co-occurrence", cohort!="pooled")

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)


#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Wasting" &
    measure == "Mean WLZ" & 
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
                     limits = c(-1.5, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  facet_wrap(~dataset, ncol=2) +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right")
Z_plot

ggsave(Z_plot, file=here::here("figures/wasting/WLZ_by_region.png"), width=10, height=4)



#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot(d,
                          Disease="Wasting",
                          Measure="Prevalence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Point prevalence (95% CI)',
                          yrange=c(0,24),
                          returnData=F)


#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------

ci_plot <- ki_desc_plot(d,
                          Disease="Wasting",
                          Measure="Cumulative incidence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Point prevalence (95% CI)',
                          yrange=c(0,60),
                          returnData=F)



#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------
ci_plot_Africa <- ki_desc_plot(d,
                                 Disease="Wasting",
                                 Measure=c("Cumulative incidence"), 
                                 Birth="yes", 
                                 Severe="no", 
                                 Region="Africa",
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 yrange=c(0,60),
                                 returnData=F)



# #-------------------------------------------------------------------------------------------
# # Wasting incidence rate
# #-------------------------------------------------------------------------------------------
# 
# inc_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
#                            Cohort="pooled",
#                            xlabel="Age category",
#                            ylabel="",
#                            yrange=c(0,90),
#                            legend.pos = c(.9,.32)){
#   
#   df <- d %>% filter(
#     disease == Disease &
#       measure == Measure &
#       birth %in% Birth &
#       severe == Severe &
#       age_range %in% Age_range &
#       cohort == Cohort &
#       !is.na(region) & !is.na(agecat)
#   )
#   df <- df %>% filter(birth=="yes" | agecat=="0-3 months")
#   df <- droplevels(df)
#   
#   
#   #Keep N studies and children from only one study
#   df$nmeas.f[df$age_range!="30 days"] <- NA
#   df$nstudy.f[df$age_range!="30 days"] <- NA
#   
#   # remove N= from labels
#   df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub('N=', '', nstudy.f))
#   
#   # remove text from labels
#   df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub(' studies', '', nstudy.f))
#   
#   # Remove 'months' from x axis labels  
#   df <- df %>% arrange(agecat)
#   df$agecat <- as.character(df$agecat)
#   df$agecat <- gsub(" months", "", df$agecat)
#   df$agecat <- factor(df$agecat, levels=unique(df$agecat))
#   
#   p <- ggplot(df,aes(y=est,x=agecat)) +
#     facet_wrap(~dataset, nrow=1) +
#     geom_errorbar(aes(color=dataset, 
#                       group=interaction(birth, dataset), ymin=lb, ymax=ub), 
#                   width = 0, position = position_dodge(0.5)) +
#     geom_point(aes(shape=birth, fill=dataset, color=dataset, group=interaction(birth, dataset)
#     ), size = 2, position = position_dodge(0.5)) +
#     scale_color_manual(values=tableau11, guide = FALSE) +
#     scale_shape_manual(values = c(16, 17),
#                        name = 'Measure', 
#                        labels = c('Including wasting at birth', 'Excluding wasting at birth')) + 
#     scale_fill_manual(values=tableau11, guide = FALSE) +
#     xlab(xlabel) + ylab(ylabel) +
#     scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
#     theme(strip.text = element_text(size=20, margin = margin(t = 5))) +
#     theme(axis.text.x = element_text(margin = 
#                                        margin(t = 0, r = 0, b = 0, l = 0),
#                                      size = 10)) +
#     theme(axis.title.x = element_text(margin = 
#                                         margin(t = 25, r = 0, b = 0, l = 0),
#                                       size = 15)) +
#     theme(axis.title.y = element_text(size = 15)) +
#     ggtitle("") + guides(color = FALSE) 
#   
#   if(!is.null(yrange)){
#     p <- p + coord_cartesian(ylim=yrange)
#   }
#   
#   p <- p +  theme(legend.position = legend.pos,
#                   legend.title = element_blank(),
#                   legend.background = element_blank(),
#                   legend.box.background = element_rect(colour = "black"))
#   return(list(plot=p,data=df))
# }
# 
# 
# d <- d %>% mutate(birth=factor(birth, levels=c("yes","no"))) %>% arrange(birth)
# 
# 
# 
# inc_plot_primary <- inc_combo_plot(d,
#                                    Disease="Wasting",
#                                    Measure="Incidence rate", 
#                                    Birth=c("yes","no"), 
#                                    Severe="no", 
#                                    Age_range="3 months", 
#                                    Cohort="pooled",
#                                    xlabel="Child age, months",
#                                    ylabel='Episodes per 1000\nperson-days at risk',
#                                    yrange=c(0,7.5),
#                                    legend.pos = c(.92,.8))
# 
# 
# # define standardized plot names
# inc_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "incidence rate",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(inc_plot_primary$plot, file=paste0(here::here(),"/figures/wasting/fig-",inc_plot_name, ".png"), width=14, height=3)
# 
# saveRDS(inc_plot_primary$data, file=paste0(figdata_dir_wasting,"figdata-",inc_plot_name,".RDS"))
# saveRDS(inc_plot_primary, file=paste0(here::here(),"/figures/plot-objects/inc_plot_object.rds"))
# 
# inc_plot_primary$data %>% group_by(region) %>% summarize(min(nmeas), max(nmeas))
# 
# 
# #-------------------------------------------------------------------------------------------
# # Wasting incidence proportion
# #-------------------------------------------------------------------------------------------
# inc_plot <- ip_plot(
#   d,
#   Disease = "Wasting",
#   Measure = "Incidence proportion",
#   Birth = "yes",
#   Severe = "no",
#   Age_range = "3 months",
#   Cohort = "pooled",
#   xlabel = "Child age, months",
#   h1 = 85,
#   h2 = 90,
#   returnData = T
# )
# inc_plot
# 
# 
# # define standardized plot names
# inc_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "incidence only",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(inc_plot$plot, file=paste0(here::here(),"/figures/wasting/fig-",inc_plot_name,".png"), width=14, height=4.5)
# 
# 
# #-------------------------------------------------------------------------------------------
# # Wasting recovery
# #-------------------------------------------------------------------------------------------
# 
# rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
#                            Cohort="pooled",
#                            xlabel="Age at wasting episode onset",
#                            ylabel="",
#                            yrange=c(0,90),
#                            legend.pos = c(.9,.32),
#                            facet=T){
#   
#   df <- d %>% filter(
#     disease == Disease &
#       measure %in% Measure &
#       birth == Birth &
#       severe == Severe &
#       age_range %in% Age_range &
#       cohort == Cohort &
#       !is.na(region) & !is.na(agecat)
#   )
#   df <- droplevels(df)
#   
#   #Keep N studies and children from only one study
#   df$nmeas.f[df$age_range!="30 days"] <- NA
#   df$nstudy.f[df$age_range!="30 days"] <- NA
#   
#   # remove N= from labels
#   df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub('N=', '', nstudy.f))
#   
#   # remove text from labels
#   df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub(' studies', '', nstudy.f))
#   
#   # Remove 'months' from x axis labels  
#   df <- df %>% arrange(agecat)
#   df$agecat <- as.character(df$agecat)
#   df$agecat <- gsub(" months", "", df$agecat)
#   df$agecat <- factor(df$agecat, levels=unique(df$agecat))
#   
#   p <- ggplot(df,aes(y=est,x=agecat)) +
#     geom_errorbar(aes(color=region, 
#                       group=interaction(age_range, region), ymin=lb, ymax=ub), 
#                   width = 0, position = position_dodge(0.5)) +
#     geom_point(aes(shape=age_range, fill=region, color=region, group=interaction(age_range, region)
#     ), size = 2, position = position_dodge(0.5)) +
#     scale_color_manual(values=tableau11,
#                        guide = FALSE) +
#     scale_shape_manual(values = c(16, 17, 18),
#                        name = 'Measure', 
#                        labels = c('30 days', '60 days', '90 days')) + 
#     scale_fill_manual(values=tableau11, guide = FALSE) +
#     xlab(xlabel)+
#     ylab(ylabel) +
#     scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
#     theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
#     
#     theme(axis.text.x = element_text(margin = 
#                                        margin(t = 0, r = 0, b = 0, l = 0),
#                                      size = 10)) +
#     theme(axis.title.x = element_text(margin = 
#                                         margin(t = 25, r = 0, b = 0, l = 0),
#                                       size = 15)) +
#     theme(axis.title.y = element_text(size = 15)) +
#     
#     ggtitle("") +
#     
#     guides(color = FALSE, shape=guide_legend(ncol=3)) 
#   
#   if(!is.null(yrange)){
#     p <- p + coord_cartesian(ylim=yrange)
#   }
#   if(facet){
#     p <- p + facet_wrap(~region, nrow=1) 
#   }
#   
#   p <- p +  theme(legend.position = legend.pos,
#                   legend.title = element_blank(),
#                   legend.background = element_blank(),
#                   legend.box.background = element_rect(colour = "black"))
#   
#   return(list(plot=p,data=df))
# }
# 
# 
# 
# rec_plot <- rec_combo_plot(d,
#                            Disease="Wasting",
#                            Measure="Recovery", 
#                            Birth="yes", 
#                            Severe="no", 
#                            Age_range=c("30 days","60 days","90 days"), 
#                            Cohort="pooled",
#                            xlabel="Child age, months",
#                            ylabel='Percent recovered\n(95% CI)',
#                            yrange=c(0,100),
#                            legend.pos = c(.1,.88))
# 
# # define standardized plot names
# rec_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "recovery",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(rec_plot[[1]], file=paste0(here::here(),"/figures/wasting/fig-",rec_plot_name, ".png"), width=14, height=4.5)
# saveRDS(rec_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",rec_plot_name,".RDS"))
# 
# saveRDS(rec_plot, file=paste0(here::here(),"/figures/plot-objects/rec_plot_object.rds"))
# 
# rec_plot[[2]] %>% filter(region=="Overall") %>% subset(., select = c(measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))
# 
# 
# #Plot just the overall facet for presentation slide
# df <- d %>% filter(
#   disease == "Wasting" &
#     region == "Overall" &
#     measure == "Recovery" &
#     birth == "yes" &
#     severe == "no" &
#     age_range %in% c("30 days","60 days","90 days") &
#     cohort == "pooled" &
#     !is.na(region) & !is.na(agecat)
# )
# df <- droplevels(df)
# 
# p <- ggplot(df,aes(y=est,x=agecat)) +
#   geom_errorbar(aes(color=age_range, 
#                     group=interaction(age_range, region), ymin=lb, ymax=ub), 
#                 width = 0, position = position_dodge(0.5)) +
#   geom_point(aes(color=age_range, group=interaction(age_range, region)
#   ), size = 3, position = position_dodge(0.5)) +
#   scale_color_manual(values=tableau10[c(7,9,10)],  name = 'Measure', 
#                      labels = c('30 days', '60 days', '90 days')) +
#   xlab("Child age, months") + ylab("Percent recovered") +
#   ggtitle('Recovery within 30, 60, or 90 days of wasting onset') +
#   scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
#   theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
#   theme(axis.text.x = element_text(margin = margin(t = 0, r = 0, b = 0, l = 0),size = 10)) +
#   theme(axis.title.x = element_text(margin =  margin(t = 25, r = 0, b = 0, l = 0), size = 15)) +
#   theme(axis.title.y = element_text(size = 15)) +
#   guides(color=guide_legend(ncol=3)) +
#   coord_cartesian(ylim=c(0,80)) +
#   theme(legend.position = c(.5,.1),
#         legend.title = element_blank(),
#         legend.background = element_blank(),
#         legend.box.background = element_rect(colour = "black"))
# 
# # define standardized plot names
# rec_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "recovery",
#   population = "overall",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(p, file=paste0(here::here(),"/figures/wasting/fig-",rec_plot_name, ".png"), width=8, height=5)
# 
# saveRDS(df, file=paste0(figdata_dir_wasting,"figdata-",rec_plot_name,".RDS"))
# 
# #-------------------------------------------------------------------------------------------
# # Persistent Wasting 
# #-------------------------------------------------------------------------------------------
# 
# perswast_plot <- ki_desc_plot(d,
#                               Disease="Wasting",
#                               Measure="Persistent wasting", 
#                               Birth="yes", 
#                               Severe="no", 
#                               Age_range="6 months", 
#                               Cohort="pooled",
#                               xlabel="Child age, months",
#                               ylabel = 'Proportion (%)',
#                               yrange=c(0,20),
#                               returnData=F)
# 
# 
# # define standardized plot names
# perswast_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "persistent wasting",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(perswast_plot[[1]], file=paste0(here::here(),"/figures/wasting/fig-",perswast_plot_name, ".png"), width=8, height=5)
# 
# saveRDS(perswast_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",perswast_plot_name,".RDS"))
# 
# 
# 
# 
# 
# #-------------------------------------------------------------------------------------------
# # Prevalence of co-occurrence
# #-------------------------------------------------------------------------------------------
# co_plot <- ki_desc_plot(d,
#                         Disease="co-occurrence",
#                         Measure="Prevalence", 
#                         Birth="yes", 
#                         Severe="no", 
#                         Age_range="3 months", 
#                         Cohort="pooled",
#                         xlabel="Child age, months",
#                         ylabel='Point prevalence of concurrent\nwasting and stunting (95% CI)',
#                         yrange=c(0,11),
#                         returnData=F)
# 
# # define standardized plot names
# co_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "co-occurrence of wasting and stunting",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# 
# #-------------------------------------------------------------------------------------------
# # Underweight prevalence 
# #-------------------------------------------------------------------------------------------
# underweight_plot <- ki_desc_plot(d,
#                                  Disease="Underweight",
#                                  Measure="Prevalence", 
#                                  Birth="yes", 
#                                  Severe="no", 
#                                  Age_range="3 months", 
#                                  Cohort="pooled",
#                                  xlabel="Child age, months",
#                                  ylabel='Point prevalence (95% CI)',
#                                  returnData = T,
#                                  yrange=c(0,45))
# 
# 
# 
# # define standardized plot names
# underweight_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "underweight",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )



#-------------------------------------------------------------------------------------------
# Severe Wasting prevalence
#-------------------------------------------------------------------------------------------

sevwast_plot <- ki_desc_plot(d,
                             Disease="Wasting",
                             Measure="Prevalence", 
                             Birth="yes", 
                             Severe="yes", 
                             Age_range="3 months", 
                             Cohort="pooled",
                             xlabel="Child age, months",
                             ylabel='Point prevalence (95% CI)',
                             yrange=c(0,13),
                             returnData=F)

save(Z_plot,  prev_plot, ci_plot, ci_plot_Africa, sevwast_plot, file=paste0(fig_dir, "wasting/fig-comparisons.Rdata"))

