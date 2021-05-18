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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |cleanck | swasted| n_cell|   n|
|:---------|:--------------|:------------|:-------|-------:|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       0|     36|  86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       1|      0|  86|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |       0|     49|  86|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |       1|      1|  86|
|Birth     |GMS-Nepal      |NEPAL        |1       |       0|      7| 558|
|Birth     |GMS-Nepal      |NEPAL        |1       |       1|      0| 558|
|Birth     |GMS-Nepal      |NEPAL        |0       |       0|    527| 558|
|Birth     |GMS-Nepal      |NEPAL        |0       |       1|     24| 558|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |       0|    311| 541|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |       1|     17| 541|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |       0|    195| 541|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |       1|     18| 541|
|Birth     |PROVIDE        |BANGLADESH   |1       |       0|    433| 532|
|Birth     |PROVIDE        |BANGLADESH   |1       |       1|     12| 532|
|Birth     |PROVIDE        |BANGLADESH   |0       |       0|     86| 532|
|Birth     |PROVIDE        |BANGLADESH   |0       |       1|      1| 532|
|Birth     |Vellore Crypto |INDIA        |1       |       0|    166| 331|
|Birth     |Vellore Crypto |INDIA        |1       |       1|     28| 331|
|Birth     |Vellore Crypto |INDIA        |0       |       0|    116| 331|
|Birth     |Vellore Crypto |INDIA        |0       |       1|     21| 331|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       0|    142| 368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       1|      4| 368|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |       0|    214| 368|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |       1|      8| 368|
|6 months  |GMS-Nepal      |NEPAL        |1       |       0|      6| 492|
|6 months  |GMS-Nepal      |NEPAL        |1       |       1|      0| 492|
|6 months  |GMS-Nepal      |NEPAL        |0       |       0|    481| 492|
|6 months  |GMS-Nepal      |NEPAL        |0       |       1|      5| 492|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       0|      2|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |       0|      1|   3|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |       1|      0|   3|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |       0|    332| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |       1|      0| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |       0|    210| 542|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |       1|      0| 542|
|6 months  |PROVIDE        |BANGLADESH   |1       |       0|    505| 603|
|6 months  |PROVIDE        |BANGLADESH   |1       |       1|      4| 603|
|6 months  |PROVIDE        |BANGLADESH   |0       |       0|     93| 603|
|6 months  |PROVIDE        |BANGLADESH   |0       |       1|      1| 603|
|6 months  |Vellore Crypto |INDIA        |1       |       0|    221| 394|
|6 months  |Vellore Crypto |INDIA        |1       |       1|     13| 394|
|6 months  |Vellore Crypto |INDIA        |0       |       0|    153| 394|
|6 months  |Vellore Crypto |INDIA        |0       |       1|      7| 394|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       0|    147| 372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       1|      2| 372|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |       0|    222| 372|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |       1|      1| 372|
|24 months |GMS-Nepal      |NEPAL        |1       |       0|      3| 422|
|24 months |GMS-Nepal      |NEPAL        |1       |       1|      0| 422|
|24 months |GMS-Nepal      |NEPAL        |0       |       0|    406| 422|
|24 months |GMS-Nepal      |NEPAL        |0       |       1|     13| 422|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       0|      2|   3|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   3|
|24 months |MAL-ED         |SOUTH AFRICA |0       |       0|      1|   3|
|24 months |MAL-ED         |SOUTH AFRICA |0       |       1|      0|   3|
|24 months |NIH-Crypto     |BANGLADESH   |1       |       0|    237| 392|
|24 months |NIH-Crypto     |BANGLADESH   |1       |       1|      2| 392|
|24 months |NIH-Crypto     |BANGLADESH   |0       |       0|    153| 392|
|24 months |NIH-Crypto     |BANGLADESH   |0       |       1|      0| 392|
|24 months |PROVIDE        |BANGLADESH   |1       |       0|    482| 579|
|24 months |PROVIDE        |BANGLADESH   |1       |       1|      7| 579|
|24 months |PROVIDE        |BANGLADESH   |0       |       0|     88| 579|
|24 months |PROVIDE        |BANGLADESH   |0       |       1|      2| 579|
|24 months |Vellore Crypto |INDIA        |1       |       0|    231| 395|
|24 months |Vellore Crypto |INDIA        |1       |       1|      4| 395|
|24 months |Vellore Crypto |INDIA        |0       |       0|    160| 395|
|24 months |Vellore Crypto |INDIA        |0       |       1|      0| 395|


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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


