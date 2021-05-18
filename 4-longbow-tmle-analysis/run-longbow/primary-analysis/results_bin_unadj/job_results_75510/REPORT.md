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

**Outcome Variable:** wasted

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

|agecat    |studyid       |country   |fhtcm        | wasted| n_cell|     n|
|:---------|:-------------|:---------|:------------|------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |      0|    108|   320|
|Birth     |COHORTS       |GUATEMALA |>=167 cm     |      1|     33|   320|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |      0|     40|   320|
|Birth     |COHORTS       |GUATEMALA |[162-167) cm |      1|     13|   320|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |      0|     92|   320|
|Birth     |COHORTS       |GUATEMALA |<162 cm      |      1|     34|   320|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |      0|    496|  1114|
|Birth     |Keneba        |GAMBIA    |>=167 cm     |      1|    156|  1114|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |      0|    219|  1114|
|Birth     |Keneba        |GAMBIA    |[162-167) cm |      1|     78|  1114|
|Birth     |Keneba        |GAMBIA    |<162 cm      |      0|    116|  1114|
|Birth     |Keneba        |GAMBIA    |<162 cm      |      1|     49|  1114|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |      0|   9177| 12416|
|Birth     |PROBIT        |BELARUS   |>=167 cm     |      1|   2432| 12416|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |      0|    557| 12416|
|Birth     |PROBIT        |BELARUS   |[162-167) cm |      1|    150| 12416|
|Birth     |PROBIT        |BELARUS   |<162 cm      |      0|     73| 12416|
|Birth     |PROBIT        |BELARUS   |<162 cm      |      1|     27| 12416|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |      0|    271|   753|
|Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |      1|     34|   753|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |      0|    223|   753|
|Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |      1|     18|   753|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |      0|    175|   753|
|Birth     |SAS-CompFeed  |INDIA     |<162 cm      |      1|     32|   753|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |      0|    174|   409|
|6 months  |COHORTS       |GUATEMALA |>=167 cm     |      1|      5|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |      0|     71|   409|
|6 months  |COHORTS       |GUATEMALA |[162-167) cm |      1|      4|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |      0|    153|   409|
|6 months  |COHORTS       |GUATEMALA |<162 cm      |      1|      2|   409|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |      0|    834|  1553|
|6 months  |Keneba        |GAMBIA    |>=167 cm     |      1|     50|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |      0|    396|  1553|
|6 months  |Keneba        |GAMBIA    |[162-167) cm |      1|     27|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |      0|    234|  1553|
|6 months  |Keneba        |GAMBIA    |<162 cm      |      1|     12|  1553|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |      0|  11068| 11924|
|6 months  |PROBIT        |BELARUS   |>=167 cm     |      1|     72| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |      0|    680| 11924|
|6 months  |PROBIT        |BELARUS   |[162-167) cm |      1|      5| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |      0|     98| 11924|
|6 months  |PROBIT        |BELARUS   |<162 cm      |      1|      1| 11924|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |      0|    332|   913|
|6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |      1|     45|   913|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |      0|    258|   913|
|6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |      1|     39|   913|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |      0|    209|   913|
|6 months  |SAS-CompFeed  |INDIA     |<162 cm      |      1|     30|   913|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |      0|     82|   368|
|6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |      1|     21|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |      0|     92|   368|
|6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |      1|     22|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |      0|    129|   368|
|6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |      1|     22|   368|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |      0|    194|   460|
|24 months |COHORTS       |GUATEMALA |>=167 cm     |      1|     10|   460|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |      0|     78|   460|
|24 months |COHORTS       |GUATEMALA |[162-167) cm |      1|      2|   460|
|24 months |COHORTS       |GUATEMALA |<162 cm      |      0|    169|   460|
|24 months |COHORTS       |GUATEMALA |<162 cm      |      1|      7|   460|
|24 months |Keneba        |GAMBIA    |>=167 cm     |      0|    635|  1271|
|24 months |Keneba        |GAMBIA    |>=167 cm     |      1|     83|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |      0|    301|  1271|
|24 months |Keneba        |GAMBIA    |[162-167) cm |      1|     51|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |      0|    181|  1271|
|24 months |Keneba        |GAMBIA    |<162 cm      |      1|     20|  1271|
|24 months |PROBIT        |BELARUS   |>=167 cm     |      0|   3348|  3598|
|24 months |PROBIT        |BELARUS   |>=167 cm     |      1|     25|  3598|
|24 months |PROBIT        |BELARUS   |[162-167) cm |      0|    197|  3598|
|24 months |PROBIT        |BELARUS   |[162-167) cm |      1|      2|  3598|
|24 months |PROBIT        |BELARUS   |<162 cm      |      0|     25|  3598|
|24 months |PROBIT        |BELARUS   |<162 cm      |      1|      1|  3598|


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

* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
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


