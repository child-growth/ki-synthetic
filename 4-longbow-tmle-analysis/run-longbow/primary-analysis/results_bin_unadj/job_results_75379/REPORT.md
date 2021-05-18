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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |hdlvry | sstunted| n_cell|    n|
|:---------|:--------------|:----------|:------|--------:|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |        0|      1|   91|
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |        1|      0|   91|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |        0|     86|   91|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |        1|      4|   91|
|Birth     |COHORTS        |INDIA      |1      |        0|   1690| 4566|
|Birth     |COHORTS        |INDIA      |1      |        1|     53| 4566|
|Birth     |COHORTS        |INDIA      |0      |        0|   2729| 4566|
|Birth     |COHORTS        |INDIA      |0      |        1|     94| 4566|
|Birth     |EE             |PAKISTAN   |1      |        0|     67|  238|
|Birth     |EE             |PAKISTAN   |1      |        1|     13|  238|
|Birth     |EE             |PAKISTAN   |0      |        0|    123|  238|
|Birth     |EE             |PAKISTAN   |0      |        1|     35|  238|
|Birth     |GMS-Nepal      |NEPAL      |1      |        0|    468|  642|
|Birth     |GMS-Nepal      |NEPAL      |1      |        1|     17|  642|
|Birth     |GMS-Nepal      |NEPAL      |0      |        0|    148|  642|
|Birth     |GMS-Nepal      |NEPAL      |0      |        1|      9|  642|
|Birth     |JiVitA-3       |BANGLADESH |1      |        0|    236|  299|
|Birth     |JiVitA-3       |BANGLADESH |1      |        1|     20|  299|
|Birth     |JiVitA-3       |BANGLADESH |0      |        0|     42|  299|
|Birth     |JiVitA-3       |BANGLADESH |0      |        1|      1|  299|
|Birth     |JiVitA-4       |BANGLADESH |1      |        0|   1616| 2359|
|Birth     |JiVitA-4       |BANGLADESH |1      |        1|    142| 2359|
|Birth     |JiVitA-4       |BANGLADESH |0      |        0|    555| 2359|
|Birth     |JiVitA-4       |BANGLADESH |0      |        1|     46| 2359|
|Birth     |NIH-Crypto     |BANGLADESH |1      |        0|    151|  732|
|Birth     |NIH-Crypto     |BANGLADESH |1      |        1|      2|  732|
|Birth     |NIH-Crypto     |BANGLADESH |0      |        0|    571|  732|
|Birth     |NIH-Crypto     |BANGLADESH |0      |        1|      8|  732|
|Birth     |PROVIDE        |BANGLADESH |1      |        0|    142|  539|
|Birth     |PROVIDE        |BANGLADESH |1      |        1|      3|  539|
|Birth     |PROVIDE        |BANGLADESH |0      |        0|    393|  539|
|Birth     |PROVIDE        |BANGLADESH |0      |        1|      1|  539|
|Birth     |SAS-CompFeed   |INDIA      |1      |        0|    826| 1013|
|Birth     |SAS-CompFeed   |INDIA      |1      |        1|     59| 1013|
|Birth     |SAS-CompFeed   |INDIA      |0      |        0|    121| 1013|
|Birth     |SAS-CompFeed   |INDIA      |0      |        1|      7| 1013|
|Birth     |Vellore Crypto |INDIA      |1      |        0|      9|  388|
|Birth     |Vellore Crypto |INDIA      |1      |        1|      0|  388|
|Birth     |Vellore Crypto |INDIA      |0      |        0|    363|  388|
|Birth     |Vellore Crypto |INDIA      |0      |        1|     16|  388|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |        0|      2|  367|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |        1|      0|  367|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |        0|    323|  367|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |        1|     42|  367|
|6 months  |COHORTS        |INDIA      |1      |        0|   1743| 4722|
|6 months  |COHORTS        |INDIA      |1      |        1|     84| 4722|
|6 months  |COHORTS        |INDIA      |0      |        0|   2768| 4722|
|6 months  |COHORTS        |INDIA      |0      |        1|    127| 4722|
|6 months  |EE             |PAKISTAN   |1      |        0|     91|  371|
|6 months  |EE             |PAKISTAN   |1      |        1|     28|  371|
|6 months  |EE             |PAKISTAN   |0      |        0|    199|  371|
|6 months  |EE             |PAKISTAN   |0      |        1|     53|  371|
|6 months  |GMS-Nepal      |NEPAL      |1      |        0|    385|  519|
|6 months  |GMS-Nepal      |NEPAL      |1      |        1|     18|  519|
|6 months  |GMS-Nepal      |NEPAL      |0      |        0|    114|  519|
|6 months  |GMS-Nepal      |NEPAL      |0      |        1|      2|  519|
|6 months  |JiVitA-3       |BANGLADESH |1      |        0|    195|  234|
|6 months  |JiVitA-3       |BANGLADESH |1      |        1|     13|  234|
|6 months  |JiVitA-3       |BANGLADESH |0      |        0|     24|  234|
|6 months  |JiVitA-3       |BANGLADESH |0      |        1|      2|  234|
|6 months  |JiVitA-4       |BANGLADESH |1      |        0|   2814| 4020|
|6 months  |JiVitA-4       |BANGLADESH |1      |        1|    162| 4020|
|6 months  |JiVitA-4       |BANGLADESH |0      |        0|    991| 4020|
|6 months  |JiVitA-4       |BANGLADESH |0      |        1|     53| 4020|
|6 months  |NIH-Crypto     |BANGLADESH |1      |        0|    141|  715|
|6 months  |NIH-Crypto     |BANGLADESH |1      |        1|      6|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |        0|    551|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |        1|     17|  715|
|6 months  |PROVIDE        |BANGLADESH |1      |        0|    156|  604|
|6 months  |PROVIDE        |BANGLADESH |1      |        1|      6|  604|
|6 months  |PROVIDE        |BANGLADESH |0      |        0|    434|  604|
|6 months  |PROVIDE        |BANGLADESH |0      |        1|      8|  604|
|6 months  |SAS-CompFeed   |INDIA      |1      |        0|    850| 1085|
|6 months  |SAS-CompFeed   |INDIA      |1      |        1|     94| 1085|
|6 months  |SAS-CompFeed   |INDIA      |0      |        0|    126| 1085|
|6 months  |SAS-CompFeed   |INDIA      |0      |        1|     15| 1085|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |        0|    258|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |        1|     46|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |        0|     68|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |        1|      8|  380|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |        0|     29| 1944|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |        1|      0| 1944|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |        0|   1897| 1944|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |        1|     18| 1944|
|6 months  |Vellore Crypto |INDIA      |1      |        0|     10|  407|
|6 months  |Vellore Crypto |INDIA      |1      |        1|      1|  407|
|6 months  |Vellore Crypto |INDIA      |0      |        0|    368|  407|
|6 months  |Vellore Crypto |INDIA      |0      |        1|     28|  407|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |        0|      2|  368|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |        1|      0|  368|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |        0|    241|  368|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |        1|    125|  368|
|24 months |COHORTS        |INDIA      |1      |        0|   1071| 3659|
|24 months |COHORTS        |INDIA      |1      |        1|    350| 3659|
|24 months |COHORTS        |INDIA      |0      |        0|   1744| 3659|
|24 months |COHORTS        |INDIA      |0      |        1|    494| 3659|
|24 months |EE             |PAKISTAN   |1      |        0|     38|  167|
|24 months |EE             |PAKISTAN   |1      |        1|     20|  167|
|24 months |EE             |PAKISTAN   |0      |        0|     70|  167|
|24 months |EE             |PAKISTAN   |0      |        1|     39|  167|
|24 months |GMS-Nepal      |NEPAL      |1      |        0|    304|  448|
|24 months |GMS-Nepal      |NEPAL      |1      |        1|     36|  448|
|24 months |GMS-Nepal      |NEPAL      |0      |        0|     96|  448|
|24 months |GMS-Nepal      |NEPAL      |0      |        1|     12|  448|
|24 months |JiVitA-3       |BANGLADESH |1      |        0|     93|  119|
|24 months |JiVitA-3       |BANGLADESH |1      |        1|     14|  119|
|24 months |JiVitA-3       |BANGLADESH |0      |        0|     11|  119|
|24 months |JiVitA-3       |BANGLADESH |0      |        1|      1|  119|
|24 months |JiVitA-4       |BANGLADESH |1      |        0|   2675| 3972|
|24 months |JiVitA-4       |BANGLADESH |1      |        1|    276| 3972|
|24 months |JiVitA-4       |BANGLADESH |0      |        0|    933| 3972|
|24 months |JiVitA-4       |BANGLADESH |0      |        1|     88| 3972|
|24 months |NIH-Crypto     |BANGLADESH |1      |        0|    105|  514|
|24 months |NIH-Crypto     |BANGLADESH |1      |        1|      7|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |        0|    373|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |        1|     29|  514|
|24 months |PROVIDE        |BANGLADESH |1      |        0|    133|  578|
|24 months |PROVIDE        |BANGLADESH |1      |        1|     23|  578|
|24 months |PROVIDE        |BANGLADESH |0      |        0|    393|  578|
|24 months |PROVIDE        |BANGLADESH |0      |        1|     29|  578|
|24 months |TanzaniaChild2 |TANZANIA   |1      |        0|      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |1      |        1|      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |        0|      5|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |        1|      1|    6|
|24 months |Vellore Crypto |INDIA      |1      |        0|      9|  409|
|24 months |Vellore Crypto |INDIA      |1      |        1|      2|  409|
|24 months |Vellore Crypto |INDIA      |0      |        0|    359|  409|
|24 months |Vellore Crypto |INDIA      |0      |        1|     39|  409|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


