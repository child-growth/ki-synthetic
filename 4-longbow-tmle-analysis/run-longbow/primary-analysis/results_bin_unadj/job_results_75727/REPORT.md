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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |trth2o | pers_wast| n_cell|   n|
|:-----------|:--------------|:------------|:------|---------:|------:|---:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |         0|    122| 133|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |         1|     11| 133|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0      |         0|      0| 133|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0      |         1|      0| 133|
|0-24 months |GMS-Nepal      |NEPAL        |1      |         0|      1|   4|
|0-24 months |GMS-Nepal      |NEPAL        |1      |         1|      0|   4|
|0-24 months |GMS-Nepal      |NEPAL        |0      |         0|      2|   4|
|0-24 months |GMS-Nepal      |NEPAL        |0      |         1|      1|   4|
|0-24 months |MAL-ED         |INDIA        |1      |         0|      9|  19|
|0-24 months |MAL-ED         |INDIA        |1      |         1|      0|  19|
|0-24 months |MAL-ED         |INDIA        |0      |         0|      8|  19|
|0-24 months |MAL-ED         |INDIA        |0      |         1|      2|  19|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         0|    107| 115|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         1|      5| 115|
|0-24 months |MAL-ED         |BANGLADESH   |0      |         0|      2| 115|
|0-24 months |MAL-ED         |BANGLADESH   |0      |         1|      1| 115|
|0-24 months |MAL-ED         |PERU         |1      |         0|     48|  57|
|0-24 months |MAL-ED         |PERU         |1      |         1|      1|  57|
|0-24 months |MAL-ED         |PERU         |0      |         0|      8|  57|
|0-24 months |MAL-ED         |PERU         |0      |         1|      0|  57|
|0-24 months |MAL-ED         |NEPAL        |1      |         0|     67|  93|
|0-24 months |MAL-ED         |NEPAL        |1      |         1|      2|  93|
|0-24 months |MAL-ED         |NEPAL        |0      |         0|     23|  93|
|0-24 months |MAL-ED         |NEPAL        |0      |         1|      1|  93|
|0-24 months |MAL-ED         |BRAZIL       |1      |         0|     15|  79|
|0-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|  79|
|0-24 months |MAL-ED         |BRAZIL       |0      |         0|     63|  79|
|0-24 months |MAL-ED         |BRAZIL       |0      |         1|      1|  79|
|0-24 months |MAL-ED         |TANZANIA     |1      |         0|      6|  44|
|0-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|  44|
|0-24 months |MAL-ED         |TANZANIA     |0      |         0|     38|  44|
|0-24 months |MAL-ED         |TANZANIA     |0      |         1|      0|  44|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|      4|  14|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|  14|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |         0|     10|  14|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |         1|      0|  14|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |         0|    411| 730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |         1|     11| 730|
|0-24 months |NIH-Crypto     |BANGLADESH   |0      |         0|    293| 730|
|0-24 months |NIH-Crypto     |BANGLADESH   |0      |         1|     15| 730|
|0-24 months |PROVIDE        |BANGLADESH   |1      |         0|     10| 641|
|0-24 months |PROVIDE        |BANGLADESH   |1      |         1|      0| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0      |         0|    616| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0      |         1|     15| 641|
|0-24 months |Vellore Crypto |INDIA        |1      |         0|    106| 118|
|0-24 months |Vellore Crypto |INDIA        |1      |         1|     12| 118|
|0-24 months |Vellore Crypto |INDIA        |0      |         0|      0| 118|
|0-24 months |Vellore Crypto |INDIA        |0      |         1|      0| 118|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |         0|    114| 127|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |         1|     13| 127|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0      |         0|      0| 127|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0      |         1|      0| 127|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |         0|      1|   4|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |         1|      0|   4|
|0-6 months  |GMS-Nepal      |NEPAL        |0      |         0|      2|   4|
|0-6 months  |GMS-Nepal      |NEPAL        |0      |         1|      1|   4|
|0-6 months  |MAL-ED         |INDIA        |1      |         0|      9|  19|
|0-6 months  |MAL-ED         |INDIA        |1      |         1|      0|  19|
|0-6 months  |MAL-ED         |INDIA        |0      |         0|      9|  19|
|0-6 months  |MAL-ED         |INDIA        |0      |         1|      1|  19|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         0|    110| 115|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         1|      2| 115|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |         0|      3| 115|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |         1|      0| 115|
|0-6 months  |MAL-ED         |PERU         |1      |         0|     49|  57|
|0-6 months  |MAL-ED         |PERU         |1      |         1|      0|  57|
|0-6 months  |MAL-ED         |PERU         |0      |         0|      8|  57|
|0-6 months  |MAL-ED         |PERU         |0      |         1|      0|  57|
|0-6 months  |MAL-ED         |NEPAL        |1      |         0|     66|  93|
|0-6 months  |MAL-ED         |NEPAL        |1      |         1|      3|  93|
|0-6 months  |MAL-ED         |NEPAL        |0      |         0|     22|  93|
|0-6 months  |MAL-ED         |NEPAL        |0      |         1|      2|  93|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         0|     15|  79|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         1|      0|  79|
|0-6 months  |MAL-ED         |BRAZIL       |0      |         0|     63|  79|
|0-6 months  |MAL-ED         |BRAZIL       |0      |         1|      1|  79|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         0|      6|  44|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         1|      0|  44|
|0-6 months  |MAL-ED         |TANZANIA     |0      |         0|     38|  44|
|0-6 months  |MAL-ED         |TANZANIA     |0      |         1|      0|  44|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         0|      4|  14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         1|      0|  14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |         0|      9|  14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |         1|      1|  14|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |         0|    142| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |         1|      2| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0      |         0|    103| 250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0      |         1|      3| 250|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |         0|     10| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |         1|      0| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |0      |         0|    614| 638|
|0-6 months  |PROVIDE        |BANGLADESH   |0      |         1|     14| 638|
|0-6 months  |Vellore Crypto |INDIA        |1      |         0|     98| 115|
|0-6 months  |Vellore Crypto |INDIA        |1      |         1|     17| 115|
|0-6 months  |Vellore Crypto |INDIA        |0      |         0|      0| 115|
|0-6 months  |Vellore Crypto |INDIA        |0      |         1|      0| 115|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |         0|    122| 133|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |         1|     11| 133|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0      |         0|      0| 133|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0      |         1|      0| 133|
|6-24 months |GMS-Nepal      |NEPAL        |1      |         0|      1|   4|
|6-24 months |GMS-Nepal      |NEPAL        |1      |         1|      0|   4|
|6-24 months |GMS-Nepal      |NEPAL        |0      |         0|      2|   4|
|6-24 months |GMS-Nepal      |NEPAL        |0      |         1|      1|   4|
|6-24 months |MAL-ED         |INDIA        |1      |         0|      9|  19|
|6-24 months |MAL-ED         |INDIA        |1      |         1|      0|  19|
|6-24 months |MAL-ED         |INDIA        |0      |         0|      8|  19|
|6-24 months |MAL-ED         |INDIA        |0      |         1|      2|  19|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         0|    107| 115|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         1|      5| 115|
|6-24 months |MAL-ED         |BANGLADESH   |0      |         0|      2| 115|
|6-24 months |MAL-ED         |BANGLADESH   |0      |         1|      1| 115|
|6-24 months |MAL-ED         |PERU         |1      |         0|     48|  57|
|6-24 months |MAL-ED         |PERU         |1      |         1|      1|  57|
|6-24 months |MAL-ED         |PERU         |0      |         0|      8|  57|
|6-24 months |MAL-ED         |PERU         |0      |         1|      0|  57|
|6-24 months |MAL-ED         |NEPAL        |1      |         0|     67|  93|
|6-24 months |MAL-ED         |NEPAL        |1      |         1|      2|  93|
|6-24 months |MAL-ED         |NEPAL        |0      |         0|     23|  93|
|6-24 months |MAL-ED         |NEPAL        |0      |         1|      1|  93|
|6-24 months |MAL-ED         |BRAZIL       |1      |         0|     15|  79|
|6-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|  79|
|6-24 months |MAL-ED         |BRAZIL       |0      |         0|     63|  79|
|6-24 months |MAL-ED         |BRAZIL       |0      |         1|      1|  79|
|6-24 months |MAL-ED         |TANZANIA     |1      |         0|      6|  44|
|6-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|  44|
|6-24 months |MAL-ED         |TANZANIA     |0      |         0|     38|  44|
|6-24 months |MAL-ED         |TANZANIA     |0      |         1|      0|  44|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|      4|  14|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|  14|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |         0|     10|  14|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |         1|      0|  14|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |         0|    411| 730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |         1|     11| 730|
|6-24 months |NIH-Crypto     |BANGLADESH   |0      |         0|    293| 730|
|6-24 months |NIH-Crypto     |BANGLADESH   |0      |         1|     15| 730|
|6-24 months |PROVIDE        |BANGLADESH   |1      |         0|     10| 641|
|6-24 months |PROVIDE        |BANGLADESH   |1      |         1|      0| 641|
|6-24 months |PROVIDE        |BANGLADESH   |0      |         0|    616| 641|
|6-24 months |PROVIDE        |BANGLADESH   |0      |         1|     15| 641|
|6-24 months |Vellore Crypto |INDIA        |1      |         0|    106| 118|
|6-24 months |Vellore Crypto |INDIA        |1      |         1|     12| 118|
|6-24 months |Vellore Crypto |INDIA        |0      |         0|      0| 118|
|6-24 months |Vellore Crypto |INDIA        |0      |         1|      0| 118|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


