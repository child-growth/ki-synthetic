
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)

Sys.getenv("RSTUDIO_PANDOC")
Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio-server/bin/pandoc")
rmarkdown::pandoc_available()
rmarkdown::pandoc_version()

# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

#load analyses
load(here("4-longbow-tmle-analysis","analysis specification","adjusted_continuous.rdata"))

#Drop growth velocity
dim(analyses)
analyses <- analyses %>% filter(Y=="haz" | Y=="whz")
dim(analyses)

#analyses <- analyses[5:6,]


#only analyze 24 months for speed
load("/data/KI/synthetic-data/st_meanZ_rf.Rdata") 
d<-d%>% filter(agecat=="24 months") %>% droplevels() #%>% filter(studyid=="MAL-ED", syntype=="BC")
table(d$syntype, is.na(d$id))
table(d$agecat)
save(d,file="/data/KI/synthetic-data/st_meanZ_rf.Rdata") 

load("/data/KI/synthetic-data/wast_meanZ_rf.Rdata") 
d<-d%>% filter(agecat=="24 months") %>% droplevels() #%>% filter(studyid=="MAL-ED", syntype=="BC")
table(d$syntype)
table(d$syntype, is.na(d$id))

table(d$agecat)
save(d,file="/data/KI/synthetic-data/wast_meanZ_rf.Rdata") 


#specify analyses
analyses <- analyses[1,]
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="cont_temp", overwrite = T)

# results_folder="cont_temp"
# overwrite = F
# skip_failed=F
# rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")
#   
# Sys.getenv("RSTUDIO_PANDOC")
# Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio-server/bin/pandoc")
# rmarkdown::pandoc_available()
# rmarkdown::pandoc_version()
# 
# 
# base_directory = paste0(ghapdata_dir,"/tmle/",results_folder,"/")
# for(i in 1:length(enumerated_analyses)){
#   cat(i," out of ",length(enumerated_analyses),"\n")
#   output_directory = paste0(base_directory,
#                             enumerated_analyses[[i]]$nodes$A,"_",
#                             enumerated_analyses[[i]]$nodes$Y)
#   enumerated_analyses[[i]]$output_directory <- output_directory
#   cat(i,"; ", enumerated_analyses[[i]]$nodes$A,"; ", enumerated_analyses[[i]]$nodes$Y,"; res exists: ",file.exists(paste0(output_directory,"/results.rdata")),"\n")
#   
#   if(overwrite==TRUE | !file.exists(paste0(output_directory,"/results.rdata"))){
#     time_run <- "fail"
#     # try(time_run<-system.time(rmarkdown::render(rmd_filename,
#     #                                             params = (enumerated_analyses[[i]]),
#     #                                             output_file = file.path( output_directory, "/REPORT.html"),
#     #                                             output_dir = output_directory,
#     #                                             quiet=TRUE,
#     #                                             output_format = rmarkdown::html_document(self_contained = TRUE,
#     #                                                                                      keep_md = F),
#     #                                             knit_root_dir = output_directory)))
#     cat("\nruntime: ",time_run,"\n")
#   }
# }
# 
# # # # load and concatenate the rdata from the jobs
# # results <- load_batch_results("results.rdata", results_folder = base_directory)
# # obs_counts <- load_batch_results("obs_counts.rdata", results_folder = base_directory)
# # 
# # print(head(results))
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# params = (enumerated_analyses[[i]])
# output_file = file.path( output_directory, "/REPORT.html")
# output_dir = output_directory
# quiet=TRUE
# output_format = rmarkdown::html_document(self_contained = TRUE, keep_md = F)
# knit_root_dir = output_directory