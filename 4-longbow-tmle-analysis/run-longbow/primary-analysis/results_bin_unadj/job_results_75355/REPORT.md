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

**Outcome Variable:** stunted

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

|agecat    |studyid        |country      |trth2o | stunted| n_cell|   n|
|:---------|:--------------|:------------|:------|-------:|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       0|     29|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       1|      5|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       0|      0|  34|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       1|      0|  34|
|Birth     |GMS-Nepal      |NEPAL        |1      |       0|      1|   4|
|Birth     |GMS-Nepal      |NEPAL        |1      |       1|      0|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |       0|      2|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |       1|      1|   4|
|Birth     |MAL-ED         |INDIA        |1      |       0|      1|   3|
|Birth     |MAL-ED         |INDIA        |1      |       1|      1|   3|
|Birth     |MAL-ED         |INDIA        |0      |       0|      1|   3|
|Birth     |MAL-ED         |INDIA        |0      |       1|      0|   3|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|     84| 103|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|     17| 103|
|Birth     |MAL-ED         |BANGLADESH   |0      |       0|      2| 103|
|Birth     |MAL-ED         |BANGLADESH   |0      |       1|      0| 103|
|Birth     |MAL-ED         |PERU         |1      |       0|     37|  47|
|Birth     |MAL-ED         |PERU         |1      |       1|      2|  47|
|Birth     |MAL-ED         |PERU         |0      |       0|      8|  47|
|Birth     |MAL-ED         |PERU         |0      |       1|      0|  47|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      6|   9|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|   9|
|Birth     |MAL-ED         |NEPAL        |0      |       0|      3|   9|
|Birth     |MAL-ED         |NEPAL        |0      |       1|      0|   9|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|      0|  17|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|  17|
|Birth     |MAL-ED         |BRAZIL       |0      |       0|     14|  17|
|Birth     |MAL-ED         |BRAZIL       |0      |       1|      3|  17|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      3|  20|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      1|  20|
|Birth     |MAL-ED         |TANZANIA     |0      |       0|     14|  20|
|Birth     |MAL-ED         |TANZANIA     |0      |       1|      2|  20|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|      4|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      1|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       0|      3|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       1|      0|   8|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       0|    364| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       1|     58| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       0|    267| 732|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       1|     43| 732|
|Birth     |PROVIDE        |BANGLADESH   |1      |       0|      6| 539|
|Birth     |PROVIDE        |BANGLADESH   |1      |       1|      2| 539|
|Birth     |PROVIDE        |BANGLADESH   |0      |       0|    485| 539|
|Birth     |PROVIDE        |BANGLADESH   |0      |       1|     46| 539|
|Birth     |Vellore Crypto |INDIA        |1      |       0|     97| 115|
|Birth     |Vellore Crypto |INDIA        |1      |       1|     18| 115|
|Birth     |Vellore Crypto |INDIA        |0      |       0|      0| 115|
|Birth     |Vellore Crypto |INDIA        |0      |       1|      0| 115|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       0|     91| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       1|     40| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       0|      0| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       1|      0| 131|
|6 months  |GMS-Nepal      |NEPAL        |1      |       0|      1|   4|
|6 months  |GMS-Nepal      |NEPAL        |1      |       1|      0|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |       0|      3|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |       1|      0|   4|
|6 months  |MAL-ED         |INDIA        |1      |       0|      6|  18|
|6 months  |MAL-ED         |INDIA        |1      |       1|      3|  18|
|6 months  |MAL-ED         |INDIA        |0      |       0|      7|  18|
|6 months  |MAL-ED         |INDIA        |0      |       1|      2|  18|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|     91| 111|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|     17| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |       0|      3| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |       1|      0| 111|
|6 months  |MAL-ED         |PERU         |1      |       0|     37|  54|
|6 months  |MAL-ED         |PERU         |1      |       1|     10|  54|
|6 months  |MAL-ED         |PERU         |0      |       0|      4|  54|
|6 months  |MAL-ED         |PERU         |0      |       1|      3|  54|
|6 months  |MAL-ED         |NEPAL        |1      |       0|     64|  92|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      4|  92|
|6 months  |MAL-ED         |NEPAL        |0      |       0|     23|  92|
|6 months  |MAL-ED         |NEPAL        |0      |       1|      1|  92|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|     14|  76|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |       0|     61|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |       1|      1|  76|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|      5|  42|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      1|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |       0|     25|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |       1|     11|  42|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|      4|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      0|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       0|      8|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       1|      0|  12|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       0|    324| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       1|     90| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       0|    241| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       1|     60| 715|
|6 months  |PROVIDE        |BANGLADESH   |1      |       0|      9| 604|
|6 months  |PROVIDE        |BANGLADESH   |1      |       1|      0| 604|
|6 months  |PROVIDE        |BANGLADESH   |0      |       0|    499| 604|
|6 months  |PROVIDE        |BANGLADESH   |0      |       1|     96| 604|
|6 months  |Vellore Crypto |INDIA        |1      |       0|     83| 116|
|6 months  |Vellore Crypto |INDIA        |1      |       1|     33| 116|
|6 months  |Vellore Crypto |INDIA        |0      |       0|      0| 116|
|6 months  |Vellore Crypto |INDIA        |0      |       1|      0| 116|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       0|     47| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       1|     85| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       0|      0| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       1|      0| 132|
|24 months |GMS-Nepal      |NEPAL        |1      |       0|      1|   3|
|24 months |GMS-Nepal      |NEPAL        |1      |       1|      0|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |       0|      2|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |       1|      0|   3|
|24 months |MAL-ED         |INDIA        |1      |       0|      4|  17|
|24 months |MAL-ED         |INDIA        |1      |       1|      5|  17|
|24 months |MAL-ED         |INDIA        |0      |       0|      5|  17|
|24 months |MAL-ED         |INDIA        |0      |       1|      3|  17|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|     50|  97|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|     45|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |       0|      2|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |       1|      0|  97|
|24 months |MAL-ED         |PERU         |1      |       0|     22|  36|
|24 months |MAL-ED         |PERU         |1      |       1|      8|  36|
|24 months |MAL-ED         |PERU         |0      |       0|      2|  36|
|24 months |MAL-ED         |PERU         |0      |       1|      4|  36|
|24 months |MAL-ED         |NEPAL        |1      |       0|     54|  91|
|24 months |MAL-ED         |NEPAL        |1      |       1|     14|  91|
|24 months |MAL-ED         |NEPAL        |0      |       0|     14|  91|
|24 months |MAL-ED         |NEPAL        |0      |       1|      9|  91|
|24 months |MAL-ED         |BRAZIL       |1      |       0|     13|  58|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|  58|
|24 months |MAL-ED         |BRAZIL       |0      |       0|     44|  58|
|24 months |MAL-ED         |BRAZIL       |0      |       1|      1|  58|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      1|  39|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      4|  39|
|24 months |MAL-ED         |TANZANIA     |0      |       0|      6|  39|
|24 months |MAL-ED         |TANZANIA     |0      |       1|     28|  39|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|      4|  11|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      0|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       0|      6|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       1|      1|  11|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       0|    235| 514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       1|     65| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       0|    147| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       1|     67| 514|
|24 months |PROVIDE        |BANGLADESH   |1      |       0|      6| 578|
|24 months |PROVIDE        |BANGLADESH   |1      |       1|      3| 578|
|24 months |PROVIDE        |BANGLADESH   |0      |       0|    382| 578|
|24 months |PROVIDE        |BANGLADESH   |0      |       1|    187| 578|
|24 months |Vellore Crypto |INDIA        |1      |       0|     71| 117|
|24 months |Vellore Crypto |INDIA        |1      |       1|     46| 117|
|24 months |Vellore Crypto |INDIA        |0      |       0|      0| 117|
|24 months |Vellore Crypto |INDIA        |0      |       1|      0| 117|


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


