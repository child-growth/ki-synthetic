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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country    |nhh       | ever_wasted| n_cell|   n|
|:-----------|:--------------|:----------|:---------|-----------:|------:|---:|
|0-24 months |LCNI-5         |MALAWI     |3 or less |           0|    230| 826|
|0-24 months |LCNI-5         |MALAWI     |3 or less |           1|     22| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |           0|    289| 826|
|0-24 months |LCNI-5         |MALAWI     |4-5       |           1|     27| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |           0|    169| 826|
|0-24 months |LCNI-5         |MALAWI     |6-7       |           1|      8| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |           0|     72| 826|
|0-24 months |LCNI-5         |MALAWI     |8+        |           1|      9| 826|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |           0|     62| 624|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |           1|     41| 624|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |           0|    148| 624|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |           1|    137| 624|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |           0|     70| 624|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |           1|     71| 624|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |           0|     46| 624|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |           1|     49| 624|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |           0|     68| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |           1|     18| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |           0|    236| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |           1|    127| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |           0|    124| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |           1|     59| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |           0|     80| 758|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |           1|     46| 758|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |           0|     84| 700|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |           1|     46| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |           0|    219| 700|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |           1|    119| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |           0|     92| 700|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |           1|     49| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |           0|     59| 700|
|0-24 months |PROVIDE        |BANGLADESH |8+        |           1|     32| 700|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           0|     17| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           1|     12| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           0|     92| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           1|     75| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           0|     74| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           1|     66| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |           0|     38| 418|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |           1|     44| 418|
|0-24 months |Vellore Crypto |INDIA      |3 or less |           0|     23| 410|
|0-24 months |Vellore Crypto |INDIA      |3 or less |           1|     36| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |           0|     45| 410|
|0-24 months |Vellore Crypto |INDIA      |4-5       |           1|    101| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |           0|     46| 410|
|0-24 months |Vellore Crypto |INDIA      |6-7       |           1|     78| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |           0|     27| 410|
|0-24 months |Vellore Crypto |INDIA      |8+        |           1|     54| 410|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |           0|     77| 266|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |           1|      1| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |           0|    103| 266|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |           1|      3| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |           0|     56| 266|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |           1|      0| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |           0|     26| 266|
|0-6 months  |LCNI-5         |MALAWI     |8+        |           1|      0| 266|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |           0|     71| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |           1|     32| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |           0|    182| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |           1|    102| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |           0|     90| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |           1|     50| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |           0|     57| 622|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |           1|     38| 622|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |           0|     71| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |           1|     15| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |           0|    268| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |           1|     95| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |           0|    134| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |           1|     49| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |           0|     90| 758|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |           1|     36| 758|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |           0|     93| 700|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |           1|     37| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |           0|    251| 700|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |           1|     87| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |           0|    105| 700|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |           1|     36| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |           0|     70| 700|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |           1|     21| 700|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |           0|     23| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |           1|      6| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |           0|    142| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |           1|     25| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |           0|    111| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |           1|     29| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |           0|     64| 418|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |           1|     18| 418|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |           0|     30| 410|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |           1|     29| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |           0|     60| 410|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |           1|     86| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |           0|     64| 410|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |           1|     60| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |           0|     33| 410|
|0-6 months  |Vellore Crypto |INDIA      |8+        |           1|     48| 410|
|6-24 months |LCNI-5         |MALAWI     |3 or less |           0|    230| 812|
|6-24 months |LCNI-5         |MALAWI     |3 or less |           1|     22| 812|
|6-24 months |LCNI-5         |MALAWI     |4-5       |           0|    287| 812|
|6-24 months |LCNI-5         |MALAWI     |4-5       |           1|     24| 812|
|6-24 months |LCNI-5         |MALAWI     |6-7       |           0|    164| 812|
|6-24 months |LCNI-5         |MALAWI     |6-7       |           1|      8| 812|
|6-24 months |LCNI-5         |MALAWI     |8+        |           0|     68| 812|
|6-24 months |LCNI-5         |MALAWI     |8+        |           1|      9| 812|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |           0|     71| 542|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |           1|     18| 542|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |           0|    176| 542|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |           1|     74| 542|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |           0|     86| 542|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |           1|     43| 542|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |           0|     50| 542|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |           1|     24| 542|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |           0|     78| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |           1|      4| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |           0|    295| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |           1|     57| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |           0|    157| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |           1|     19| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |           0|    104| 730|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |           1|     16| 730|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |           0|    102| 615|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |           1|     11| 615|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |           0|    244| 615|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |           1|     49| 615|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |           0|    104| 615|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |           1|     20| 615|
|6-24 months |PROVIDE        |BANGLADESH |8+        |           0|     66| 615|
|6-24 months |PROVIDE        |BANGLADESH |8+        |           1|     19| 615|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           0|     19| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           1|      9| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           0|    102| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           1|     60| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           0|     88| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           1|     45| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |           0|     50| 402|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |           1|     29| 402|
|6-24 months |Vellore Crypto |INDIA      |3 or less |           0|     46| 410|
|6-24 months |Vellore Crypto |INDIA      |3 or less |           1|     13| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |           0|     92| 410|
|6-24 months |Vellore Crypto |INDIA      |4-5       |           1|     54| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |           0|     85| 410|
|6-24 months |Vellore Crypto |INDIA      |6-7       |           1|     39| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |           0|     60| 410|
|6-24 months |Vellore Crypto |INDIA      |8+        |           1|     21| 410|


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

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


