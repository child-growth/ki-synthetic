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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country    |nhh       | sstunted| n_cell|   n|
|:---------|:--------------|:----------|:---------|--------:|------:|---:|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |        0|     96| 608|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |        1|      4| 608|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |        0|    269| 608|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |        1|     11| 608|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |        0|    133| 608|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |        1|      3| 608|
|Birth     |NIH-Birth      |BANGLADESH |8+        |        0|     91| 608|
|Birth     |NIH-Birth      |BANGLADESH |8+        |        1|      1| 608|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |        0|     79| 732|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |        1|      3| 732|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |        0|    344| 732|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |        1|      4| 732|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |        0|    177| 732|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |        1|      3| 732|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |        0|    122| 732|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |        1|      0| 732|
|Birth     |PROVIDE        |BANGLADESH |3 or less |        0|    105| 539|
|Birth     |PROVIDE        |BANGLADESH |3 or less |        1|      1| 539|
|Birth     |PROVIDE        |BANGLADESH |4-5       |        0|    257| 539|
|Birth     |PROVIDE        |BANGLADESH |4-5       |        1|      1| 539|
|Birth     |PROVIDE        |BANGLADESH |6-7       |        0|    106| 539|
|Birth     |PROVIDE        |BANGLADESH |6-7       |        1|      2| 539|
|Birth     |PROVIDE        |BANGLADESH |8+        |        0|     67| 539|
|Birth     |PROVIDE        |BANGLADESH |8+        |        1|      0| 539|
|Birth     |Vellore Crypto |INDIA      |3 or less |        0|     57| 388|
|Birth     |Vellore Crypto |INDIA      |3 or less |        1|      0| 388|
|Birth     |Vellore Crypto |INDIA      |4-5       |        0|    127| 388|
|Birth     |Vellore Crypto |INDIA      |4-5       |        1|     11| 388|
|Birth     |Vellore Crypto |INDIA      |6-7       |        0|    116| 388|
|Birth     |Vellore Crypto |INDIA      |6-7       |        1|      2| 388|
|Birth     |Vellore Crypto |INDIA      |8+        |        0|     72| 388|
|Birth     |Vellore Crypto |INDIA      |8+        |        1|      3| 388|
|6 months  |LCNI-5         |MALAWI     |3 or less |        0|    230| 825|
|6 months  |LCNI-5         |MALAWI     |3 or less |        1|     22| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |        0|    291| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |        1|     24| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |        0|    160| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |        1|     17| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |        0|     75| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |        1|      6| 825|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |        0|     80| 537|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |        1|      7| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |        0|    232| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |        1|     16| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |        0|    122| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |        1|      6| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |        0|     68| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |        1|      6| 537|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |        0|     76| 715|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |        1|      4| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |        0|    339| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |        1|      7| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |        0|    160| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |        1|     11| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |        0|    117| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |        1|      1| 715|
|6 months  |PROVIDE        |BANGLADESH |3 or less |        0|    107| 604|
|6 months  |PROVIDE        |BANGLADESH |3 or less |        1|      4| 604|
|6 months  |PROVIDE        |BANGLADESH |4-5       |        0|    279| 604|
|6 months  |PROVIDE        |BANGLADESH |4-5       |        1|      7| 604|
|6 months  |PROVIDE        |BANGLADESH |6-7       |        0|    123| 604|
|6 months  |PROVIDE        |BANGLADESH |6-7       |        1|      3| 604|
|6 months  |PROVIDE        |BANGLADESH |8+        |        0|     81| 604|
|6 months  |PROVIDE        |BANGLADESH |8+        |        1|      0| 604|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |        0|     24| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |        1|      3| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |        0|    132| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |        1|     23| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |        0|    106| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |        1|     19| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |        0|     64| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |        1|      9| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |        0|     58| 407|
|6 months  |Vellore Crypto |INDIA      |3 or less |        1|      1| 407|
|6 months  |Vellore Crypto |INDIA      |4-5       |        0|    128| 407|
|6 months  |Vellore Crypto |INDIA      |4-5       |        1|     15| 407|
|6 months  |Vellore Crypto |INDIA      |6-7       |        0|    113| 407|
|6 months  |Vellore Crypto |INDIA      |6-7       |        1|     11| 407|
|6 months  |Vellore Crypto |INDIA      |8+        |        0|     79| 407|
|6 months  |Vellore Crypto |INDIA      |8+        |        1|      2| 407|
|24 months |LCNI-5         |MALAWI     |3 or less |        0|    153| 572|
|24 months |LCNI-5         |MALAWI     |3 or less |        1|     19| 572|
|24 months |LCNI-5         |MALAWI     |4-5       |        0|    196| 572|
|24 months |LCNI-5         |MALAWI     |4-5       |        1|     24| 572|
|24 months |LCNI-5         |MALAWI     |6-7       |        0|    111| 572|
|24 months |LCNI-5         |MALAWI     |6-7       |        1|     13| 572|
|24 months |LCNI-5         |MALAWI     |8+        |        0|     43| 572|
|24 months |LCNI-5         |MALAWI     |8+        |        1|     13| 572|
|24 months |NIH-Birth      |BANGLADESH |3 or less |        0|     51| 429|
|24 months |NIH-Birth      |BANGLADESH |3 or less |        1|     14| 429|
|24 months |NIH-Birth      |BANGLADESH |4-5       |        0|    148| 429|
|24 months |NIH-Birth      |BANGLADESH |4-5       |        1|     54| 429|
|24 months |NIH-Birth      |BANGLADESH |6-7       |        0|     88| 429|
|24 months |NIH-Birth      |BANGLADESH |6-7       |        1|     15| 429|
|24 months |NIH-Birth      |BANGLADESH |8+        |        0|     47| 429|
|24 months |NIH-Birth      |BANGLADESH |8+        |        1|     12| 429|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |        0|     55| 514|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |        1|      4| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |        0|    225| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |        1|     22| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |        0|    116| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |        1|      6| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |        0|     82| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |        1|      4| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |        0|    100| 578|
|24 months |PROVIDE        |BANGLADESH |3 or less |        1|      9| 578|
|24 months |PROVIDE        |BANGLADESH |4-5       |        0|    252| 578|
|24 months |PROVIDE        |BANGLADESH |4-5       |        1|     25| 578|
|24 months |PROVIDE        |BANGLADESH |6-7       |        0|    102| 578|
|24 months |PROVIDE        |BANGLADESH |6-7       |        1|     11| 578|
|24 months |PROVIDE        |BANGLADESH |8+        |        0|     72| 578|
|24 months |PROVIDE        |BANGLADESH |8+        |        1|      7| 578|
|24 months |Vellore Crypto |INDIA      |3 or less |        0|     57| 409|
|24 months |Vellore Crypto |INDIA      |3 or less |        1|      2| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |        0|    127| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |        1|     18| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |        0|    107| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |        1|     17| 409|
|24 months |Vellore Crypto |INDIA      |8+        |        0|     77| 409|
|24 months |Vellore Crypto |INDIA      |8+        |        1|      4| 409|


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

* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
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


