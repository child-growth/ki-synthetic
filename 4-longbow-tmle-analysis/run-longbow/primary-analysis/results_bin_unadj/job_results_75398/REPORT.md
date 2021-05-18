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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |cleanck | sstunted| n_cell|   n|
|:---------|:--------------|:------------|:-------|--------:|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |        0|     35|  92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |        1|      2|  92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |        0|     53|  92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |        1|      2|  92|
|Birth     |GMS-Nepal      |NEPAL        |1       |        0|      7| 608|
|Birth     |GMS-Nepal      |NEPAL        |1       |        1|      1| 608|
|Birth     |GMS-Nepal      |NEPAL        |0       |        0|    571| 608|
|Birth     |GMS-Nepal      |NEPAL        |0       |        1|     29| 608|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |        0|    332| 558|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |        1|      6| 558|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |        0|    218| 558|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |        1|      2| 558|
|Birth     |PROVIDE        |BANGLADESH   |1       |        0|    448| 539|
|Birth     |PROVIDE        |BANGLADESH   |1       |        1|      2| 539|
|Birth     |PROVIDE        |BANGLADESH   |0       |        0|     87| 539|
|Birth     |PROVIDE        |BANGLADESH   |0       |        1|      2| 539|
|Birth     |Vellore Crypto |INDIA        |1       |        0|    212| 374|
|Birth     |Vellore Crypto |INDIA        |1       |        1|      9| 374|
|Birth     |Vellore Crypto |INDIA        |0       |        0|    147| 374|
|Birth     |Vellore Crypto |INDIA        |0       |        1|      6| 374|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |        0|    134| 369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |        1|     13| 369|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |        0|    193| 369|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |        1|     29| 369|
|6 months  |GMS-Nepal      |NEPAL        |1       |        0|      6| 492|
|6 months  |GMS-Nepal      |NEPAL        |1       |        1|      0| 492|
|6 months  |GMS-Nepal      |NEPAL        |0       |        0|    469| 492|
|6 months  |GMS-Nepal      |NEPAL        |0       |        1|     17| 492|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |        0|      2|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |        1|      0|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |        0|      1|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |        1|      0|   3|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |        0|    322| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |        1|     10| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |        0|    201| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |        1|      9| 542|
|6 months  |PROVIDE        |BANGLADESH   |1       |        0|    499| 604|
|6 months  |PROVIDE        |BANGLADESH   |1       |        1|     11| 604|
|6 months  |PROVIDE        |BANGLADESH   |0       |        0|     91| 604|
|6 months  |PROVIDE        |BANGLADESH   |0       |        1|      3| 604|
|6 months  |Vellore Crypto |INDIA        |1       |        0|    217| 393|
|6 months  |Vellore Crypto |INDIA        |1       |        1|     17| 393|
|6 months  |Vellore Crypto |INDIA        |0       |        0|    148| 393|
|6 months  |Vellore Crypto |INDIA        |0       |        1|     11| 393|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |        0|     95| 371|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |        1|     54| 371|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |        0|    151| 371|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |        1|     71| 371|
|24 months |GMS-Nepal      |NEPAL        |1       |        0|      3| 423|
|24 months |GMS-Nepal      |NEPAL        |1       |        1|      0| 423|
|24 months |GMS-Nepal      |NEPAL        |0       |        0|    380| 423|
|24 months |GMS-Nepal      |NEPAL        |0       |        1|     40| 423|
|24 months |MAL-ED         |SOUTH AFRICA |1       |        0|      2|   3|
|24 months |MAL-ED         |SOUTH AFRICA |1       |        1|      0|   3|
|24 months |MAL-ED         |SOUTH AFRICA |0       |        0|      1|   3|
|24 months |MAL-ED         |SOUTH AFRICA |0       |        1|      0|   3|
|24 months |NIH-Crypto     |BANGLADESH   |1       |        0|    226| 392|
|24 months |NIH-Crypto     |BANGLADESH   |1       |        1|     13| 392|
|24 months |NIH-Crypto     |BANGLADESH   |0       |        0|    140| 392|
|24 months |NIH-Crypto     |BANGLADESH   |0       |        1|     13| 392|
|24 months |PROVIDE        |BANGLADESH   |1       |        0|    450| 578|
|24 months |PROVIDE        |BANGLADESH   |1       |        1|     38| 578|
|24 months |PROVIDE        |BANGLADESH   |0       |        0|     76| 578|
|24 months |PROVIDE        |BANGLADESH   |0       |        1|     14| 578|
|24 months |Vellore Crypto |INDIA        |1       |        0|    213| 395|
|24 months |Vellore Crypto |INDIA        |1       |        1|     22| 395|
|24 months |Vellore Crypto |INDIA        |0       |        0|    143| 395|
|24 months |Vellore Crypto |INDIA        |0       |        1|     17| 395|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


