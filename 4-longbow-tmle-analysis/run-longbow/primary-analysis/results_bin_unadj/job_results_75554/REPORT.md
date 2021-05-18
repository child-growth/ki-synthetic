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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country    |nhh       | swasted| n_cell|   n|
|:---------|:--------------|:----------|:---------|-------:|------:|---:|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |       0|     84| 575|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |       1|     10| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |       0|    245| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |       1|     19| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |       0|    122| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |       1|      6| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |       0|     86| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |       1|      3| 575|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |       0|     75| 707|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |       1|      4| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |       0|    312| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |       1|     25| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |       0|    161| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |       1|     10| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |       0|    112| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |       1|      8| 707|
|Birth     |PROVIDE        |BANGLADESH |3 or less |       0|    100| 532|
|Birth     |PROVIDE        |BANGLADESH |3 or less |       1|      3| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |       0|    251| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |       1|      4| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |       0|    102| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |       1|      5| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |       0|     66| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |       1|      1| 532|
|Birth     |Vellore Crypto |INDIA      |3 or less |       0|     48| 343|
|Birth     |Vellore Crypto |INDIA      |3 or less |       1|      5| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |       0|     94| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |       1|     22| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |       0|     92| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |       1|     16| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |       0|     55| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |       1|     11| 343|
|6 months  |LCNI-5         |MALAWI     |3 or less |       0|    252| 825|
|6 months  |LCNI-5         |MALAWI     |3 or less |       1|      0| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |       0|    315| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |       1|      0| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |       0|    177| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |       1|      0| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |       0|     81| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |       1|      0| 825|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |       0|     86| 537|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |       1|      1| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |       0|    244| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |       1|      4| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |       0|    127| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |       1|      1| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |       0|     74| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |       1|      0| 537|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |       0|     80| 715|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |       1|      0| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |       0|    346| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |       1|      0| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |       0|    171| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |       1|      0| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |       0|    118| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |       1|      0| 715|
|6 months  |PROVIDE        |BANGLADESH |3 or less |       0|    108| 603|
|6 months  |PROVIDE        |BANGLADESH |3 or less |       1|      2| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |       0|    284| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |       1|      2| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |       0|    125| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |       1|      1| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |       0|     81| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |       1|      0| 603|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |       0|     26| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |       1|      1| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |       0|    149| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |       1|      6| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |       0|    115| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |       1|      9| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |       0|     71| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |       1|      3| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |       0|     57| 408|
|6 months  |Vellore Crypto |INDIA      |3 or less |       1|      2| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |       0|    136| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |       1|      8| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |       0|    116| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |       1|      8| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |       0|     77| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |       1|      4| 408|
|24 months |LCNI-5         |MALAWI     |3 or less |       0|    164| 556|
|24 months |LCNI-5         |MALAWI     |3 or less |       1|      0| 556|
|24 months |LCNI-5         |MALAWI     |4-5       |       0|    213| 556|
|24 months |LCNI-5         |MALAWI     |4-5       |       1|      1| 556|
|24 months |LCNI-5         |MALAWI     |6-7       |       0|    124| 556|
|24 months |LCNI-5         |MALAWI     |6-7       |       1|      0| 556|
|24 months |LCNI-5         |MALAWI     |8+        |       0|     54| 556|
|24 months |LCNI-5         |MALAWI     |8+        |       1|      0| 556|
|24 months |NIH-Birth      |BANGLADESH |3 or less |       0|     63| 428|
|24 months |NIH-Birth      |BANGLADESH |3 or less |       1|      2| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |       0|    198| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |       1|      4| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |       0|     99| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |       1|      3| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |       0|     58| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |       1|      1| 428|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |       0|     59| 514|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |       1|      0| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |       0|    243| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |       1|      4| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |       0|    122| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |       1|      0| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |       0|     86| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |       1|      0| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |       0|    108| 579|
|24 months |PROVIDE        |BANGLADESH |3 or less |       1|      2| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |       0|    274| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |       1|      3| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |       0|    111| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |       1|      2| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |       0|     77| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |       1|      2| 579|
|24 months |Vellore Crypto |INDIA      |3 or less |       0|     59| 409|
|24 months |Vellore Crypto |INDIA      |3 or less |       1|      0| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |       0|    144| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |       1|      1| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |       0|    120| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |       1|      4| 409|
|24 months |Vellore Crypto |INDIA      |8+        |       0|     81| 409|
|24 months |Vellore Crypto |INDIA      |8+        |       1|      0| 409|


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
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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


