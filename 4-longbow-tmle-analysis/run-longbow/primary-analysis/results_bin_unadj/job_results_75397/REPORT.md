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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |trth2o | sstunted| n_cell|   n|
|:---------|:--------------|:------------|:------|--------:|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |        0|     33|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |        1|      1|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |        0|      0|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |        1|      0|  34|
|Birth     |GMS-Nepal      |NEPAL        |1      |        0|      1|   4|
|Birth     |GMS-Nepal      |NEPAL        |1      |        1|      0|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |        0|      3|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |        1|      0|   4|
|Birth     |MAL-ED         |INDIA        |1      |        0|      2|   3|
|Birth     |MAL-ED         |INDIA        |1      |        1|      0|   3|
|Birth     |MAL-ED         |INDIA        |0      |        0|      1|   3|
|Birth     |MAL-ED         |INDIA        |0      |        1|      0|   3|
|Birth     |MAL-ED         |BANGLADESH   |1      |        0|     99| 103|
|Birth     |MAL-ED         |BANGLADESH   |1      |        1|      2| 103|
|Birth     |MAL-ED         |BANGLADESH   |0      |        0|      2| 103|
|Birth     |MAL-ED         |BANGLADESH   |0      |        1|      0| 103|
|Birth     |MAL-ED         |PERU         |1      |        0|     38|  47|
|Birth     |MAL-ED         |PERU         |1      |        1|      1|  47|
|Birth     |MAL-ED         |PERU         |0      |        0|      8|  47|
|Birth     |MAL-ED         |PERU         |0      |        1|      0|  47|
|Birth     |MAL-ED         |NEPAL        |1      |        0|      6|   9|
|Birth     |MAL-ED         |NEPAL        |1      |        1|      0|   9|
|Birth     |MAL-ED         |NEPAL        |0      |        0|      3|   9|
|Birth     |MAL-ED         |NEPAL        |0      |        1|      0|   9|
|Birth     |MAL-ED         |BRAZIL       |1      |        0|      0|  17|
|Birth     |MAL-ED         |BRAZIL       |1      |        1|      0|  17|
|Birth     |MAL-ED         |BRAZIL       |0      |        0|     16|  17|
|Birth     |MAL-ED         |BRAZIL       |0      |        1|      1|  17|
|Birth     |MAL-ED         |TANZANIA     |1      |        0|      4|  20|
|Birth     |MAL-ED         |TANZANIA     |1      |        1|      0|  20|
|Birth     |MAL-ED         |TANZANIA     |0      |        0|     14|  20|
|Birth     |MAL-ED         |TANZANIA     |0      |        1|      2|  20|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        0|      5|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |        1|      0|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |        0|      3|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |        1|      0|   8|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |        0|    417| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |        1|      5| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |        0|    305| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |        1|      5| 732|
|Birth     |PROVIDE        |BANGLADESH   |1      |        0|      8| 539|
|Birth     |PROVIDE        |BANGLADESH   |1      |        1|      0| 539|
|Birth     |PROVIDE        |BANGLADESH   |0      |        0|    527| 539|
|Birth     |PROVIDE        |BANGLADESH   |0      |        1|      4| 539|
|Birth     |Vellore Crypto |INDIA        |1      |        0|    109| 115|
|Birth     |Vellore Crypto |INDIA        |1      |        1|      6| 115|
|Birth     |Vellore Crypto |INDIA        |0      |        0|      0| 115|
|Birth     |Vellore Crypto |INDIA        |0      |        1|      0| 115|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |        0|    117| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |        1|     14| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |        0|      0| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |        1|      0| 131|
|6 months  |GMS-Nepal      |NEPAL        |1      |        0|      1|   4|
|6 months  |GMS-Nepal      |NEPAL        |1      |        1|      0|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |        0|      3|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |        1|      0|   4|
|6 months  |MAL-ED         |INDIA        |1      |        0|      7|  18|
|6 months  |MAL-ED         |INDIA        |1      |        1|      2|  18|
|6 months  |MAL-ED         |INDIA        |0      |        0|      9|  18|
|6 months  |MAL-ED         |INDIA        |0      |        1|      0|  18|
|6 months  |MAL-ED         |BANGLADESH   |1      |        0|    105| 111|
|6 months  |MAL-ED         |BANGLADESH   |1      |        1|      3| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |        0|      3| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |        1|      0| 111|
|6 months  |MAL-ED         |PERU         |1      |        0|     47|  54|
|6 months  |MAL-ED         |PERU         |1      |        1|      0|  54|
|6 months  |MAL-ED         |PERU         |0      |        0|      6|  54|
|6 months  |MAL-ED         |PERU         |0      |        1|      1|  54|
|6 months  |MAL-ED         |NEPAL        |1      |        0|     68|  92|
|6 months  |MAL-ED         |NEPAL        |1      |        1|      0|  92|
|6 months  |MAL-ED         |NEPAL        |0      |        0|     24|  92|
|6 months  |MAL-ED         |NEPAL        |0      |        1|      0|  92|
|6 months  |MAL-ED         |BRAZIL       |1      |        0|     14|  76|
|6 months  |MAL-ED         |BRAZIL       |1      |        1|      0|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |        0|     62|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |        1|      0|  76|
|6 months  |MAL-ED         |TANZANIA     |1      |        0|      6|  42|
|6 months  |MAL-ED         |TANZANIA     |1      |        1|      0|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |        0|     34|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |        1|      2|  42|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        0|      4|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |        1|      0|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |        0|      8|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |        1|      0|  12|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |        0|    403| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |        1|     11| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |        0|    289| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |        1|     12| 715|
|6 months  |PROVIDE        |BANGLADESH   |1      |        0|      9| 604|
|6 months  |PROVIDE        |BANGLADESH   |1      |        1|      0| 604|
|6 months  |PROVIDE        |BANGLADESH   |0      |        0|    581| 604|
|6 months  |PROVIDE        |BANGLADESH   |0      |        1|     14| 604|
|6 months  |Vellore Crypto |INDIA        |1      |        0|    105| 116|
|6 months  |Vellore Crypto |INDIA        |1      |        1|     11| 116|
|6 months  |Vellore Crypto |INDIA        |0      |        0|      0| 116|
|6 months  |Vellore Crypto |INDIA        |0      |        1|      0| 116|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |        0|     87| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |        1|     45| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |        0|      0| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |        1|      0| 132|
|24 months |GMS-Nepal      |NEPAL        |1      |        0|      1|   3|
|24 months |GMS-Nepal      |NEPAL        |1      |        1|      0|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |        0|      2|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |        1|      0|   3|
|24 months |MAL-ED         |INDIA        |1      |        0|      7|  17|
|24 months |MAL-ED         |INDIA        |1      |        1|      2|  17|
|24 months |MAL-ED         |INDIA        |0      |        0|      7|  17|
|24 months |MAL-ED         |INDIA        |0      |        1|      1|  17|
|24 months |MAL-ED         |BANGLADESH   |1      |        0|     86|  97|
|24 months |MAL-ED         |BANGLADESH   |1      |        1|      9|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |        0|      2|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |        1|      0|  97|
|24 months |MAL-ED         |PERU         |1      |        0|     28|  36|
|24 months |MAL-ED         |PERU         |1      |        1|      2|  36|
|24 months |MAL-ED         |PERU         |0      |        0|      3|  36|
|24 months |MAL-ED         |PERU         |0      |        1|      3|  36|
|24 months |MAL-ED         |NEPAL        |1      |        0|     65|  91|
|24 months |MAL-ED         |NEPAL        |1      |        1|      3|  91|
|24 months |MAL-ED         |NEPAL        |0      |        0|     23|  91|
|24 months |MAL-ED         |NEPAL        |0      |        1|      0|  91|
|24 months |MAL-ED         |BRAZIL       |1      |        0|     13|  58|
|24 months |MAL-ED         |BRAZIL       |1      |        1|      0|  58|
|24 months |MAL-ED         |BRAZIL       |0      |        0|     45|  58|
|24 months |MAL-ED         |BRAZIL       |0      |        1|      0|  58|
|24 months |MAL-ED         |TANZANIA     |1      |        0|      4|  39|
|24 months |MAL-ED         |TANZANIA     |1      |        1|      1|  39|
|24 months |MAL-ED         |TANZANIA     |0      |        0|     19|  39|
|24 months |MAL-ED         |TANZANIA     |0      |        1|     15|  39|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        0|      4|  11|
|24 months |MAL-ED         |SOUTH AFRICA |1      |        1|      0|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |        0|      7|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |        1|      0|  11|
|24 months |NIH-Crypto     |BANGLADESH   |1      |        0|    283| 514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |        1|     17| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |        0|    195| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |        1|     19| 514|
|24 months |PROVIDE        |BANGLADESH   |1      |        0|      9| 578|
|24 months |PROVIDE        |BANGLADESH   |1      |        1|      0| 578|
|24 months |PROVIDE        |BANGLADESH   |0      |        0|    517| 578|
|24 months |PROVIDE        |BANGLADESH   |0      |        1|     52| 578|
|24 months |Vellore Crypto |INDIA        |1      |        0|    106| 117|
|24 months |Vellore Crypto |INDIA        |1      |        1|     11| 117|
|24 months |Vellore Crypto |INDIA        |0      |        0|      0| 117|
|24 months |Vellore Crypto |INDIA        |0      |        1|      0| 117|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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


