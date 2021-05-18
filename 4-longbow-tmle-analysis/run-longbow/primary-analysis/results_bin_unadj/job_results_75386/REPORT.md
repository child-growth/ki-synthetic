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

**Outcome Variable:** sstunted

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

|agecat    |studyid       |country   |fhtcm        | sstunted| n_cell|     n|
|:---------|:-------------|:---------|:------------|--------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |        0|    162|   368|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |        1|      2|   368|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |        0|     59|   368|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |        1|      0|   368|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |        0|    141|   368|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |        1|      4|   368|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |        0|    668|  1174|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |        1|     15|  1174|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |        0|    309|  1174|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |        1|      4|  1174|
|Birth     |Keneba        |GAMBIA    |<162 cm      |        0|    173|  1174|
|Birth     |Keneba        |GAMBIA    |<162 cm      |        1|      5|  1174|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |        0|  11667| 12482|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |        1|      3| 12482|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |        0|    710| 12482|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |        1|      2| 12482|
|Birth     |PROBIT        |BELARUS   |<162 cm      |        0|    100| 12482|
|Birth     |PROBIT        |BELARUS   |<162 cm      |        1|      0| 12482|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |        0|    319|   853|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |        1|     22|   853|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |        0|    257|   853|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |        1|     18|   853|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |        0|    218|   853|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |        1|     19|   853|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |        0|    156|   409|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |        1|     23|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |        0|     62|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |        1|     13|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |        0|    132|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |        1|     23|   409|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |        0|    849|  1553|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |        1|     35|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |        0|    408|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |        1|     15|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |        0|    235|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |        1|     11|  1553|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |        0|  11026| 11924|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |        1|    114| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |        0|    675| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |        1|     10| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |        0|     99| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |        1|      0| 11924|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |        0|    347|   912|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |        1|     30|   912|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |        0|    268|   912|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |        1|     29|   912|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |        0|    217|   912|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |        1|     21|   912|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |        0|     92|   368|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |        1|     11|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |        0|     98|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |        1|     16|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |        0|    128|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |        1|     23|   368|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |        0|     96|   456|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |        1|    108|   456|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |        0|     45|   456|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |        1|     33|   456|
|24 months |COHORTS       |GUATEMALA |<162 cm      |        0|     87|   456|
|24 months |COHORTS       |GUATEMALA |<162 cm      |        1|     87|   456|
|24 months |Keneba        |GAMBIA    |>=167 cm     |        0|    656|  1271|
|24 months |Keneba        |GAMBIA    |>=167 cm     |        1|     63|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |        0|    322|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |        1|     30|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |        0|    182|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |        1|     18|  1271|
|24 months |PROBIT        |BELARUS   |>=167 cm     |        0|   3384|  3660|
|24 months |PROBIT        |BELARUS   |>=167 cm     |        1|     48|  3660|
|24 months |PROBIT        |BELARUS   |[162-167) cm |        0|    194|  3660|
|24 months |PROBIT        |BELARUS   |[162-167) cm |        1|      8|  3660|
|24 months |PROBIT        |BELARUS   |<162 cm      |        0|     25|  3660|
|24 months |PROBIT        |BELARUS   |<162 cm      |        1|      1|  3660|


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
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROBIT, country: BELARUS





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


