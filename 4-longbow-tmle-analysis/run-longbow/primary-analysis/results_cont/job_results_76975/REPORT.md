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

**Outcome Variable:** haz

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
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |    135|   328|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |     64|   328|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |    129|   328|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |   1089|  1543|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |    271|  1543|
|Birth     |Keneba        |GAMBIA    |<162 cm      |    183|  1543|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |  11304| 11933|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |    490| 11933|
|Birth     |PROBIT        |BELARUS   |<162 cm      |    139| 11933|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |    351|   827|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |    274|   827|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |    202|   827|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |    166|   392|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |     82|   392|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |    144|   392|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |   1463|  2089|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |    374|  2089|
|6 months  |Keneba        |GAMBIA    |<162 cm      |    252|  2089|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |  11205| 11875|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |    522| 11875|
|6 months  |PROBIT        |BELARUS   |<162 cm      |    148| 11875|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |    385|   894|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |    296|   894|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |    213|   894|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |    102|   369|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |    108|   369|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |    159|   369|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |    189|   440|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |     87|   440|
|24 months |COHORTS       |GUATEMALA |<162 cm      |    164|   440|
|24 months |Keneba        |GAMBIA    |>=167 cm     |   1180|  1725|
|24 months |Keneba        |GAMBIA    |[162-167) cm |    332|  1725|
|24 months |Keneba        |GAMBIA    |<162 cm      |    213|  1725|
|24 months |PROBIT        |BELARUS   |>=167 cm     |   3324|  3498|
|24 months |PROBIT        |BELARUS   |[162-167) cm |    142|  3498|
|24 months |PROBIT        |BELARUS   |<162 cm      |     32|  3498|


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


