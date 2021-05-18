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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country   |fhtcm        | pers_wast| n_cell|     n|
|:-----------|:-------------|:---------|:------------|---------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |         0|    193|   455|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |         1|      4|   455|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |         0|     82|   455|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |         1|      4|   455|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |         0|    161|   455|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |         1|     11|   455|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |         0|    968|  1813|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |         1|     62|  1813|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |         0|    469|  1813|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |         1|     27|  1813|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |         0|    268|  1813|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |         1|     19|  1813|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |         0|  11682| 12583|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |         1|     80| 12583|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |         0|    715| 12583|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |         1|      5| 12583|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |         0|     99| 12583|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |         1|      2| 12583|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         0|    368|   942|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         1|     25|   942|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         0|    277|   942|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         1|     28|   942|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         0|    220|   942|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         1|     24|   942|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         0|     84|   367|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         1|     15|   367|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         0|     92|   367|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         1|     23|   367|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         0|    128|   367|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         1|     25|   367|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |         0|    820|  1511|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |         1|     31|  1511|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |         0|    415|  1511|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |         1|      9|  1511|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |         0|    228|  1511|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |         1|      8|  1511|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |         0|  10265| 11967|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |         1|    916| 11967|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |         0|    633| 11967|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |         1|     54| 11967|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |         0|     87| 11967|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |         1|     12| 11967|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |         0|    193|   455|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |         1|      4|   455|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |         0|     82|   455|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |         1|      4|   455|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |         0|    161|   455|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |         1|     11|   455|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |         0|    968|  1813|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |         1|     62|  1813|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |         0|    469|  1813|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |         1|     27|  1813|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |         0|    268|  1813|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |         1|     19|  1813|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |         0|  11682| 12583|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |         1|     80| 12583|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |         0|    715| 12583|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |         1|      5| 12583|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |         0|     99| 12583|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |         1|      2| 12583|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         0|    368|   942|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         1|     25|   942|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         0|    277|   942|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         1|     28|   942|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         0|    220|   942|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         1|     24|   942|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         0|     84|   367|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         1|     15|   367|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         0|     92|   367|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         1|     23|   367|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         0|    128|   367|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         1|     25|   367|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


