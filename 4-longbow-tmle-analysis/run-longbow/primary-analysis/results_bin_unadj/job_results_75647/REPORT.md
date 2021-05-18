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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country    |nhh       | ever_swasted| n_cell|   n|
|:-----------|:--------------|:----------|:---------|------------:|------:|---:|
|0-24 months |LCNI-5         |MALAWI     |3 or less |            0|    250| 826|
|0-24 months |LCNI-5         |MALAWI     |3 or less |            1|      2| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |            0|    310| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |            1|      6| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |            0|    177| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |            1|      0| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |            0|     81| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |            1|      0| 826|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |            0|     88| 624|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |            1|     15| 624|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |            0|    233| 624|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |            1|     52| 624|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |            0|    123| 624|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |            1|     18| 624|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |            0|     81| 624|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |            1|     14| 624|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |            0|     82| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |            1|      4| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |            0|    323| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |            1|     40| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |            0|    171| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |            1|     12| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |            0|    116| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |            1|     10| 758|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |            0|    120| 700|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |            1|     10| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |            0|    321| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |            1|     17| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |            0|    128| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |            1|     13| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |            0|     89| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |            1|      2| 700|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |            0|     28| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |            1|      1| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |            0|    141| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |            1|     26| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |            0|    115| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |            1|     25| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |            0|     63| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |            1|     19| 418|
|0-24 months |Vellore Crypto |INDIA      |3 or less |            0|     44| 410|
|0-24 months |Vellore Crypto |INDIA      |3 or less |            1|     15| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |            0|     92| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |            1|     54| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |            0|     84| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |            1|     40| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |            0|     50| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |            1|     31| 410|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |            0|     78| 266|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |            1|      0| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |            0|    106| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |            1|      0| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |            0|     56| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |            1|      0| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |            0|     26| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |            1|      0| 266|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |            0|     92| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |            1|     11| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |            0|    254| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |            1|     30| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |            0|    132| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |            1|      8| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |            0|     88| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |            1|      7| 622|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |            0|     82| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |            1|      4| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |            0|    335| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |            1|     28| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |            0|    173| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |            1|     10| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |            0|    118| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |            1|      8| 758|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |            0|    121| 700|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |            1|      9| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |            0|    328| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |            1|     10| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |            0|    132| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |            1|      9| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |            0|     90| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |            1|      1| 700|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |            0|     28| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |            1|      1| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |            0|    161| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |            1|      6| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |            0|    133| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |            1|      7| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |            0|     76| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |            1|      6| 418|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |            0|     46| 410|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |            1|     13| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |            0|     98| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |            1|     48| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |            0|     87| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |            1|     37| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |            0|     53| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |            1|     28| 410|
|6-24 months |LCNI-5         |MALAWI     |3 or less |            0|    250| 812|
|6-24 months |LCNI-5         |MALAWI     |3 or less |            1|      2| 812|
|6-24 months |LCNI-5         |MALAWI     |4-5       |            0|    305| 812|
|6-24 months |LCNI-5         |MALAWI     |4-5       |            1|      6| 812|
|6-24 months |LCNI-5         |MALAWI     |6-7       |            0|    172| 812|
|6-24 months |LCNI-5         |MALAWI     |6-7       |            1|      0| 812|
|6-24 months |LCNI-5         |MALAWI     |8+        |            0|     77| 812|
|6-24 months |LCNI-5         |MALAWI     |8+        |            1|      0| 812|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |            0|     85| 542|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |            1|      4| 542|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |            0|    224| 542|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |            1|     26| 542|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |            0|    118| 542|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |            1|     11| 542|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |            0|     67| 542|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |            1|      7| 542|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |            0|     82| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |            1|      0| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |            0|    336| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |            1|     16| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |            0|    174| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |            1|      2| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |            0|    118| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |            1|      2| 730|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |            0|    112| 615|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |            1|      1| 615|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |            0|    286| 615|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |            1|      7| 615|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |            0|    120| 615|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |            1|      4| 615|
|6-24 months |PROVIDE        |BANGLADESH |8+        |            0|     84| 615|
|6-24 months |PROVIDE        |BANGLADESH |8+        |            1|      1| 615|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |            0|     28| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |            1|      0| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |            0|    142| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |            1|     20| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |            0|    115| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |            1|     18| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |            0|     66| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |            1|     13| 402|
|6-24 months |Vellore Crypto |INDIA      |3 or less |            0|     57| 410|
|6-24 months |Vellore Crypto |INDIA      |3 or less |            1|      2| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |            0|    134| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |            1|     12| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |            0|    118| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |            1|      6| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |            0|     75| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |            1|      6| 410|


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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


