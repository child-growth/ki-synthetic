---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_arm
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country   |fhtcm        | n_cell|     n|
|:---------|:-------------|:---------|:------------|------:|-----:|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |    125|   291|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |     55|   291|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |    111|   291|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |   1038|  1466|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |    260|  1466|
|Birth     |Keneba        |GAMBIA    |<162 cm      |    168|  1466|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |  11245| 11867|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |    483| 11867|
|Birth     |PROBIT        |BELARUS   |<162 cm      |    139| 11867|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |    303|   728|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |    241|   728|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |    184|   728|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |    167|   395|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |     82|   395|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |    146|   395|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |   1464|  2089|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |    373|  2089|
|6 months  |Keneba        |GAMBIA    |<162 cm      |    252|  2089|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |  11201| 11872|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |    523| 11872|
|6 months  |PROBIT        |BELARUS   |<162 cm      |    148| 11872|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |    385|   891|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |    294|   891|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |    212|   891|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |    102|   369|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |    107|   369|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |    160|   369|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |    192|   447|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |     88|   447|
|24 months |COHORTS       |GUATEMALA |<162 cm      |    167|   447|
|24 months |Keneba        |GAMBIA    |>=167 cm     |   1182|  1726|
|24 months |Keneba        |GAMBIA    |[162-167) cm |    331|  1726|
|24 months |Keneba        |GAMBIA    |<162 cm      |    213|  1726|
|24 months |PROBIT        |BELARUS   |>=167 cm     |   3266|  3438|
|24 months |PROBIT        |BELARUS   |[162-167) cm |    140|  3438|
|24 months |PROBIT        |BELARUS   |<162 cm      |     32|  3438|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA







```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


