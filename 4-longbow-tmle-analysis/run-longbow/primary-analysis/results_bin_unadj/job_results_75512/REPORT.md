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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |nhh       | wasted| n_cell|   n|
|:---------|:--------------|:----------|:---------|------:|------:|---:|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |      0|     70| 575|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |      1|     24| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |      0|    185| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |      1|     79| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |      0|     90| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |      1|     38| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |      0|     62| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |      1|     27| 575|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |      0|     66| 707|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |      1|     13| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |      0|    256| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |      1|     81| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |      0|    126| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |      1|     45| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |      0|     87| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |      1|     33| 707|
|Birth     |PROVIDE        |BANGLADESH |3 or less |      0|     77| 532|
|Birth     |PROVIDE        |BANGLADESH |3 or less |      1|     26| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |      0|    198| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |      1|     57| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |      0|     85| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |      1|     22| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |      0|     55| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |      1|     12| 532|
|Birth     |Vellore Crypto |INDIA      |3 or less |      0|     43| 343|
|Birth     |Vellore Crypto |INDIA      |3 or less |      1|     10| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |      0|     81| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |      1|     35| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |      0|     81| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |      1|     27| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |      0|     46| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |      1|     20| 343|
|6 months  |LCNI-5         |MALAWI     |3 or less |      0|    247| 825|
|6 months  |LCNI-5         |MALAWI     |3 or less |      1|      5| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |      0|    309| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |      1|      6| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |      0|    176| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |      1|      1| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |      0|     79| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |      1|      2| 825|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |      0|     82| 537|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |      1|      5| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |      0|    231| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |      1|     17| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |      0|    121| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |      1|      7| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |      0|     68| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |      1|      6| 537|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |      0|     80| 715|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |      1|      0| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |      0|    331| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |      1|     15| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |      0|    167| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |      1|      4| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |      0|    116| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |      1|      2| 715|
|6 months  |PROVIDE        |BANGLADESH |3 or less |      0|    106| 603|
|6 months  |PROVIDE        |BANGLADESH |3 or less |      1|      4| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |      0|    276| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |      1|     10| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |      0|    119| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |      1|      7| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |      0|     77| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |      1|      4| 603|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |      0|     24| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |      1|      3| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |      0|    132| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |      1|     23| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |      0|     97| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |      1|     27| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |      0|     58| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |      1|     16| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |      0|     54| 408|
|6 months  |Vellore Crypto |INDIA      |3 or less |      1|      5| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |      0|    125| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |      1|     19| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |      0|    109| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |      1|     15| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |      0|     66| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |      1|     15| 408|
|24 months |LCNI-5         |MALAWI     |3 or less |      0|    160| 556|
|24 months |LCNI-5         |MALAWI     |3 or less |      1|      4| 556|
|24 months |LCNI-5         |MALAWI     |4-5       |      0|    211| 556|
|24 months |LCNI-5         |MALAWI     |4-5       |      1|      3| 556|
|24 months |LCNI-5         |MALAWI     |6-7       |      0|    123| 556|
|24 months |LCNI-5         |MALAWI     |6-7       |      1|      1| 556|
|24 months |LCNI-5         |MALAWI     |8+        |      0|     52| 556|
|24 months |LCNI-5         |MALAWI     |8+        |      1|      2| 556|
|24 months |NIH-Birth      |BANGLADESH |3 or less |      0|     57| 428|
|24 months |NIH-Birth      |BANGLADESH |3 or less |      1|      8| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |      0|    180| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |      1|     22| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |      0|     89| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |      1|     13| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |      0|     49| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |      1|     10| 428|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |      0|     57| 514|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |      1|      2| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |      0|    217| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |      1|     30| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |      0|    116| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |      1|      6| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |      0|     79| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |      1|      7| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |      0|     99| 579|
|24 months |PROVIDE        |BANGLADESH |3 or less |      1|     11| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |      0|    250| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |      1|     27| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |      0|     99| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |      1|     14| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |      0|     69| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |      1|     10| 579|
|24 months |Vellore Crypto |INDIA      |3 or less |      0|     56| 409|
|24 months |Vellore Crypto |INDIA      |3 or less |      1|      3| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |      0|    132| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |      1|     13| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |      0|    114| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |      1|     10| 409|
|24 months |Vellore Crypto |INDIA      |8+        |      0|     76| 409|
|24 months |Vellore Crypto |INDIA      |8+        |      1|      5| 409|


The following strata were considered:

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


