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

**Outcome Variable:** ever_stunted

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

|agecat                     |studyid        |country      |cleanck | ever_stunted| n_cell|   n|
|:--------------------------|:--------------|:------------|:-------|------------:|------:|---:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1       |            0|     11| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1       |            1|    114| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0       |            0|     17| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0       |            1|    154| 296|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1       |            0|      2| 505|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1       |            1|      4| 505|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0       |            0|    223| 505|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0       |            1|    276| 505|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   4|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   4|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   4|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0       |            1|      1|   4|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1       |            0|    188| 500|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1       |            1|    116| 500|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0       |            0|    116| 500|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0       |            1|     80| 500|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1       |            0|    344| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1       |            1|    189| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0       |            0|     51| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0       |            1|     49| 633|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1       |            0|     76| 348|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1       |            1|    134| 348|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0       |            0|     65| 348|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0       |            1|     73| 348|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1       |            0|     67| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1       |            1|     54| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0       |            0|    113| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0       |            1|     58| 292|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1       |            0|      5| 505|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1       |            1|      1| 505|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0       |            0|    421| 505|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0       |            1|     78| 505|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   4|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   4|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   4|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0       |            1|      1|   4|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1       |            0|    250| 500|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1       |            1|     54| 500|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0       |            0|    156| 500|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0       |            1|     40| 500|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1       |            0|    456| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1       |            1|     77| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0       |            0|     76| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0       |            1|     24| 633|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1       |            0|    135| 348|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1       |            1|     75| 348|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0       |            0|     93| 348|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0       |            1|     45| 348|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1       |            0|     11| 185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1       |            1|     61| 185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0       |            0|     17| 185|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0       |            1|     96| 185|
|6-24 months                |GMS-Nepal      |NEPAL        |1       |            0|      1| 355|
|6-24 months                |GMS-Nepal      |NEPAL        |1       |            1|      3| 355|
|6-24 months                |GMS-Nepal      |NEPAL        |0       |            0|    153| 355|
|6-24 months                |GMS-Nepal      |NEPAL        |0       |            1|    198| 355|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   2|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   2|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0       |            0|      0|   2|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   2|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1       |            0|    176| 388|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1       |            1|     62| 388|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0       |            0|    110| 388|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0       |            1|     40| 388|
|6-24 months                |PROVIDE        |BANGLADESH   |1       |            0|    280| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |1       |            1|    112| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |0       |            0|     39| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |0       |            1|     25| 456|
|6-24 months                |Vellore Crypto |INDIA        |1       |            0|     76| 228|
|6-24 months                |Vellore Crypto |INDIA        |1       |            1|     59| 228|
|6-24 months                |Vellore Crypto |INDIA        |0       |            0|     65| 228|
|6-24 months                |Vellore Crypto |INDIA        |0       |            1|     28| 228|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


