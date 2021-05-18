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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |cleanck | pers_wast| n_cell|   n|
|:-----------|:--------------|:------------|:-------|---------:|------:|---:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|    141| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      8| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         0|    209| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         1|     15| 373|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         0|      6| 520|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         1|      0| 520|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         0|    448| 520|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         1|     66| 520|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|      2|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         0|      2|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         1|      0|   4|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         0|    329| 555|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         1|     10| 555|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         0|    209| 555|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         1|      7| 555|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         0|    528| 641|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         1|     10| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         0|     98| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         1|      5| 641|
|0-24 months |Vellore Crypto |INDIA        |1       |         0|    208| 396|
|0-24 months |Vellore Crypto |INDIA        |1       |         1|     27| 396|
|0-24 months |Vellore Crypto |INDIA        |0       |         0|    144| 396|
|0-24 months |Vellore Crypto |INDIA        |0       |         1|     17| 396|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         0|    130| 358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |         1|     11| 358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |         0|    178| 358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |         1|     39| 358|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         0|      6| 494|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |         1|      0| 494|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |         0|    431| 494|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |         1|     57| 494|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         0|      2|   4|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   4|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |         0|      2|   4|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |         1|      0|   4|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |         0|    123| 196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |         1|      2| 196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |         0|     69| 196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |         1|      2| 196|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         0|    524| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |         1|     11| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |         0|    100| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |         1|      3| 638|
|0-6 months  |Vellore Crypto |INDIA        |1       |         0|    195| 388|
|0-6 months  |Vellore Crypto |INDIA        |1       |         1|     36| 388|
|0-6 months  |Vellore Crypto |INDIA        |0       |         0|    133| 388|
|0-6 months  |Vellore Crypto |INDIA        |0       |         1|     24| 388|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|    141| 373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      8| 373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |         0|    209| 373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |         1|     15| 373|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         0|      6| 520|
|6-24 months |GMS-Nepal      |NEPAL        |1       |         1|      0| 520|
|6-24 months |GMS-Nepal      |NEPAL        |0       |         0|    448| 520|
|6-24 months |GMS-Nepal      |NEPAL        |0       |         1|     66| 520|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|      2|   4|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   4|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |         0|      2|   4|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |         1|      0|   4|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |         0|    329| 555|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |         1|     10| 555|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |         0|    209| 555|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |         1|      7| 555|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         0|    528| 641|
|6-24 months |PROVIDE        |BANGLADESH   |1       |         1|     10| 641|
|6-24 months |PROVIDE        |BANGLADESH   |0       |         0|     98| 641|
|6-24 months |PROVIDE        |BANGLADESH   |0       |         1|      5| 641|
|6-24 months |Vellore Crypto |INDIA        |1       |         0|    208| 396|
|6-24 months |Vellore Crypto |INDIA        |1       |         1|     27| 396|
|6-24 months |Vellore Crypto |INDIA        |0       |         0|    144| 396|
|6-24 months |Vellore Crypto |INDIA        |0       |         1|     17| 396|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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


