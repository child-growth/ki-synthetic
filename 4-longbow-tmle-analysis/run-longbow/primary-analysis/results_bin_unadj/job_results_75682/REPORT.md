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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |trth2o | ever_swasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:------|------------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1      |            0|    113| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1      |            1|     19| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0      |            0|      0| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0      |            1|      0| 132|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1      |            0|      1|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1      |            1|      0|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0      |            0|      2|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0      |            1|      1|   4|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1      |            0|      9|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1      |            1|      0|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0      |            0|      9|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0      |            1|      0|  18|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1      |            0|    114| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1      |            1|      3| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0      |            0|      3| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0      |            1|      0| 120|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1      |            0|     52|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1      |            1|      1|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0      |            0|      9|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0      |            1|      0|  62|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1      |            0|     69|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1      |            1|      0|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0      |            0|     24|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0      |            1|      0|  93|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1      |            0|     15|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1      |            1|      0|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0      |            0|     68|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0      |            1|      3|  86|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1      |            0|      6|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1      |            1|      0|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0      |            0|     38|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0      |            1|      2|  46|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1      |            0|      7|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1      |            1|      0|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0      |            0|     10|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0      |            1|      1|  18|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1      |            0|    422| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1      |            1|     13| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0      |            0|    312| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0      |            1|      7| 754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1      |            0|      9| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1      |            1|      2| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0      |            0|    659| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0      |            1|     17| 687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1      |            0|     92| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1      |            1|     26| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0      |            0|      0| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0      |            1|      0| 118|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1      |            0|    117| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1      |            1|      8| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0      |            0|      0| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0      |            1|      0| 125|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1      |            0|      1|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1      |            1|      0|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0      |            0|      2|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0      |            1|      1|   4|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1      |            0|      9|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1      |            1|      0|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0      |            0|      9|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0      |            1|      0|  18|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1      |            0|    115| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1      |            1|      1| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0      |            0|      3| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0      |            1|      0| 119|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1      |            0|     53|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1      |            1|      0|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0      |            0|      9|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0      |            1|      0|  62|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1      |            0|     69|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1      |            1|      0|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0      |            0|     23|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0      |            1|      0|  92|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1      |            0|     15|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1      |            1|      0|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0      |            0|     69|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0      |            1|      2|  86|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1      |            0|      6|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1      |            1|      0|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0      |            0|     40|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0      |            1|      0|  46|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1      |            0|      7|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1      |            1|      0|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0      |            0|     10|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0      |            1|      1|  18|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1      |            0|    433| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1      |            1|      1| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0      |            0|    315| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0      |            1|      0| 749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1      |            0|     10| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1      |            1|      1| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0      |            0|    667| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0      |            1|      5| 683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1      |            0|     94| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1      |            1|     21| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0      |            0|      0| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0      |            1|      0| 115|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1      |            0|    120| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1      |            1|     13| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0      |            0|      0| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0      |            1|      0| 133|
|6-24 months                 |GMS-Nepal      |NEPAL        |1      |            0|      1|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |1      |            1|      0|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |0      |            0|      2|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |0      |            1|      1|   4|
|6-24 months                 |MAL-ED         |INDIA        |1      |            0|      9|  18|
|6-24 months                 |MAL-ED         |INDIA        |1      |            1|      0|  18|
|6-24 months                 |MAL-ED         |INDIA        |0      |            0|      9|  18|
|6-24 months                 |MAL-ED         |INDIA        |0      |            1|      0|  18|
|6-24 months                 |MAL-ED         |BANGLADESH   |1      |            0|    104| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |1      |            1|      2| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |0      |            0|      3| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |0      |            1|      0| 109|
|6-24 months                 |MAL-ED         |PERU         |1      |            0|     45|  53|
|6-24 months                 |MAL-ED         |PERU         |1      |            1|      1|  53|
|6-24 months                 |MAL-ED         |PERU         |0      |            0|      7|  53|
|6-24 months                 |MAL-ED         |PERU         |0      |            1|      0|  53|
|6-24 months                 |MAL-ED         |NEPAL        |1      |            0|     68|  92|
|6-24 months                 |MAL-ED         |NEPAL        |1      |            1|      0|  92|
|6-24 months                 |MAL-ED         |NEPAL        |0      |            0|     24|  92|
|6-24 months                 |MAL-ED         |NEPAL        |0      |            1|      0|  92|
|6-24 months                 |MAL-ED         |BRAZIL       |1      |            0|     14|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |1      |            1|      0|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |0      |            0|     61|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |0      |            1|      1|  76|
|6-24 months                 |MAL-ED         |TANZANIA     |1      |            0|      6|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |1      |            1|      0|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |0      |            0|     35|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |0      |            1|      2|  43|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1      |            0|      4|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1      |            1|      0|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0      |            0|      9|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0      |            1|      0|  13|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1      |            0|    410| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1      |            1|     12| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0      |            0|    300| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0      |            1|      8| 730|
|6-24 months                 |PROVIDE        |BANGLADESH   |1      |            0|      9| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1      |            1|      1| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0      |            0|    593| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0      |            1|     12| 615|
|6-24 months                 |Vellore Crypto |INDIA        |1      |            0|    113| 118|
|6-24 months                 |Vellore Crypto |INDIA        |1      |            1|      5| 118|
|6-24 months                 |Vellore Crypto |INDIA        |0      |            0|      0| 118|
|6-24 months                 |Vellore Crypto |INDIA        |0      |            1|      0| 118|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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


