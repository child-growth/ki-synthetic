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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid       |country   |fhtcm        | ever_swasted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            0|    240|   572|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            1|     11|   572|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            0|     91|   572|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            1|     10|   572|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            0|    203|   572|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            1|     17|   572|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            0|    976|  2147|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            1|    231|  2147|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            0|    494|  2147|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            1|     98|  2147|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            0|    296|  2147|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            1|     52|  2147|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            0|  10782| 12610|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            1|   1007| 12610|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            0|    644| 12610|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            1|     76| 12610|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            0|     90| 12610|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            1|     11| 12610|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    374|  1037|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            1|     59|  1037|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            0|    292|  1037|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            1|     44|  1037|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            0|    225|  1037|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            1|     43|  1037|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     99|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     15|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|    100|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|     23|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            0|    139|   405|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            1|     29|   405|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |            0|    194|   459|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |            1|      9|   459|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |            0|     74|   459|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |            1|      6|   459|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |            0|    166|   459|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |            1|     10|   459|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |            0|    931|  1830|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |            1|    109|  1830|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |            0|    466|  1830|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |            1|     31|  1830|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |            0|    266|  1830|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |            1|     27|  1830|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |            0|  10792| 12610|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |            1|    997| 12610|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |            0|    644| 12610|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |            1|     76| 12610|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |            0|     90| 12610|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |            1|     11| 12610|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    406|  1031|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |            1|     25|  1031|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |            0|    312|  1031|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |            1|     22|  1031|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |            0|    249|  1031|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |            1|     17|  1031|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|    110|   405|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|      4|   405|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|    117|   405|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|      6|   405|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |            0|    160|   405|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |            1|      8|   405|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |            0|    227|   520|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |            1|      2|   520|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |            0|     91|   520|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |            1|      4|   520|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |            0|    189|   520|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |            1|      7|   520|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |            0|    995|  2009|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |            1|    134|  2009|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |            0|    487|  2009|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |            1|     69|  2009|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |            0|    298|  2009|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |            1|     26|  2009|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |            0|  11759| 12590|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |            1|     10| 12590|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |            0|    720| 12590|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |            1|      0| 12590|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |            0|    101| 12590|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |            1|      0| 12590|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    359|   957|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            1|     39|   957|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            0|    289|   957|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            1|     23|   957|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            0|    219|   957|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            1|     28|   957|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     98|   390|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     11|   390|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|    103|   390|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|     17|   390|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            0|    140|   390|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            1|     21|   390|


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

* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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


