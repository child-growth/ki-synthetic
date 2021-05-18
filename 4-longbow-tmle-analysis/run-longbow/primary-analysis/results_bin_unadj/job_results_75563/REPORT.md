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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |trth2o | swasted| n_cell|   n|
|:---------|:--------------|:------------|:------|-------:|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       0|     32|  32|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |       1|      0|  32|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       0|      0|  32|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |       1|      0|  32|
|Birth     |GMS-Nepal      |NEPAL        |1      |       0|      1|   4|
|Birth     |GMS-Nepal      |NEPAL        |1      |       1|      0|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |       0|      2|   4|
|Birth     |GMS-Nepal      |NEPAL        |0      |       1|      1|   4|
|Birth     |MAL-ED         |INDIA        |1      |       0|      2|   3|
|Birth     |MAL-ED         |INDIA        |1      |       1|      0|   3|
|Birth     |MAL-ED         |INDIA        |0      |       0|      1|   3|
|Birth     |MAL-ED         |INDIA        |0      |       1|      0|   3|
|Birth     |MAL-ED         |BANGLADESH   |1      |       0|     93|  98|
|Birth     |MAL-ED         |BANGLADESH   |1      |       1|      3|  98|
|Birth     |MAL-ED         |BANGLADESH   |0      |       0|      2|  98|
|Birth     |MAL-ED         |BANGLADESH   |0      |       1|      0|  98|
|Birth     |MAL-ED         |PERU         |1      |       0|     38|  46|
|Birth     |MAL-ED         |PERU         |1      |       1|      0|  46|
|Birth     |MAL-ED         |PERU         |0      |       0|      8|  46|
|Birth     |MAL-ED         |PERU         |0      |       1|      0|  46|
|Birth     |MAL-ED         |NEPAL        |1      |       0|      6|   9|
|Birth     |MAL-ED         |NEPAL        |1      |       1|      0|   9|
|Birth     |MAL-ED         |NEPAL        |0      |       0|      3|   9|
|Birth     |MAL-ED         |NEPAL        |0      |       1|      0|   9|
|Birth     |MAL-ED         |BRAZIL       |1      |       0|      0|  16|
|Birth     |MAL-ED         |BRAZIL       |1      |       1|      0|  16|
|Birth     |MAL-ED         |BRAZIL       |0      |       0|     16|  16|
|Birth     |MAL-ED         |BRAZIL       |0      |       1|      0|  16|
|Birth     |MAL-ED         |TANZANIA     |1      |       0|      4|  18|
|Birth     |MAL-ED         |TANZANIA     |1      |       1|      0|  18|
|Birth     |MAL-ED         |TANZANIA     |0      |       0|     14|  18|
|Birth     |MAL-ED         |TANZANIA     |0      |       1|      0|  18|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       0|      5|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |       1|      0|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       0|      3|   8|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |       1|      0|   8|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       0|    383| 707|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |       1|     25| 707|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       0|    277| 707|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |       1|     22| 707|
|Birth     |PROVIDE        |BANGLADESH   |1      |       0|      7| 532|
|Birth     |PROVIDE        |BANGLADESH   |1      |       1|      0| 532|
|Birth     |PROVIDE        |BANGLADESH   |0      |       0|    512| 532|
|Birth     |PROVIDE        |BANGLADESH   |0      |       1|     13| 532|
|Birth     |Vellore Crypto |INDIA        |1      |       0|     89| 102|
|Birth     |Vellore Crypto |INDIA        |1      |       1|     13| 102|
|Birth     |Vellore Crypto |INDIA        |0      |       0|      0| 102|
|Birth     |Vellore Crypto |INDIA        |0      |       1|      0| 102|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       0|    129| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |       1|      2| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       0|      0| 131|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |       1|      0| 131|
|6 months  |GMS-Nepal      |NEPAL        |1      |       0|      1|   4|
|6 months  |GMS-Nepal      |NEPAL        |1      |       1|      0|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |       0|      3|   4|
|6 months  |GMS-Nepal      |NEPAL        |0      |       1|      0|   4|
|6 months  |MAL-ED         |INDIA        |1      |       0|      9|  18|
|6 months  |MAL-ED         |INDIA        |1      |       1|      0|  18|
|6 months  |MAL-ED         |INDIA        |0      |       0|      9|  18|
|6 months  |MAL-ED         |INDIA        |0      |       1|      0|  18|
|6 months  |MAL-ED         |BANGLADESH   |1      |       0|    107| 111|
|6 months  |MAL-ED         |BANGLADESH   |1      |       1|      1| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |       0|      3| 111|
|6 months  |MAL-ED         |BANGLADESH   |0      |       1|      0| 111|
|6 months  |MAL-ED         |PERU         |1      |       0|     47|  54|
|6 months  |MAL-ED         |PERU         |1      |       1|      0|  54|
|6 months  |MAL-ED         |PERU         |0      |       0|      7|  54|
|6 months  |MAL-ED         |PERU         |0      |       1|      0|  54|
|6 months  |MAL-ED         |NEPAL        |1      |       0|     68|  92|
|6 months  |MAL-ED         |NEPAL        |1      |       1|      0|  92|
|6 months  |MAL-ED         |NEPAL        |0      |       0|     24|  92|
|6 months  |MAL-ED         |NEPAL        |0      |       1|      0|  92|
|6 months  |MAL-ED         |BRAZIL       |1      |       0|     14|  76|
|6 months  |MAL-ED         |BRAZIL       |1      |       1|      0|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |       0|     62|  76|
|6 months  |MAL-ED         |BRAZIL       |0      |       1|      0|  76|
|6 months  |MAL-ED         |TANZANIA     |1      |       0|      6|  42|
|6 months  |MAL-ED         |TANZANIA     |1      |       1|      0|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |       0|     36|  42|
|6 months  |MAL-ED         |TANZANIA     |0      |       1|      0|  42|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       0|      4|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |       1|      0|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       0|      7|  12|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |       1|      1|  12|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       0|    414| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |       1|      0| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       0|    301| 715|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |       1|      0| 715|
|6 months  |PROVIDE        |BANGLADESH   |1      |       0|      9| 603|
|6 months  |PROVIDE        |BANGLADESH   |1      |       1|      0| 603|
|6 months  |PROVIDE        |BANGLADESH   |0      |       0|    589| 603|
|6 months  |PROVIDE        |BANGLADESH   |0      |       1|      5| 603|
|6 months  |Vellore Crypto |INDIA        |1      |       0|    108| 117|
|6 months  |Vellore Crypto |INDIA        |1      |       1|      9| 117|
|6 months  |Vellore Crypto |INDIA        |0      |       0|      0| 117|
|6 months  |Vellore Crypto |INDIA        |0      |       1|      0| 117|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       0|    131| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |       1|      1| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       0|      0| 132|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |       1|      0| 132|
|24 months |GMS-Nepal      |NEPAL        |1      |       0|      1|   3|
|24 months |GMS-Nepal      |NEPAL        |1      |       1|      0|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |       0|      2|   3|
|24 months |GMS-Nepal      |NEPAL        |0      |       1|      0|   3|
|24 months |MAL-ED         |INDIA        |1      |       0|      9|  17|
|24 months |MAL-ED         |INDIA        |1      |       1|      0|  17|
|24 months |MAL-ED         |INDIA        |0      |       0|      8|  17|
|24 months |MAL-ED         |INDIA        |0      |       1|      0|  17|
|24 months |MAL-ED         |BANGLADESH   |1      |       0|     95|  97|
|24 months |MAL-ED         |BANGLADESH   |1      |       1|      0|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |       0|      2|  97|
|24 months |MAL-ED         |BANGLADESH   |0      |       1|      0|  97|
|24 months |MAL-ED         |PERU         |1      |       0|     29|  36|
|24 months |MAL-ED         |PERU         |1      |       1|      1|  36|
|24 months |MAL-ED         |PERU         |0      |       0|      6|  36|
|24 months |MAL-ED         |PERU         |0      |       1|      0|  36|
|24 months |MAL-ED         |NEPAL        |1      |       0|     68|  91|
|24 months |MAL-ED         |NEPAL        |1      |       1|      0|  91|
|24 months |MAL-ED         |NEPAL        |0      |       0|     23|  91|
|24 months |MAL-ED         |NEPAL        |0      |       1|      0|  91|
|24 months |MAL-ED         |BRAZIL       |1      |       0|     13|  58|
|24 months |MAL-ED         |BRAZIL       |1      |       1|      0|  58|
|24 months |MAL-ED         |BRAZIL       |0      |       0|     44|  58|
|24 months |MAL-ED         |BRAZIL       |0      |       1|      1|  58|
|24 months |MAL-ED         |TANZANIA     |1      |       0|      5|  39|
|24 months |MAL-ED         |TANZANIA     |1      |       1|      0|  39|
|24 months |MAL-ED         |TANZANIA     |0      |       0|     34|  39|
|24 months |MAL-ED         |TANZANIA     |0      |       1|      0|  39|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       0|      4|  11|
|24 months |MAL-ED         |SOUTH AFRICA |1      |       1|      0|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       0|      7|  11|
|24 months |MAL-ED         |SOUTH AFRICA |0      |       1|      0|  11|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       0|    297| 514|
|24 months |NIH-Crypto     |BANGLADESH   |1      |       1|      3| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       0|    213| 514|
|24 months |NIH-Crypto     |BANGLADESH   |0      |       1|      1| 514|
|24 months |PROVIDE        |BANGLADESH   |1      |       0|      9| 579|
|24 months |PROVIDE        |BANGLADESH   |1      |       1|      0| 579|
|24 months |PROVIDE        |BANGLADESH   |0      |       0|    561| 579|
|24 months |PROVIDE        |BANGLADESH   |0      |       1|      9| 579|
|24 months |Vellore Crypto |INDIA        |1      |       0|    117| 117|
|24 months |Vellore Crypto |INDIA        |1      |       1|      0| 117|
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
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


