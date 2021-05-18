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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country    |vagbrth | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1       |         0|    325|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1       |         1|     20|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0       |         0|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0       |         1|      3|   373|
|0-24 months |JiVitA-3       |BANGLADESH |1       |         0|  13927| 15699|
|0-24 months |JiVitA-3       |BANGLADESH |1       |         1|    850| 15699|
|0-24 months |JiVitA-3       |BANGLADESH |0       |         0|    880| 15699|
|0-24 months |JiVitA-3       |BANGLADESH |0       |         1|     42| 15699|
|0-24 months |JiVitA-4       |BANGLADESH |1       |         0|   3730|  4413|
|0-24 months |JiVitA-4       |BANGLADESH |1       |         1|    335|  4413|
|0-24 months |JiVitA-4       |BANGLADESH |0       |         0|    325|  4413|
|0-24 months |JiVitA-4       |BANGLADESH |0       |         1|     23|  4413|
|0-24 months |NIH-Crypto     |BANGLADESH |1       |         0|    255|   464|
|0-24 months |NIH-Crypto     |BANGLADESH |1       |         1|     11|   464|
|0-24 months |NIH-Crypto     |BANGLADESH |0       |         0|    193|   464|
|0-24 months |NIH-Crypto     |BANGLADESH |0       |         1|      5|   464|
|0-24 months |PROBIT         |BELARUS    |1       |         0|  14615| 16583|
|0-24 months |PROBIT         |BELARUS    |1       |         1|    122| 16583|
|0-24 months |PROBIT         |BELARUS    |0       |         0|   1834| 16583|
|0-24 months |PROBIT         |BELARUS    |0       |         1|     12| 16583|
|0-24 months |PROVIDE        |BANGLADESH |1       |         0|    488|   641|
|0-24 months |PROVIDE        |BANGLADESH |1       |         1|     12|   641|
|0-24 months |PROVIDE        |BANGLADESH |0       |         0|    138|   641|
|0-24 months |PROVIDE        |BANGLADESH |0       |         1|      3|   641|
|0-24 months |TanzaniaChild2 |TANZANIA   |1       |         0|   1933|  2150|
|0-24 months |TanzaniaChild2 |TANZANIA   |1       |         1|     55|  2150|
|0-24 months |TanzaniaChild2 |TANZANIA   |0       |         0|    160|  2150|
|0-24 months |TanzaniaChild2 |TANZANIA   |0       |         1|      2|  2150|
|0-24 months |Vellore Crypto |INDIA      |1       |         0|    293|   410|
|0-24 months |Vellore Crypto |INDIA      |1       |         1|     39|   410|
|0-24 months |Vellore Crypto |INDIA      |0       |         0|     69|   410|
|0-24 months |Vellore Crypto |INDIA      |0       |         1|      9|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE   |1       |         0|   8524|  9443|
|0-24 months |ZVITAMBO       |ZIMBABWE   |1       |         1|    161|  9443|
|0-24 months |ZVITAMBO       |ZIMBABWE   |0       |         0|    752|  9443|
|0-24 months |ZVITAMBO       |ZIMBABWE   |0       |         1|      6|  9443|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1       |         0|    284|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1       |         1|     48|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0       |         0|     24|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0       |         1|      2|   358|
|0-6 months  |JiVitA-3       |BANGLADESH |1       |         0|     46|    49|
|0-6 months  |JiVitA-3       |BANGLADESH |1       |         1|      2|    49|
|0-6 months  |JiVitA-3       |BANGLADESH |0       |         0|      1|    49|
|0-6 months  |JiVitA-3       |BANGLADESH |0       |         1|      0|    49|
|0-6 months  |NIH-Crypto     |BANGLADESH |1       |         0|     89|   162|
|0-6 months  |NIH-Crypto     |BANGLADESH |1       |         1|      2|   162|
|0-6 months  |NIH-Crypto     |BANGLADESH |0       |         0|     70|   162|
|0-6 months  |NIH-Crypto     |BANGLADESH |0       |         1|      1|   162|
|0-6 months  |PROBIT         |BELARUS    |1       |         0|  11075| 13534|
|0-6 months  |PROBIT         |BELARUS    |1       |         1|    978| 13534|
|0-6 months  |PROBIT         |BELARUS    |0       |         0|   1362| 13534|
|0-6 months  |PROBIT         |BELARUS    |0       |         1|    119| 13534|
|0-6 months  |PROVIDE        |BANGLADESH |1       |         0|    489|   638|
|0-6 months  |PROVIDE        |BANGLADESH |1       |         1|     10|   638|
|0-6 months  |PROVIDE        |BANGLADESH |0       |         0|    135|   638|
|0-6 months  |PROVIDE        |BANGLADESH |0       |         1|      4|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1       |         0|   1844|  2047|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1       |         1|     47|  2047|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0       |         0|    152|  2047|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0       |         1|      4|  2047|
|0-6 months  |Vellore Crypto |INDIA      |1       |         0|    274|   402|
|0-6 months  |Vellore Crypto |INDIA      |1       |         1|     53|   402|
|0-6 months  |Vellore Crypto |INDIA      |0       |         0|     64|   402|
|0-6 months  |Vellore Crypto |INDIA      |0       |         1|     11|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE   |1       |         0|    562|   629|
|0-6 months  |ZVITAMBO       |ZIMBABWE   |1       |         1|     14|   629|
|0-6 months  |ZVITAMBO       |ZIMBABWE   |0       |         0|     53|   629|
|0-6 months  |ZVITAMBO       |ZIMBABWE   |0       |         1|      0|   629|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1       |         0|    325|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1       |         1|     20|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0       |         0|     25|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0       |         1|      3|   373|
|6-24 months |JiVitA-3       |BANGLADESH |1       |         0|  13927| 15699|
|6-24 months |JiVitA-3       |BANGLADESH |1       |         1|    850| 15699|
|6-24 months |JiVitA-3       |BANGLADESH |0       |         0|    880| 15699|
|6-24 months |JiVitA-3       |BANGLADESH |0       |         1|     42| 15699|
|6-24 months |JiVitA-4       |BANGLADESH |1       |         0|   3730|  4413|
|6-24 months |JiVitA-4       |BANGLADESH |1       |         1|    335|  4413|
|6-24 months |JiVitA-4       |BANGLADESH |0       |         0|    325|  4413|
|6-24 months |JiVitA-4       |BANGLADESH |0       |         1|     23|  4413|
|6-24 months |NIH-Crypto     |BANGLADESH |1       |         0|    255|   464|
|6-24 months |NIH-Crypto     |BANGLADESH |1       |         1|     11|   464|
|6-24 months |NIH-Crypto     |BANGLADESH |0       |         0|    193|   464|
|6-24 months |NIH-Crypto     |BANGLADESH |0       |         1|      5|   464|
|6-24 months |PROBIT         |BELARUS    |1       |         0|  14615| 16583|
|6-24 months |PROBIT         |BELARUS    |1       |         1|    122| 16583|
|6-24 months |PROBIT         |BELARUS    |0       |         0|   1834| 16583|
|6-24 months |PROBIT         |BELARUS    |0       |         1|     12| 16583|
|6-24 months |PROVIDE        |BANGLADESH |1       |         0|    488|   641|
|6-24 months |PROVIDE        |BANGLADESH |1       |         1|     12|   641|
|6-24 months |PROVIDE        |BANGLADESH |0       |         0|    138|   641|
|6-24 months |PROVIDE        |BANGLADESH |0       |         1|      3|   641|
|6-24 months |TanzaniaChild2 |TANZANIA   |1       |         0|   1933|  2150|
|6-24 months |TanzaniaChild2 |TANZANIA   |1       |         1|     55|  2150|
|6-24 months |TanzaniaChild2 |TANZANIA   |0       |         0|    160|  2150|
|6-24 months |TanzaniaChild2 |TANZANIA   |0       |         1|      2|  2150|
|6-24 months |Vellore Crypto |INDIA      |1       |         0|    293|   410|
|6-24 months |Vellore Crypto |INDIA      |1       |         1|     39|   410|
|6-24 months |Vellore Crypto |INDIA      |0       |         0|     69|   410|
|6-24 months |Vellore Crypto |INDIA      |0       |         1|      9|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE   |1       |         0|   8524|  9443|
|6-24 months |ZVITAMBO       |ZIMBABWE   |1       |         1|    161|  9443|
|6-24 months |ZVITAMBO       |ZIMBABWE   |0       |         0|    752|  9443|
|6-24 months |ZVITAMBO       |ZIMBABWE   |0       |         1|      6|  9443|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





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


