
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
table(d$syntype)
table(d$agecat)
save(d,file="/data/KI/synthetic-data/st_meanZ_rf.Rdata") 

load("/data/KI/synthetic-data/wast_meanZ_rf.Rdata") 
d<-d%>% filter(agecat=="24 months") %>% droplevels() #%>% filter(studyid=="MAL-ED", syntype=="BC")
table(d$syntype)
table(d$agecat)
save(d,file="/data/KI/synthetic-data/wast_meanZ_rf.Rdata") 


#specify analyses
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#run TMLE
run_ki_tmle(enumerated_analyses, results_folder="cont", overwrite = F)


