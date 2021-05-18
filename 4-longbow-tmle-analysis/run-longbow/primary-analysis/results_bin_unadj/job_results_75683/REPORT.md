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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |cleanck | ever_swasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:-------|------------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            0|    134| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            1|     14| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            0|    179| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            1|     41| 368|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            0|      7| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            1|      0| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            0|    464| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            1|    106| 577|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            0|      2|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   4|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            0|    341| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            1|     10| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            0|    220| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            1|      4| 575|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            0|    563| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            1|     13| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            0|    105| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            1|      6| 687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |            0|    189| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |            1|     45| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |            0|    132| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |            1|     29| 395|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |            0|    133| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |            1|      8| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |            0|    187| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |            1|     22| 350|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |            0|      7| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |            1|      0| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |            0|    528| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |            1|     26| 561|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |            0|      2|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   4|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |            0|    349| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |            1|      1| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |            0|    223| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |            1|      0| 573|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |            0|    569| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |            1|      3| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |            0|    108| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |            1|      3| 683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |            0|    191| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |            1|     34| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |            0|    130| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |            1|     22| 377|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |            0|    142| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |            1|      7| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |            0|    201| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |            1|     23| 373|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |            0|      6| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |            1|      0| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |            0|    415| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |            1|     92| 513|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   3|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |            0|    330| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |            1|      9| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |            0|    211| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |            1|      5| 555|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |            0|    507| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |            1|     10| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |            0|     95| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |            1|      3| 615|
|6-24 months                 |Vellore Crypto |INDIA        |1       |            0|    221| 396|
|6-24 months                 |Vellore Crypto |INDIA        |1       |            1|     14| 396|
|6-24 months                 |Vellore Crypto |INDIA        |0       |            0|    151| 396|
|6-24 months                 |Vellore Crypto |INDIA        |0       |            1|     10| 396|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


