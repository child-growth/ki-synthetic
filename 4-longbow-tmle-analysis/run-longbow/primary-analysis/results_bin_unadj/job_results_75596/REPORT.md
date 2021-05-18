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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country    |nhh       | wast_rec90d| n_cell|   n|
|:-----------|:--------------|:----------|:---------|-----------:|------:|---:|
|0-24 months |LCNI-5         |MALAWI     |3 or less |           0|     23|  78|
|0-24 months |LCNI-5         |MALAWI     |3 or less |           1|      2|  78|
|0-24 months |LCNI-5         |MALAWI     |4-5       |           0|     27|  78|
|0-24 months |LCNI-5         |MALAWI     |4-5       |           1|      6|  78|
|0-24 months |LCNI-5         |MALAWI     |6-7       |           0|      6|  78|
|0-24 months |LCNI-5         |MALAWI     |6-7       |           1|      3|  78|
|0-24 months |LCNI-5         |MALAWI     |8+        |           0|      9|  78|
|0-24 months |LCNI-5         |MALAWI     |8+        |           1|      2|  78|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |           0|     30| 421|
|0-24 months |NIH-Birth      |BANGLADESH |3 or less |           1|     25| 421|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |           0|     91| 421|
|0-24 months |NIH-Birth      |BANGLADESH |4-5       |           1|    103| 421|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |           0|     44| 421|
|0-24 months |NIH-Birth      |BANGLADESH |6-7       |           1|     60| 421|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |           0|     37| 421|
|0-24 months |NIH-Birth      |BANGLADESH |8+        |           1|     31| 421|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |           0|      6| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |3 or less |           1|     14| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |           0|     63| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |4-5       |           1|     96| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |           0|     30| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |6-7       |           1|     47| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |           0|     18| 310|
|0-24 months |NIH-Crypto     |BANGLADESH |8+        |           1|     36| 310|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |           0|     18| 308|
|0-24 months |PROVIDE        |BANGLADESH |3 or less |           1|     32| 308|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |           0|     65| 308|
|0-24 months |PROVIDE        |BANGLADESH |4-5       |           1|     87| 308|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |           0|     30| 308|
|0-24 months |PROVIDE        |BANGLADESH |6-7       |           1|     32| 308|
|0-24 months |PROVIDE        |BANGLADESH |8+        |           0|     16| 308|
|0-24 months |PROVIDE        |BANGLADESH |8+        |           1|     28| 308|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           0|     15| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           1|      0| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           0|     85| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           1|      4| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           0|     75| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           1|      5| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |           0|     46| 234|
|0-24 months |SAS-FoodSuppl  |INDIA      |8+        |           1|      4| 234|
|0-24 months |Vellore Crypto |INDIA      |3 or less |           0|     16| 395|
|0-24 months |Vellore Crypto |INDIA      |3 or less |           1|     32| 395|
|0-24 months |Vellore Crypto |INDIA      |4-5       |           0|     64| 395|
|0-24 months |Vellore Crypto |INDIA      |4-5       |           1|     88| 395|
|0-24 months |Vellore Crypto |INDIA      |6-7       |           0|     48| 395|
|0-24 months |Vellore Crypto |INDIA      |6-7       |           1|     69| 395|
|0-24 months |Vellore Crypto |INDIA      |8+        |           0|     34| 395|
|0-24 months |Vellore Crypto |INDIA      |8+        |           1|     44| 395|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |           0|      1|   4|
|0-6 months  |LCNI-5         |MALAWI     |3 or less |           1|      0|   4|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |           0|      3|   4|
|0-6 months  |LCNI-5         |MALAWI     |4-5       |           1|      0|   4|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |           0|      0|   4|
|0-6 months  |LCNI-5         |MALAWI     |6-7       |           1|      0|   4|
|0-6 months  |LCNI-5         |MALAWI     |8+        |           0|      0|   4|
|0-6 months  |LCNI-5         |MALAWI     |8+        |           1|      0|   4|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |           0|     11| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |3 or less |           1|     21| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |           0|     30| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |4-5       |           1|     73| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |           0|     11| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |6-7       |           1|     39| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |           0|     12| 223|
|0-6 months  |NIH-Birth      |BANGLADESH |8+        |           1|     26| 223|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |           0|      1| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |3 or less |           1|     14| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |           0|     13| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |4-5       |           1|     83| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |           0|      5| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |6-7       |           1|     44| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |           0|      2| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH |8+        |           1|     35| 197|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |           0|      9| 185|
|0-6 months  |PROVIDE        |BANGLADESH |3 or less |           1|     29| 185|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |           0|     19| 185|
|0-6 months  |PROVIDE        |BANGLADESH |4-5       |           1|     70| 185|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |           0|     10| 185|
|0-6 months  |PROVIDE        |BANGLADESH |6-7       |           1|     27| 185|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |           0|      2| 185|
|0-6 months  |PROVIDE        |BANGLADESH |8+        |           1|     19| 185|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |           0|      6|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |3 or less |           1|      0|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |           0|     25|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |4-5       |           1|      0|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |           0|     29|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |6-7       |           1|      0|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |           0|     18|  78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |8+        |           1|      0|  78|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |           0|      9| 240|
|0-6 months  |Vellore Crypto |INDIA      |3 or less |           1|     20| 240|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |           0|     30| 240|
|0-6 months  |Vellore Crypto |INDIA      |4-5       |           1|     62| 240|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |           0|     23| 240|
|0-6 months  |Vellore Crypto |INDIA      |6-7       |           1|     42| 240|
|0-6 months  |Vellore Crypto |INDIA      |8+        |           0|     25| 240|
|0-6 months  |Vellore Crypto |INDIA      |8+        |           1|     29| 240|
|6-24 months |LCNI-5         |MALAWI     |3 or less |           0|     22|  74|
|6-24 months |LCNI-5         |MALAWI     |3 or less |           1|      2|  74|
|6-24 months |LCNI-5         |MALAWI     |4-5       |           0|     24|  74|
|6-24 months |LCNI-5         |MALAWI     |4-5       |           1|      6|  74|
|6-24 months |LCNI-5         |MALAWI     |6-7       |           0|      6|  74|
|6-24 months |LCNI-5         |MALAWI     |6-7       |           1|      3|  74|
|6-24 months |LCNI-5         |MALAWI     |8+        |           0|      9|  74|
|6-24 months |LCNI-5         |MALAWI     |8+        |           1|      2|  74|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |           0|     19| 198|
|6-24 months |NIH-Birth      |BANGLADESH |3 or less |           1|      4| 198|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |           0|     61| 198|
|6-24 months |NIH-Birth      |BANGLADESH |4-5       |           1|     30| 198|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |           0|     33| 198|
|6-24 months |NIH-Birth      |BANGLADESH |6-7       |           1|     21| 198|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |           0|     25| 198|
|6-24 months |NIH-Birth      |BANGLADESH |8+        |           1|      5| 198|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |           0|      5| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |3 or less |           1|      0| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |           0|     50| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |4-5       |           1|     13| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |           0|     25| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |6-7       |           1|      3| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |           0|     16| 113|
|6-24 months |NIH-Crypto     |BANGLADESH |8+        |           1|      1| 113|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |           0|      9| 123|
|6-24 months |PROVIDE        |BANGLADESH |3 or less |           1|      3| 123|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |           0|     46| 123|
|6-24 months |PROVIDE        |BANGLADESH |4-5       |           1|     17| 123|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |           0|     20| 123|
|6-24 months |PROVIDE        |BANGLADESH |6-7       |           1|      5| 123|
|6-24 months |PROVIDE        |BANGLADESH |8+        |           0|     14| 123|
|6-24 months |PROVIDE        |BANGLADESH |8+        |           1|      9| 123|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           0|      9| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |3 or less |           1|      0| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           0|     60| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |4-5       |           1|      4| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           0|     46| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |6-7       |           1|      5| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |           0|     28| 156|
|6-24 months |SAS-FoodSuppl  |INDIA      |8+        |           1|      4| 156|
|6-24 months |Vellore Crypto |INDIA      |3 or less |           0|      7| 155|
|6-24 months |Vellore Crypto |INDIA      |3 or less |           1|     12| 155|
|6-24 months |Vellore Crypto |INDIA      |4-5       |           0|     34| 155|
|6-24 months |Vellore Crypto |INDIA      |4-5       |           1|     26| 155|
|6-24 months |Vellore Crypto |INDIA      |6-7       |           0|     25| 155|
|6-24 months |Vellore Crypto |INDIA      |6-7       |           1|     27| 155|
|6-24 months |Vellore Crypto |INDIA      |8+        |           0|      9| 155|
|6-24 months |Vellore Crypto |INDIA      |8+        |           1|     15| 155|


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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


