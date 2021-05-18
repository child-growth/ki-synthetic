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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid       |country   |fhtcm        | ever_sstunted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|-------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |             0|    133|   582|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |             1|    123|   582|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |             0|     57|   582|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |             1|     44|   582|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |             0|    114|   582|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |             1|    111|   582|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |             0|    942|  2145|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |             1|    264|  2145|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |             0|    472|  2145|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |             1|    119|  2145|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |             0|    267|  2145|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |             1|     81|  2145|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |             0|  11481| 12610|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |             1|    308| 12610|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |             0|    690| 12610|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |             1|     30| 12610|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |             0|    100| 12610|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |             1|      1| 12610|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |             0|    293|  1053|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |             1|    145|  1053|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |             0|    231|  1053|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |             1|    111|  1053|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |             0|    178|  1053|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |             1|     95|  1053|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |             0|     63|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |             1|     51|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |             0|     68|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |             1|     55|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |             0|     81|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |             1|     87|   405|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |             0|    189|   471|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |             1|     21|   471|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |             0|     70|   471|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |             1|     10|   471|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |             0|    159|   471|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |             1|     22|   471|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |             0|    924|  1831|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |             1|    117|  1831|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |             0|    441|  1831|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |             1|     56|  1831|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |             0|    253|  1831|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |             1|     40|  1831|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |             0|  11675| 12610|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |             1|    114| 12610|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |             0|    708| 12610|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |             1|     12| 12610|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |             0|    101| 12610|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |             1|      0| 12610|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |             0|    383|  1051|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |             1|     54|  1051|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |             0|    289|  1051|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |             1|     53|  1051|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |             0|    233|  1051|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |             1|     39|  1051|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |             0|    105|   403|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |             1|      9|   403|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |             0|    109|   403|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |             1|     14|   403|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |             0|    143|   403|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |             1|     23|   403|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS





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


