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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |trth2o | ever_wasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1      |           0|     79| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1      |           1|     53| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0      |           0|      0| 132|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0      |           1|      0| 132|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1      |           0|      0|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1      |           1|      1|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0      |           0|      2|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0      |           1|      1|   4|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1      |           0|      9|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1      |           1|      0|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0      |           0|      6|  18|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0      |           1|      3|  18|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1      |           0|     94| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1      |           1|     23| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0      |           0|      1| 120|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0      |           1|      2| 120|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1      |           0|     48|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1      |           1|      5|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0      |           0|      8|  62|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0      |           1|      1|  62|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1      |           0|     49|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1      |           1|     20|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0      |           0|     19|  93|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0      |           1|      5|  93|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1      |           0|     15|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1      |           1|      0|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0      |           0|     65|  86|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0      |           1|      6|  86|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1      |           0|      4|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1      |           1|      2|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0      |           0|     35|  46|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0      |           1|      5|  46|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1      |           0|      7|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1      |           1|      0|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0      |           0|      9|  18|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0      |           1|      2|  18|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1      |           0|    376| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1      |           1|     59| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0      |           0|    270| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0      |           1|     49| 754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1      |           0|      9| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1      |           1|      2| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0      |           0|    556| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0      |           1|    120| 687|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1      |           0|     57| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1      |           1|     61| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0      |           0|      0| 118|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0      |           1|      0| 118|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1      |           0|     91| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1      |           1|     34| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0      |           0|      0| 125|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0      |           1|      0| 125|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1      |           0|      1|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1      |           1|      0|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0      |           0|      2|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0      |           1|      1|   4|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1      |           0|      9|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1      |           1|      0|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0      |           0|      7|  18|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0      |           1|      2|  18|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1      |           0|    110| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1      |           1|      6| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0      |           0|      3| 119|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0      |           1|      0| 119|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1      |           0|     52|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1      |           1|      1|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0      |           0|      9|  62|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0      |           1|      0|  62|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1      |           0|     61|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1      |           1|      8|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0      |           0|     23|  92|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0      |           1|      0|  92|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1      |           0|     15|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1      |           1|      0|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0      |           0|     67|  86|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0      |           1|      4|  86|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1      |           0|      5|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1      |           1|      1|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0      |           0|     39|  46|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0      |           1|      1|  46|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1      |           0|      7|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1      |           1|      0|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0      |           0|     10|  18|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0      |           1|      1|  18|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1      |           0|    424| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1      |           1|     10| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0      |           0|    305| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0      |           1|     10| 749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1      |           0|     10| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1      |           1|      1| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0      |           0|    636| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0      |           1|     36| 683|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1      |           0|     78| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1      |           1|     37| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0      |           0|      0| 115|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0      |           1|      0| 115|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1      |           0|    102| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1      |           1|     31| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0      |           0|      0| 133|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0      |           1|      0| 133|
|6-24 months                 |GMS-Nepal      |NEPAL        |1      |           0|      0|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |1      |           1|      1|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |0      |           0|      2|   4|
|6-24 months                 |GMS-Nepal      |NEPAL        |0      |           1|      1|   4|
|6-24 months                 |MAL-ED         |INDIA        |1      |           0|      9|  18|
|6-24 months                 |MAL-ED         |INDIA        |1      |           1|      0|  18|
|6-24 months                 |MAL-ED         |INDIA        |0      |           0|      7|  18|
|6-24 months                 |MAL-ED         |INDIA        |0      |           1|      2|  18|
|6-24 months                 |MAL-ED         |BANGLADESH   |1      |           0|     88| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |1      |           1|     18| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |0      |           0|      1| 109|
|6-24 months                 |MAL-ED         |BANGLADESH   |0      |           1|      2| 109|
|6-24 months                 |MAL-ED         |PERU         |1      |           0|     42|  53|
|6-24 months                 |MAL-ED         |PERU         |1      |           1|      4|  53|
|6-24 months                 |MAL-ED         |PERU         |0      |           0|      6|  53|
|6-24 months                 |MAL-ED         |PERU         |0      |           1|      1|  53|
|6-24 months                 |MAL-ED         |NEPAL        |1      |           0|     54|  92|
|6-24 months                 |MAL-ED         |NEPAL        |1      |           1|     14|  92|
|6-24 months                 |MAL-ED         |NEPAL        |0      |           0|     19|  92|
|6-24 months                 |MAL-ED         |NEPAL        |0      |           1|      5|  92|
|6-24 months                 |MAL-ED         |BRAZIL       |1      |           0|     14|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |1      |           1|      0|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |0      |           0|     59|  76|
|6-24 months                 |MAL-ED         |BRAZIL       |0      |           1|      3|  76|
|6-24 months                 |MAL-ED         |TANZANIA     |1      |           0|      5|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |1      |           1|      1|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |0      |           0|     33|  43|
|6-24 months                 |MAL-ED         |TANZANIA     |0      |           1|      4|  43|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1      |           0|      4|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1      |           1|      0|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0      |           0|      7|  13|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0      |           1|      2|  13|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1      |           0|    369| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1      |           1|     53| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0      |           0|    265| 730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0      |           1|     43| 730|
|6-24 months                 |PROVIDE        |BANGLADESH   |1      |           0|      9| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1      |           1|      1| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0      |           0|    507| 615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0      |           1|     98| 615|
|6-24 months                 |Vellore Crypto |INDIA        |1      |           0|     86| 118|
|6-24 months                 |Vellore Crypto |INDIA        |1      |           1|     32| 118|
|6-24 months                 |Vellore Crypto |INDIA        |0      |           0|      0| 118|
|6-24 months                 |Vellore Crypto |INDIA        |0      |           1|      0| 118|


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
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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


