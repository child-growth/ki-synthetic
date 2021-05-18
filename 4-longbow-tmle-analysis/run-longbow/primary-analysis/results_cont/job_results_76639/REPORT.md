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
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |    141|   320|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |     53|   320|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |    126|   320|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |    652|  1114|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |    297|  1114|
|Birth     |Keneba        |GAMBIA    |<162 cm      |    165|  1114|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |  11609| 12416|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |    707| 12416|
|Birth     |PROBIT        |BELARUS   |<162 cm      |    100| 12416|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |    305|   753|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |    241|   753|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |    207|   753|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |    179|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |     75|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |    155|   409|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |    884|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |    423|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |    246|  1553|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |  11140| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |    685| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |     99| 11924|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |    377|   913|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |    297|   913|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |    239|   913|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |    103|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |    114|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |    151|   368|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |    204|   460|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |     80|   460|
|24 months |COHORTS       |GUATEMALA |<162 cm      |    176|   460|
|24 months |Keneba        |GAMBIA    |>=167 cm     |    718|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |    352|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |    201|  1271|
|24 months |PROBIT        |BELARUS   |>=167 cm     |   3373|  3598|
|24 months |PROBIT        |BELARUS   |[162-167) cm |    199|  3598|
|24 months |PROBIT        |BELARUS   |<162 cm      |     26|  3598|


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


