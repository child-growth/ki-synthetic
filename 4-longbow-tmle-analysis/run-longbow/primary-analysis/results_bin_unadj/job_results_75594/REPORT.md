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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid       |country   |fhtcm        | wast_rec90d| n_cell|    n|
|:-----------|:-------------|:---------|:------------|-----------:|------:|----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |           0|     31|  149|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |           1|     28|  149|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |           0|     16|  149|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |           1|     11|  149|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |           0|     34|  149|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |           1|     29|  149|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |           0|    309| 1318|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |           1|    446| 1318|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |           0|    142| 1318|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |           1|    226| 1318|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |           0|     68| 1318|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |           1|    127| 1318|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |           0|    352| 3616|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |           1|   3024| 3616|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |           0|     27| 3616|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |           1|    181| 3616|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |           0|      4| 3616|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |           1|     28| 3616|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           0|    129|  547|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           1|     92|  547|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           0|    107|  547|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           1|     62|  547|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           0|     92|  547|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           1|     65|  547|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     65|  227|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|      4|  227|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|     63|  227|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|      4|  227|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           0|     86|  227|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           1|      5|  227|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |           0|     10|   86|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |           1|     26|   86|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |           0|      5|   86|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |           1|     10|   86|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |           0|      8|   86|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |           1|     27|   86|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |           0|     78|  532|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |           1|    228|  532|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |           0|     26|  532|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |           1|    118|  532|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |           0|     18|  532|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |           1|     64|  532|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |           0|    278| 3502|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |           1|   2995| 3502|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |           0|     18| 3502|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |           1|    181| 3502|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |           0|      3| 3502|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |           1|     27| 3502|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |           0|     42|  231|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |           1|     51|  231|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |           0|     37|  231|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |           1|     33|  231|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |           0|     28|  231|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |           1|     40|  231|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     25|   74|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|      0|   74|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|     21|   74|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|      0|   74|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |           0|     28|   74|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |           1|      0|   74|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |           0|     21|   63|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |           1|      2|   63|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |           0|     11|   63|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |           1|      1|   63|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |           0|     26|   63|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |           1|      2|   63|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |           0|    231|  786|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |           1|    218|  786|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |           0|    116|  786|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |           1|    108|  786|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |           0|     50|  786|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |           1|     63|  786|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |           0|     74|  114|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |           1|     29|  114|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |           0|      9|  114|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |           1|      0|  114|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |           0|      1|  114|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |           1|      1|  114|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           0|     87|  316|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           1|     41|  316|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           0|     70|  316|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           1|     29|  316|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           0|     64|  316|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           1|     25|  316|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     40|  153|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|      4|  153|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|     42|  153|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|      4|  153|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           0|     58|  153|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           1|      5|  153|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





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


