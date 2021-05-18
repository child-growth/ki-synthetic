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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |trth2o | ever_stunted| n_cell|   n|
|:--------------------------|:--------------|:------------|:------|------------:|------:|---:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1      |            0|     15| 110|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1      |            1|     95| 110|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0      |            0|      0| 110|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0      |            1|      0| 110|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1      |            0|      1|   3|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1      |            1|      0|   3|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0      |            0|      0|   3|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0      |            1|      2|   3|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1      |            0|      3|  13|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |1      |            1|      3|  13|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0      |            0|      4|  13|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |0      |            1|      3|  13|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1      |            0|     46| 101|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |1      |            1|     52| 101|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0      |            0|      2| 101|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |0      |            1|      1| 101|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1      |            0|     20|  58|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1      |            1|     29|  58|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0      |            0|      5|  58|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0      |            1|      4|  58|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1      |            0|     43|  82|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |1      |            1|     17|  82|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0      |            0|     13|  82|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |0      |            1|      9|  82|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1      |            0|     13|  75|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |1      |            1|      1|  75|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0      |            0|     50|  75|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |0      |            1|     11|  75|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1      |            0|      1|  40|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |1      |            1|      4|  40|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0      |            0|      4|  40|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |0      |            1|     31|  40|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1      |            0|      4|  14|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1      |            1|      1|  14|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0      |            0|      5|  14|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0      |            1|      4|  14|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1      |            0|    228| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1      |            1|    149| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0      |            0|    168| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0      |            1|    108| 653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1      |            0|      6| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1      |            1|      3| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0      |            0|    389| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0      |            1|    235| 633|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1      |            0|     37| 100|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |1      |            1|     63| 100|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0      |            0|      0| 100|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |0      |            1|      0| 100|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1      |            0|     61| 107|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1      |            1|     46| 107|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0      |            0|      0| 107|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0      |            1|      0| 107|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1      |            0|      1|   3|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1      |            1|      0|   3|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0      |            0|      2|   3|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0      |            1|      0|   3|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1      |            0|      5|  13|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |1      |            1|      1|  13|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0      |            0|      6|  13|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |0      |            1|      1|  13|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1      |            0|     82| 101|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |1      |            1|     16| 101|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0      |            0|      3| 101|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |0      |            1|      0| 101|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1      |            0|     31|  58|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1      |            1|     18|  58|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0      |            0|      5|  58|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0      |            1|      4|  58|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1      |            0|     56|  82|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |1      |            1|      4|  82|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0      |            0|     20|  82|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |0      |            1|      2|  82|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1      |            0|     13|  75|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |1      |            1|      1|  75|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0      |            0|     56|  75|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |0      |            1|      5|  75|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1      |            0|      4|  40|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |1      |            1|      1|  40|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0      |            0|     25|  40|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |0      |            1|     10|  40|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1      |            0|      4|  14|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1      |            1|      1|  14|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0      |            0|      7|  14|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0      |            1|      2|  14|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1      |            0|    307| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1      |            1|     70| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0      |            0|    222| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0      |            1|     54| 653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1      |            0|      9| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1      |            1|      0| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0      |            0|    523| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0      |            1|    101| 633|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1      |            0|     62| 100|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |1      |            1|     38| 100|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0      |            0|      0| 100|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |0      |            1|      0| 100|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1      |            0|     15|  65|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |1      |            1|     50|  65|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0      |            0|      0|  65|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |0      |            1|      0|  65|
|6-24 months                |GMS-Nepal      |NEPAL        |1      |            0|      1|   3|
|6-24 months                |GMS-Nepal      |NEPAL        |1      |            1|      0|   3|
|6-24 months                |GMS-Nepal      |NEPAL        |0      |            0|      0|   3|
|6-24 months                |GMS-Nepal      |NEPAL        |0      |            1|      2|   3|
|6-24 months                |MAL-ED         |INDIA        |1      |            0|      3|  11|
|6-24 months                |MAL-ED         |INDIA        |1      |            1|      2|  11|
|6-24 months                |MAL-ED         |INDIA        |0      |            0|      4|  11|
|6-24 months                |MAL-ED         |INDIA        |0      |            1|      2|  11|
|6-24 months                |MAL-ED         |BANGLADESH   |1      |            0|     40|  79|
|6-24 months                |MAL-ED         |BANGLADESH   |1      |            1|     36|  79|
|6-24 months                |MAL-ED         |BANGLADESH   |0      |            0|      2|  79|
|6-24 months                |MAL-ED         |BANGLADESH   |0      |            1|      1|  79|
|6-24 months                |MAL-ED         |PERU         |1      |            0|     16|  30|
|6-24 months                |MAL-ED         |PERU         |1      |            1|     11|  30|
|6-24 months                |MAL-ED         |PERU         |0      |            0|      3|  30|
|6-24 months                |MAL-ED         |PERU         |0      |            1|      0|  30|
|6-24 months                |MAL-ED         |NEPAL        |1      |            0|     42|  75|
|6-24 months                |MAL-ED         |NEPAL        |1      |            1|     13|  75|
|6-24 months                |MAL-ED         |NEPAL        |0      |            0|     13|  75|
|6-24 months                |MAL-ED         |NEPAL        |0      |            1|      7|  75|
|6-24 months                |MAL-ED         |BRAZIL       |1      |            0|     12|  62|
|6-24 months                |MAL-ED         |BRAZIL       |1      |            1|      0|  62|
|6-24 months                |MAL-ED         |BRAZIL       |0      |            0|     44|  62|
|6-24 months                |MAL-ED         |BRAZIL       |0      |            1|      6|  62|
|6-24 months                |MAL-ED         |TANZANIA     |1      |            0|      1|  27|
|6-24 months                |MAL-ED         |TANZANIA     |1      |            1|      3|  27|
|6-24 months                |MAL-ED         |TANZANIA     |0      |            0|      2|  27|
|6-24 months                |MAL-ED         |TANZANIA     |0      |            1|     21|  27|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1      |            0|      1|   8|
|6-24 months                |MAL-ED         |SOUTH AFRICA |1      |            1|      0|   8|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0      |            0|      5|   8|
|6-24 months                |MAL-ED         |SOUTH AFRICA |0      |            1|      2|   8|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1      |            0|    213| 506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |1      |            1|     79| 506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0      |            0|    160| 506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |0      |            1|     54| 506|
|6-24 months                |PROVIDE        |BANGLADESH   |1      |            0|      6| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |1      |            1|      3| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |0      |            0|    313| 456|
|6-24 months                |PROVIDE        |BANGLADESH   |0      |            1|    134| 456|
|6-24 months                |Vellore Crypto |INDIA        |1      |            0|     37|  62|
|6-24 months                |Vellore Crypto |INDIA        |1      |            1|     25|  62|
|6-24 months                |Vellore Crypto |INDIA        |0      |            0|      0|  62|
|6-24 months                |Vellore Crypto |INDIA        |0      |            1|      0|  62|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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


