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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |trth2o | wast_rec90d| n_cell|   n|
|:-----------|:--------------|:------------|:------|-----------:|------:|---:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|     34| 100|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|     66| 100|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0      |           0|      0| 100|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0      |           1|      0| 100|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           0|      0|   4|
|0-24 months |GMS-Nepal      |NEPAL        |1      |           1|      1|   4|
|0-24 months |GMS-Nepal      |NEPAL        |0      |           0|      2|   4|
|0-24 months |GMS-Nepal      |NEPAL        |0      |           1|      1|   4|
|0-24 months |MAL-ED         |INDIA        |1      |           0|      0|  10|
|0-24 months |MAL-ED         |INDIA        |1      |           1|      2|  10|
|0-24 months |MAL-ED         |INDIA        |0      |           0|      3|  10|
|0-24 months |MAL-ED         |INDIA        |0      |           1|      5|  10|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           0|     18|  58|
|0-24 months |MAL-ED         |BANGLADESH   |1      |           1|     36|  58|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           0|      1|  58|
|0-24 months |MAL-ED         |BANGLADESH   |0      |           1|      3|  58|
|0-24 months |MAL-ED         |PERU         |1      |           0|      1|  10|
|0-24 months |MAL-ED         |PERU         |1      |           1|      7|  10|
|0-24 months |MAL-ED         |PERU         |0      |           0|      1|  10|
|0-24 months |MAL-ED         |PERU         |0      |           1|      1|  10|
|0-24 months |MAL-ED         |NEPAL        |1      |           0|      9|  51|
|0-24 months |MAL-ED         |NEPAL        |1      |           1|     31|  51|
|0-24 months |MAL-ED         |NEPAL        |0      |           0|      3|  51|
|0-24 months |MAL-ED         |NEPAL        |0      |           1|      8|  51|
|0-24 months |MAL-ED         |BRAZIL       |1      |           0|      0|  10|
|0-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|  10|
|0-24 months |MAL-ED         |BRAZIL       |0      |           0|      3|  10|
|0-24 months |MAL-ED         |BRAZIL       |0      |           1|      7|  10|
|0-24 months |MAL-ED         |TANZANIA     |1      |           0|      0|   8|
|0-24 months |MAL-ED         |TANZANIA     |1      |           1|      2|   8|
|0-24 months |MAL-ED         |TANZANIA     |0      |           0|      2|   8|
|0-24 months |MAL-ED         |TANZANIA     |0      |           1|      4|   8|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|      1|   4|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|      2|   4|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|     65| 310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|    102| 310|
|0-24 months |NIH-Crypto     |BANGLADESH   |0      |           0|     52| 310|
|0-24 months |NIH-Crypto     |BANGLADESH   |0      |           1|     91| 310|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           0|      2| 308|
|0-24 months |PROVIDE        |BANGLADESH   |1      |           1|      1| 308|
|0-24 months |PROVIDE        |BANGLADESH   |0      |           0|    127| 308|
|0-24 months |PROVIDE        |BANGLADESH   |0      |           1|    178| 308|
|0-24 months |Vellore Crypto |INDIA        |1      |           0|     45| 106|
|0-24 months |Vellore Crypto |INDIA        |1      |           1|     61| 106|
|0-24 months |Vellore Crypto |INDIA        |0      |           0|      0| 106|
|0-24 months |Vellore Crypto |INDIA        |0      |           1|      0| 106|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           0|     14|  62|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |           1|     48|  62|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0      |           0|      0|  62|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0      |           1|      0|  62|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           0|      0|   2|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |           1|      0|   2|
|0-6 months  |GMS-Nepal      |NEPAL        |0      |           0|      1|   2|
|0-6 months  |GMS-Nepal      |NEPAL        |0      |           1|      1|   2|
|0-6 months  |MAL-ED         |INDIA        |1      |           0|      0|   7|
|0-6 months  |MAL-ED         |INDIA        |1      |           1|      2|   7|
|0-6 months  |MAL-ED         |INDIA        |0      |           0|      1|   7|
|0-6 months  |MAL-ED         |INDIA        |0      |           1|      4|   7|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           0|      4|  27|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |           1|     22|  27|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           0|      0|  27|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |           1|      1|  27|
|0-6 months  |MAL-ED         |PERU         |1      |           0|      0|   4|
|0-6 months  |MAL-ED         |PERU         |1      |           1|      4|   4|
|0-6 months  |MAL-ED         |PERU         |0      |           0|      0|   4|
|0-6 months  |MAL-ED         |PERU         |0      |           1|      0|   4|
|0-6 months  |MAL-ED         |NEPAL        |1      |           0|      4|  22|
|0-6 months  |MAL-ED         |NEPAL        |1      |           1|     14|  22|
|0-6 months  |MAL-ED         |NEPAL        |0      |           0|      2|  22|
|0-6 months  |MAL-ED         |NEPAL        |0      |           1|      2|  22|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           0|      0|   7|
|0-6 months  |MAL-ED         |BRAZIL       |1      |           1|      0|   7|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           0|      1|   7|
|0-6 months  |MAL-ED         |BRAZIL       |0      |           1|      6|   7|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           0|      0|   3|
|0-6 months  |MAL-ED         |TANZANIA     |1      |           1|      1|   3|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           0|      1|   3|
|0-6 months  |MAL-ED         |TANZANIA     |0      |           1|      1|   3|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   2|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |           1|      1|   2|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           0|      1|   2|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |           1|      0|   2|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           0|     10| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |           1|     93| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0      |           0|     11| 197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0      |           1|     83| 197|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           0|      1| 185|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |           1|      1| 185|
|0-6 months  |PROVIDE        |BANGLADESH   |0      |           0|     39| 185|
|0-6 months  |PROVIDE        |BANGLADESH   |0      |           1|    144| 185|
|0-6 months  |Vellore Crypto |INDIA        |1      |           0|     26|  68|
|0-6 months  |Vellore Crypto |INDIA        |1      |           1|     42|  68|
|0-6 months  |Vellore Crypto |INDIA        |0      |           0|      0|  68|
|0-6 months  |Vellore Crypto |INDIA        |0      |           1|      0|  68|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           0|     20|  38|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |           1|     18|  38|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0      |           0|      0|  38|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0      |           1|      0|  38|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           0|      0|   2|
|6-24 months |GMS-Nepal      |NEPAL        |1      |           1|      1|   2|
|6-24 months |GMS-Nepal      |NEPAL        |0      |           0|      1|   2|
|6-24 months |GMS-Nepal      |NEPAL        |0      |           1|      0|   2|
|6-24 months |MAL-ED         |INDIA        |1      |           0|      0|   3|
|6-24 months |MAL-ED         |INDIA        |1      |           1|      0|   3|
|6-24 months |MAL-ED         |INDIA        |0      |           0|      2|   3|
|6-24 months |MAL-ED         |INDIA        |0      |           1|      1|   3|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           0|     14|  31|
|6-24 months |MAL-ED         |BANGLADESH   |1      |           1|     14|  31|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           0|      1|  31|
|6-24 months |MAL-ED         |BANGLADESH   |0      |           1|      2|  31|
|6-24 months |MAL-ED         |PERU         |1      |           0|      1|   6|
|6-24 months |MAL-ED         |PERU         |1      |           1|      3|   6|
|6-24 months |MAL-ED         |PERU         |0      |           0|      1|   6|
|6-24 months |MAL-ED         |PERU         |0      |           1|      1|   6|
|6-24 months |MAL-ED         |NEPAL        |1      |           0|      5|  29|
|6-24 months |MAL-ED         |NEPAL        |1      |           1|     17|  29|
|6-24 months |MAL-ED         |NEPAL        |0      |           0|      1|  29|
|6-24 months |MAL-ED         |NEPAL        |0      |           1|      6|  29|
|6-24 months |MAL-ED         |BRAZIL       |1      |           0|      0|   3|
|6-24 months |MAL-ED         |BRAZIL       |1      |           1|      0|   3|
|6-24 months |MAL-ED         |BRAZIL       |0      |           0|      2|   3|
|6-24 months |MAL-ED         |BRAZIL       |0      |           1|      1|   3|
|6-24 months |MAL-ED         |TANZANIA     |1      |           0|      0|   5|
|6-24 months |MAL-ED         |TANZANIA     |1      |           1|      1|   5|
|6-24 months |MAL-ED         |TANZANIA     |0      |           0|      1|   5|
|6-24 months |MAL-ED         |TANZANIA     |0      |           1|      3|   5|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           0|      0|   2|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |           1|      0|   2|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           0|      0|   2|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |           1|      2|   2|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           0|     55| 113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |           1|      9| 113|
|6-24 months |NIH-Crypto     |BANGLADESH   |0      |           0|     41| 113|
|6-24 months |NIH-Crypto     |BANGLADESH   |0      |           1|      8| 113|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           0|      1| 123|
|6-24 months |PROVIDE        |BANGLADESH   |1      |           1|      0| 123|
|6-24 months |PROVIDE        |BANGLADESH   |0      |           0|     88| 123|
|6-24 months |PROVIDE        |BANGLADESH   |0      |           1|     34| 123|
|6-24 months |Vellore Crypto |INDIA        |1      |           0|     19|  38|
|6-24 months |Vellore Crypto |INDIA        |1      |           1|     19|  38|
|6-24 months |Vellore Crypto |INDIA        |0      |           0|      0|  38|
|6-24 months |Vellore Crypto |INDIA        |0      |           1|      0|  38|


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


