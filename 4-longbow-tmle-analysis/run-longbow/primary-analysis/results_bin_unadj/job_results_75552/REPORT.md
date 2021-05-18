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

**Outcome Variable:** swasted

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

|agecat    |studyid       |country   |fhtcm        | swasted| n_cell|     n|
|:---------|:-------------|:---------|:------------|-------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |       0|    133|   320|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |       1|      8|   320|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |       0|     48|   320|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |       1|      5|   320|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |       0|    117|   320|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |       1|      9|   320|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |       0|    601|  1114|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |       1|     51|  1114|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |       0|    283|  1114|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |       1|     14|  1114|
|Birth     |Keneba        |GAMBIA    |<162 cm      |       0|    152|  1114|
|Birth     |Keneba        |GAMBIA    |<162 cm      |       1|     13|  1114|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |       0|  10857| 12416|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |       1|    752| 12416|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |       0|    650| 12416|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |       1|     57| 12416|
|Birth     |PROBIT        |BELARUS   |<162 cm      |       0|     92| 12416|
|Birth     |PROBIT        |BELARUS   |<162 cm      |       1|      8| 12416|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |       0|    301|   753|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |       1|      4|   753|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |       0|    236|   753|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |       1|      5|   753|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |       0|    201|   753|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |       1|      6|   753|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |       0|    179|   409|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |       1|      0|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |       0|     73|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |       1|      2|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |       0|    154|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |       1|      1|   409|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |       0|    869|  1553|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |       1|     15|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |       0|    417|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |       1|      6|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |       0|    242|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |       1|      4|  1553|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |       0|  11134| 11924|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |       1|      6| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |       0|    685| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |       1|      0| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |       0|     99| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |       1|      0| 11924|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |       0|    365|   913|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |       1|     12|   913|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |       0|    284|   913|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |       1|     13|   913|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |       0|    233|   913|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |       1|      6|   913|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |       0|    100|   368|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |       1|      3|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |       0|    106|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |       1|      8|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |       0|    146|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |       1|      5|   368|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |       0|    203|   460|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |       1|      1|   460|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |       0|     80|   460|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |       1|      0|   460|
|24 months |COHORTS       |GUATEMALA |<162 cm      |       0|    176|   460|
|24 months |COHORTS       |GUATEMALA |<162 cm      |       1|      0|   460|
|24 months |Keneba        |GAMBIA    |>=167 cm     |       0|    707|  1271|
|24 months |Keneba        |GAMBIA    |>=167 cm     |       1|     11|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |       0|    345|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |       1|      7|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |       0|    198|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |       1|      3|  1271|
|24 months |PROBIT        |BELARUS   |>=167 cm     |       0|   3367|  3598|
|24 months |PROBIT        |BELARUS   |>=167 cm     |       1|      6|  3598|
|24 months |PROBIT        |BELARUS   |[162-167) cm |       0|    199|  3598|
|24 months |PROBIT        |BELARUS   |[162-167) cm |       1|      0|  3598|
|24 months |PROBIT        |BELARUS   |<162 cm      |       0|     25|  3598|
|24 months |PROBIT        |BELARUS   |<162 cm      |       1|      1|  3598|


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

* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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


