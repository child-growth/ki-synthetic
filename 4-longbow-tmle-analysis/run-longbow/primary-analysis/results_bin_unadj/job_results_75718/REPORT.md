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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country    |nhh       | pers_wast| n_cell|   n|
|:-----------|:--------------|:----------|:---------|---------:|------:|---:|
|0-24 months |LCNI-5         |MALAWI     |3 or less |         0|    213| 708|
|0-24 months |LCNI-5         |MALAWI     |3 or less |         1|      1| 708|
|0-24 months |LCNI-5         |MALAWI     |4-5       |         0|    267| 708|
|0-24 months |LCNI-5         |MALAWI     |4-5       |         1|      3| 708|
|0-24 months |LCNI-5         |MALAWI     |6-7       |         0|    153| 708|
|0-24 months |LCNI-5         |MALAWI     |6-7       |         1|      1| 708|
|0-24 months |LCNI-5         |MALAWI     |8+        |         0|     69| 708|
|0-24 months |LCNI-5         |MALAWI     |8+        |         1|      1| 708|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |         0|     79| 534|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |         1|      6| 534|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |         0|    227| 534|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |         1|     23| 534|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |         0|    117| 534|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |         1|     11| 534|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |         0|     64| 534|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |         1|      7| 534|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |         0|     81| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |         1|      1| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |         0|    334| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |         1|     18| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |         0|    174| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |         1|      2| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |         0|    115| 730|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |         1|      5| 730|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |         0|    114| 641|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |         1|      4| 641|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |         0|    300| 641|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |         1|      6| 641|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |         0|    125| 641|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |         1|      4| 641|
|0-24 months |PROVIDE        |BANGLADESH |8+        |         0|     87| 641|
|0-24 months |PROVIDE        |BANGLADESH |8+        |         1|      1| 641|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |         0|     23| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |         1|      3| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |         0|    132| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |         1|     22| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |         0|     95| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |         1|     24| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |         0|     60| 375|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |         1|     16| 375|
|0-24 months |Vellore Crypto |INDIA      |3 or less |         0|     54| 410|
|0-24 months |Vellore Crypto |INDIA      |3 or less |         1|      5| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |         0|    126| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |         1|     20| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |         0|    112| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |         1|     12| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |         0|     70| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |         1|     11| 410|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |         0|     21| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |         1|      3| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |         0|     76| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |         1|      6| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |         0|     43| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |         1|      1| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |         0|     18| 169|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |         1|      1| 169|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |         0|     25| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |         1|      0| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |         0|    122| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |         1|      3| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |         0|     57| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |         1|      1| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |         0|     41| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |         1|      1| 250|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |         0|    114| 638|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |         1|      3| 638|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |         0|    297| 638|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |         1|      7| 638|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |         0|    126| 638|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |         1|      3| 638|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |         0|     87| 638|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |         1|      1| 638|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |         0|     53| 402|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |         1|      6| 402|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |         0|    119| 402|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |         1|     21| 402|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |         0|    105| 402|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |         1|     17| 402|
|0-6 months  |Vellore Crypto |INDIA      |8+        |         0|     61| 402|
|0-6 months  |Vellore Crypto |INDIA      |8+        |         1|     20| 402|
|6-24 months |LCNI-5         |MALAWI     |3 or less |         0|    213| 708|
|6-24 months |LCNI-5         |MALAWI     |3 or less |         1|      1| 708|
|6-24 months |LCNI-5         |MALAWI     |4-5       |         0|    267| 708|
|6-24 months |LCNI-5         |MALAWI     |4-5       |         1|      3| 708|
|6-24 months |LCNI-5         |MALAWI     |6-7       |         0|    153| 708|
|6-24 months |LCNI-5         |MALAWI     |6-7       |         1|      1| 708|
|6-24 months |LCNI-5         |MALAWI     |8+        |         0|     69| 708|
|6-24 months |LCNI-5         |MALAWI     |8+        |         1|      1| 708|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |         0|     79| 534|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |         1|      6| 534|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |         0|    227| 534|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |         1|     23| 534|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |         0|    117| 534|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |         1|     11| 534|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |         0|     64| 534|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |         1|      7| 534|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |         0|     81| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |         1|      1| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |         0|    334| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |         1|     18| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |         0|    174| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |         1|      2| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |         0|    115| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |         1|      5| 730|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |         0|    114| 641|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |         1|      4| 641|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |         0|    300| 641|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |         1|      6| 641|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |         0|    125| 641|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |         1|      4| 641|
|6-24 months |PROVIDE        |BANGLADESH |8+        |         0|     87| 641|
|6-24 months |PROVIDE        |BANGLADESH |8+        |         1|      1| 641|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |         0|     23| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |         1|      3| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |         0|    132| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |         1|     22| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |         0|     95| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |         1|     24| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |         0|     60| 375|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |         1|     16| 375|
|6-24 months |Vellore Crypto |INDIA      |3 or less |         0|     54| 410|
|6-24 months |Vellore Crypto |INDIA      |3 or less |         1|      5| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |         0|    126| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |         1|     20| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |         0|    112| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |         1|     12| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |         0|     70| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |         1|     11| 410|


The following strata were considered:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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


