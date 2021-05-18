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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country    |nhh       | ever_sstunted| n_cell|   n|
|:-----------|:--------------|:----------|:---------|-------------:|------:|---:|
|0-24 months |LCNI-5         |MALAWI     |3 or less |             0|    200| 826|
|0-24 months |LCNI-5         |MALAWI     |3 or less |             1|     52| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |             0|    254| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |             1|     62| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |             0|    139| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |             1|     38| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |             0|     60| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |             1|     21| 826|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |             0|     71| 629|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |             1|     33| 629|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |             0|    194| 629|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |             1|     94| 629|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |             0|    104| 629|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |             1|     38| 629|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |             0|     64| 629|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |             1|     31| 629|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |             0|     74| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |             1|     12| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |             0|    309| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |             1|     54| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |             0|    161| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |             1|     22| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |             0|    115| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |             1|     11| 758|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |             0|    115| 700|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |             1|     15| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |             0|    292| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |             1|     46| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |             0|    122| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |             1|     19| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |             0|     76| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |             1|     15| 700|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |             0|     17| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |             1|     12| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |             0|     82| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |             1|     85| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |             0|     72| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |             1|     68| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |             0|     46| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |             1|     36| 418|
|0-24 months |Vellore Crypto |INDIA      |3 or less |             0|     50| 410|
|0-24 months |Vellore Crypto |INDIA      |3 or less |             1|      9| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |             0|    102| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |             1|     44| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |             0|     93| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |             1|     31| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |             0|     63| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |             1|     18| 410|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |             0|     70| 266|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |             1|      8| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |             0|    100| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |             1|      6| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |             0|     52| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |             1|      4| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |             0|     24| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |             1|      2| 266|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |             0|     90| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |             1|     14| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |             0|    259| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |             1|     29| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |             0|    135| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |             1|      7| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |             0|     86| 629|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |             1|      9| 629|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |             0|     78| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |             1|      8| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |             0|    336| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |             1|     27| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |             0|    173| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |             1|     10| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |             0|    124| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |             1|      2| 758|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |             0|    122| 700|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |             1|      8| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |             0|    325| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |             1|     13| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |             0|    135| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |             1|      6| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |             0|     87| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |             1|      4| 700|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |             0|     27| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |             1|      2| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |             0|    146| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |             1|     20| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |             0|    121| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |             1|     18| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |             0|     72| 416|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |             1|     10| 416|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |             0|     56| 410|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |             1|      3| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |             0|    114| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |             1|     32| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |             0|    105| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |             1|     19| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |             0|     73| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |             1|      8| 410|


The following strata were considered:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


