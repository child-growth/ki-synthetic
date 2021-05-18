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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |fage    | ever_sstunted| n_cell|     n|
|:-----------|:-------------|:------------|:-------|-------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |             0|    223|  1335|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |             1|    188|  1335|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |             0|    170|  1335|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |             1|    158|  1335|
|0-24 months |COHORTS       |GUATEMALA    |<32     |             0|    321|  1335|
|0-24 months |COHORTS       |GUATEMALA    |<32     |             1|    275|  1335|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |             0|    270|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |             1|    140|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |             0|    356|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |             1|    180|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |             0|   1260|  2939|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |             1|    733|  2939|
|0-24 months |LCNI-5        |MALAWI       |>=38    |             0|     18|    50|
|0-24 months |LCNI-5        |MALAWI       |>=38    |             1|      1|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |             0|      6|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |             1|      2|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |             0|     16|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |             1|      7|    50|
|0-24 months |MAL-ED        |INDIA        |>=38    |             0|     46|   160|
|0-24 months |MAL-ED        |INDIA        |>=38    |             1|     15|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |             0|     37|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |             1|     16|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |             0|     39|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |             1|      7|   160|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |             0|     68|   133|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |             1|     16|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |             0|     23|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |             1|      7|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |             0|     16|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |             1|      3|   133|
|0-24 months |MAL-ED        |PERU         |>=38    |             0|     35|   107|
|0-24 months |MAL-ED        |PERU         |>=38    |             1|     12|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |             0|     22|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |             1|      5|   107|
|0-24 months |MAL-ED        |PERU         |<32     |             0|     30|   107|
|0-24 months |MAL-ED        |PERU         |<32     |             1|      3|   107|
|0-24 months |MAL-ED        |NEPAL        |>=38    |             0|     37|    87|
|0-24 months |MAL-ED        |NEPAL        |>=38    |             1|      2|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |             0|     28|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |             1|      3|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |             0|     15|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |             1|      2|    87|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |             0|     33|    69|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |             1|      3|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |             0|     14|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |             1|      1|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |             0|     15|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |             1|      3|    69|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |             0|     24|    97|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |             1|     29|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |             0|     13|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |             1|     13|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |             0|     11|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |             1|      7|    97|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |             0|     60|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |             1|     19|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |             0|     20|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |             1|      8|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |             0|      5|   116|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |             1|      4|   116|
|0-24 months |PROBIT        |BELARUS      |>=38    |             0|    753| 16268|
|0-24 months |PROBIT        |BELARUS      |>=38    |             1|     26| 16268|
|0-24 months |PROBIT        |BELARUS      |[32-38) |             0|   2468| 16268|
|0-24 months |PROBIT        |BELARUS      |[32-38) |             1|     77| 16268|
|0-24 months |PROBIT        |BELARUS      |<32     |             0|  12600| 16268|
|0-24 months |PROBIT        |BELARUS      |<32     |             1|    344| 16268|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |             0|     47|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |             1|     18|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |             0|    139|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |             1|     62|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |             0|    840|  1533|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |             1|    427|  1533|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |             0|     37|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |             1|     38|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |             0|     52|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |             1|     44|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |             0|    128|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |             1|    119|   418|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |             0|    289|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |             1|     33|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |             0|    241|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |             1|     21|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |             0|    430|  1065|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |             1|     51|  1065|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |             0|    386|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |             1|     24|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |             0|    502|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |             1|     34|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |             0|   1865|  2939|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |             1|    128|  2939|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |             0|      9|    19|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |             1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |             0|      2|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |             1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |             0|      6|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |             1|      2|    19|
|0-6 months  |MAL-ED        |INDIA        |>=38    |             0|     56|   160|
|0-6 months  |MAL-ED        |INDIA        |>=38    |             1|      5|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |             0|     48|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |             1|      5|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |             0|     42|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |             1|      4|   160|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |             0|     79|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |             1|      5|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |             0|     27|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |             1|      3|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |             0|     18|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |             1|      1|   133|
|0-6 months  |MAL-ED        |PERU         |>=38    |             0|     39|   107|
|0-6 months  |MAL-ED        |PERU         |>=38    |             1|      8|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |             0|     24|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |             1|      3|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |             0|     32|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |             1|      1|   107|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |             0|     38|    87|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |             1|      1|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |             0|     31|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |             1|      0|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |             0|     15|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |             1|      2|    87|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |             0|     33|    69|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |             1|      3|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |             0|     15|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |             1|      0|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |             0|     15|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |             1|      3|    69|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |             0|     45|    97|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |             1|      8|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |             0|     24|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |             1|      2|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |             0|     17|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |             1|      1|    97|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |             0|     70|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |             1|      9|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |             0|     22|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |             1|      6|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |             0|      8|   116|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |             1|      1|   116|
|0-6 months  |PROBIT        |BELARUS      |>=38    |             0|    770| 16263|
|0-6 months  |PROBIT        |BELARUS      |>=38    |             1|      9| 16263|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |             0|   2505| 16263|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |             1|     40| 16263|
|0-6 months  |PROBIT        |BELARUS      |<32     |             0|  12810| 16263|
|0-6 months  |PROBIT        |BELARUS      |<32     |             1|    129| 16263|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |             0|     54|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |             1|     11|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |             0|    171|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |             1|     30|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |             0|   1076|  1530|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |             1|    188|  1530|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |             0|     59|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |             1|     15|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |             0|     87|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |             1|      9|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |             0|    220|   416|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |             1|     26|   416|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA





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


