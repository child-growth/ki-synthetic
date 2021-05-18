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

**Outcome Variable:** stunted

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

|agecat    |studyid       |country   |fhtcm        | stunted| n_cell|     n|
|:---------|:-------------|:---------|:------------|-------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |       0|    156|   368|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |       1|      8|   368|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |       0|     56|   368|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |       1|      3|   368|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |       0|    135|   368|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |       1|     10|   368|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |       0|    649|  1174|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |       1|     34|  1174|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |       0|    294|  1174|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |       1|     19|  1174|
|Birth     |Keneba        |GAMBIA    |<162 cm      |       0|    167|  1174|
|Birth     |Keneba        |GAMBIA    |<162 cm      |       1|     11|  1174|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |       0|  11644| 12482|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |       1|     26| 12482|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |       0|    709| 12482|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |       1|      3| 12482|
|Birth     |PROBIT        |BELARUS   |<162 cm      |       0|    100| 12482|
|Birth     |PROBIT        |BELARUS   |<162 cm      |       1|      0| 12482|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |       0|    241|   853|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |       1|    100|   853|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |       0|    199|   853|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |       1|     76|   853|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |       0|    172|   853|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |       1|     65|   853|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |       0|    100|   409|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |       1|     79|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |       0|     34|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |       1|     41|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |       0|     96|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |       1|     59|   409|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |       0|    750|  1553|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |       1|    134|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |       0|    358|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |       1|     65|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |       0|    207|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |       1|     39|  1553|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |       0|  10743| 11924|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |       1|    397| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |       0|    657| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |       1|     28| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |       0|     96| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |       1|      3| 11924|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |       0|    273|   912|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |       1|    104|   912|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |       0|    209|   912|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |       1|     88|   912|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |       0|    161|   912|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |       1|     77|   912|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |       0|     59|   368|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |       1|     44|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |       0|     71|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |       1|     43|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |       0|     81|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |       1|     70|   368|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |       0|     39|   456|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |       1|    165|   456|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |       0|     17|   456|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |       1|     61|   456|
|24 months |COHORTS       |GUATEMALA |<162 cm      |       0|     32|   456|
|24 months |COHORTS       |GUATEMALA |<162 cm      |       1|    142|   456|
|24 months |Keneba        |GAMBIA    |>=167 cm     |       0|    470|  1271|
|24 months |Keneba        |GAMBIA    |>=167 cm     |       1|    249|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |       0|    215|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |       1|    137|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |       0|    131|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |       1|     69|  1271|
|24 months |PROBIT        |BELARUS   |>=167 cm     |       0|   3216|  3660|
|24 months |PROBIT        |BELARUS   |>=167 cm     |       1|    216|  3660|
|24 months |PROBIT        |BELARUS   |[162-167) cm |       0|    179|  3660|
|24 months |PROBIT        |BELARUS   |[162-167) cm |       1|     23|  3660|
|24 months |PROBIT        |BELARUS   |<162 cm      |       0|     23|  3660|
|24 months |PROBIT        |BELARUS   |<162 cm      |       1|      3|  3660|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROBIT, country: BELARUS





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


