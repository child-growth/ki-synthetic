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

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |cleanck | ever_wasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:-------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           0|     96| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           1|     52| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           0|    106| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           1|    114| 368|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           0|      4| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           1|      3| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           0|    291| 577|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           1|    279| 577|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           0|      2|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           1|      0|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           0|      2|   4|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           1|      0|   4|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           0|    302| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           1|     49| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           0|    196| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           1|     28| 575|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           0|    480| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           1|     96| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           0|     85| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           1|     26| 687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |           0|    112| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |           1|    122| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |           0|     77| 395|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |           1|     84| 395|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           0|    104| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           1|     37| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           0|    138| 350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           1|     71| 350|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           0|      7| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           1|      0| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           0|    452| 561|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           1|    102| 561|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           0|      2|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           1|      0|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           0|      2|   4|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           1|      0|   4|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           0|    340| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           1|     10| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           0|    217| 573|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           1|      6| 573|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           0|    546| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           1|     26| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           0|    100| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           1|     11| 683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |           0|    146| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |           1|     79| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |           0|    100| 377|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |           1|     52| 377|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |           0|    121| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |           1|     28| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |           0|    153| 373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |           1|     71| 373|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |           0|      3| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |           1|      3| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |           0|    271| 513|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |           1|    236| 513|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |           0|      2|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |           1|      0|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |           0|      1|   3|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |           1|      0|   3|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |           0|    297| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |           1|     42| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |           0|    191| 555|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |           1|     25| 555|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |           0|    438| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |           1|     79| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |           0|     78| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |           1|     20| 615|
|6-24 months                 |Vellore Crypto |INDIA        |1       |           0|    161| 396|
|6-24 months                 |Vellore Crypto |INDIA        |1       |           1|     74| 396|
|6-24 months                 |Vellore Crypto |INDIA        |0       |           0|    114| 396|
|6-24 months                 |Vellore Crypto |INDIA        |0       |           1|     47| 396|


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
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
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


