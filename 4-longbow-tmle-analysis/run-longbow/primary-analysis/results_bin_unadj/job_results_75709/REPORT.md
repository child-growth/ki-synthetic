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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country    |hdlvry | pers_wast| n_cell|    n|
|:-----------|:--------------|:----------|:------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1      |         0|      2|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1      |         1|      0|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0      |         0|    346|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0      |         1|     22|  370|
|0-24 months |COHORTS        |INDIA      |1      |         0|   1363| 3927|
|0-24 months |COHORTS        |INDIA      |1      |         1|    152| 3927|
|0-24 months |COHORTS        |INDIA      |0      |         0|   2190| 3927|
|0-24 months |COHORTS        |INDIA      |0      |         1|    222| 3927|
|0-24 months |EE             |PAKISTAN   |1      |         0|    110|  375|
|0-24 months |EE             |PAKISTAN   |1      |         1|     11|  375|
|0-24 months |EE             |PAKISTAN   |0      |         0|    232|  375|
|0-24 months |EE             |PAKISTAN   |0      |         1|     22|  375|
|0-24 months |GMS-Nepal      |NEPAL      |1      |         0|    358|  550|
|0-24 months |GMS-Nepal      |NEPAL      |1      |         1|     62|  550|
|0-24 months |GMS-Nepal      |NEPAL      |0      |         0|    115|  550|
|0-24 months |GMS-Nepal      |NEPAL      |0      |         1|     15|  550|
|0-24 months |JiVitA-3       |BANGLADESH |1      |         0|    186|  220|
|0-24 months |JiVitA-3       |BANGLADESH |1      |         1|     10|  220|
|0-24 months |JiVitA-3       |BANGLADESH |0      |         0|     22|  220|
|0-24 months |JiVitA-3       |BANGLADESH |0      |         1|      2|  220|
|0-24 months |JiVitA-4       |BANGLADESH |1      |         0|   2990| 4396|
|0-24 months |JiVitA-4       |BANGLADESH |1      |         1|    267| 4396|
|0-24 months |JiVitA-4       |BANGLADESH |0      |         0|   1050| 4396|
|0-24 months |JiVitA-4       |BANGLADESH |0      |         1|     89| 4396|
|0-24 months |NIH-Crypto     |BANGLADESH |1      |         0|    146|  730|
|0-24 months |NIH-Crypto     |BANGLADESH |1      |         1|      6|  730|
|0-24 months |NIH-Crypto     |BANGLADESH |0      |         0|    558|  730|
|0-24 months |NIH-Crypto     |BANGLADESH |0      |         1|     20|  730|
|0-24 months |PROVIDE        |BANGLADESH |1      |         0|    164|  641|
|0-24 months |PROVIDE        |BANGLADESH |1      |         1|      5|  641|
|0-24 months |PROVIDE        |BANGLADESH |0      |         0|    462|  641|
|0-24 months |PROVIDE        |BANGLADESH |0      |         1|     10|  641|
|0-24 months |SAS-CompFeed   |INDIA      |1      |         0|    888| 1111|
|0-24 months |SAS-CompFeed   |INDIA      |1      |         1|     82| 1111|
|0-24 months |SAS-CompFeed   |INDIA      |0      |         0|    129| 1111|
|0-24 months |SAS-CompFeed   |INDIA      |0      |         1|     12| 1111|
|0-24 months |SAS-FoodSuppl  |INDIA      |1      |         0|    255|  375|
|0-24 months |SAS-FoodSuppl  |INDIA      |1      |         1|     51|  375|
|0-24 months |SAS-FoodSuppl  |INDIA      |0      |         0|     55|  375|
|0-24 months |SAS-FoodSuppl  |INDIA      |0      |         1|     14|  375|
|0-24 months |TanzaniaChild2 |TANZANIA   |1      |         0|     31| 2074|
|0-24 months |TanzaniaChild2 |TANZANIA   |1      |         1|      1| 2074|
|0-24 months |TanzaniaChild2 |TANZANIA   |0      |         0|   1986| 2074|
|0-24 months |TanzaniaChild2 |TANZANIA   |0      |         1|     56| 2074|
|0-24 months |Vellore Crypto |INDIA      |1      |         0|     10|  410|
|0-24 months |Vellore Crypto |INDIA      |1      |         1|      1|  410|
|0-24 months |Vellore Crypto |INDIA      |0      |         0|    352|  410|
|0-24 months |Vellore Crypto |INDIA      |0      |         1|     47|  410|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1      |         0|      1|  355|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1      |         1|      1|  355|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0      |         0|    306|  355|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0      |         1|     47|  355|
|0-6 months  |EE             |PAKISTAN   |1      |         0|    109|  369|
|0-6 months  |EE             |PAKISTAN   |1      |         1|      9|  369|
|0-6 months  |EE             |PAKISTAN   |0      |         0|    235|  369|
|0-6 months  |EE             |PAKISTAN   |0      |         1|     16|  369|
|0-6 months  |GMS-Nepal      |NEPAL      |1      |         0|    353|  522|
|0-6 months  |GMS-Nepal      |NEPAL      |1      |         1|     46|  522|
|0-6 months  |GMS-Nepal      |NEPAL      |0      |         0|    110|  522|
|0-6 months  |GMS-Nepal      |NEPAL      |0      |         1|     13|  522|
|0-6 months  |JiVitA-3       |BANGLADESH |1      |         0|      1|    1|
|0-6 months  |JiVitA-3       |BANGLADESH |1      |         1|      0|    1|
|0-6 months  |JiVitA-3       |BANGLADESH |0      |         0|      0|    1|
|0-6 months  |JiVitA-3       |BANGLADESH |0      |         1|      0|    1|
|0-6 months  |NIH-Crypto     |BANGLADESH |1      |         0|     54|  250|
|0-6 months  |NIH-Crypto     |BANGLADESH |1      |         1|      1|  250|
|0-6 months  |NIH-Crypto     |BANGLADESH |0      |         0|    191|  250|
|0-6 months  |NIH-Crypto     |BANGLADESH |0      |         1|      4|  250|
|0-6 months  |PROVIDE        |BANGLADESH |1      |         0|    165|  638|
|0-6 months  |PROVIDE        |BANGLADESH |1      |         1|      3|  638|
|0-6 months  |PROVIDE        |BANGLADESH |0      |         0|    459|  638|
|0-6 months  |PROVIDE        |BANGLADESH |0      |         1|     11|  638|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1      |         0|     28| 1971|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1      |         1|      2| 1971|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0      |         0|   1892| 1971|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0      |         1|     49| 1971|
|0-6 months  |Vellore Crypto |INDIA      |1      |         0|      9|  402|
|0-6 months  |Vellore Crypto |INDIA      |1      |         1|      2|  402|
|0-6 months  |Vellore Crypto |INDIA      |0      |         0|    329|  402|
|0-6 months  |Vellore Crypto |INDIA      |0      |         1|     62|  402|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1      |         0|      2|  370|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1      |         1|      0|  370|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0      |         0|    346|  370|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0      |         1|     22|  370|
|6-24 months |COHORTS        |INDIA      |1      |         0|   1363| 3927|
|6-24 months |COHORTS        |INDIA      |1      |         1|    152| 3927|
|6-24 months |COHORTS        |INDIA      |0      |         0|   2190| 3927|
|6-24 months |COHORTS        |INDIA      |0      |         1|    222| 3927|
|6-24 months |EE             |PAKISTAN   |1      |         0|    110|  375|
|6-24 months |EE             |PAKISTAN   |1      |         1|     11|  375|
|6-24 months |EE             |PAKISTAN   |0      |         0|    232|  375|
|6-24 months |EE             |PAKISTAN   |0      |         1|     22|  375|
|6-24 months |GMS-Nepal      |NEPAL      |1      |         0|    358|  550|
|6-24 months |GMS-Nepal      |NEPAL      |1      |         1|     62|  550|
|6-24 months |GMS-Nepal      |NEPAL      |0      |         0|    115|  550|
|6-24 months |GMS-Nepal      |NEPAL      |0      |         1|     15|  550|
|6-24 months |JiVitA-3       |BANGLADESH |1      |         0|    186|  220|
|6-24 months |JiVitA-3       |BANGLADESH |1      |         1|     10|  220|
|6-24 months |JiVitA-3       |BANGLADESH |0      |         0|     22|  220|
|6-24 months |JiVitA-3       |BANGLADESH |0      |         1|      2|  220|
|6-24 months |JiVitA-4       |BANGLADESH |1      |         0|   2990| 4396|
|6-24 months |JiVitA-4       |BANGLADESH |1      |         1|    267| 4396|
|6-24 months |JiVitA-4       |BANGLADESH |0      |         0|   1050| 4396|
|6-24 months |JiVitA-4       |BANGLADESH |0      |         1|     89| 4396|
|6-24 months |NIH-Crypto     |BANGLADESH |1      |         0|    146|  730|
|6-24 months |NIH-Crypto     |BANGLADESH |1      |         1|      6|  730|
|6-24 months |NIH-Crypto     |BANGLADESH |0      |         0|    558|  730|
|6-24 months |NIH-Crypto     |BANGLADESH |0      |         1|     20|  730|
|6-24 months |PROVIDE        |BANGLADESH |1      |         0|    164|  641|
|6-24 months |PROVIDE        |BANGLADESH |1      |         1|      5|  641|
|6-24 months |PROVIDE        |BANGLADESH |0      |         0|    462|  641|
|6-24 months |PROVIDE        |BANGLADESH |0      |         1|     10|  641|
|6-24 months |SAS-CompFeed   |INDIA      |1      |         0|    888| 1111|
|6-24 months |SAS-CompFeed   |INDIA      |1      |         1|     82| 1111|
|6-24 months |SAS-CompFeed   |INDIA      |0      |         0|    129| 1111|
|6-24 months |SAS-CompFeed   |INDIA      |0      |         1|     12| 1111|
|6-24 months |SAS-FoodSuppl  |INDIA      |1      |         0|    255|  375|
|6-24 months |SAS-FoodSuppl  |INDIA      |1      |         1|     51|  375|
|6-24 months |SAS-FoodSuppl  |INDIA      |0      |         0|     55|  375|
|6-24 months |SAS-FoodSuppl  |INDIA      |0      |         1|     14|  375|
|6-24 months |TanzaniaChild2 |TANZANIA   |1      |         0|     31| 2074|
|6-24 months |TanzaniaChild2 |TANZANIA   |1      |         1|      1| 2074|
|6-24 months |TanzaniaChild2 |TANZANIA   |0      |         0|   1986| 2074|
|6-24 months |TanzaniaChild2 |TANZANIA   |0      |         1|     56| 2074|
|6-24 months |Vellore Crypto |INDIA      |1      |         0|     10|  410|
|6-24 months |Vellore Crypto |INDIA      |1      |         1|      1|  410|
|6-24 months |Vellore Crypto |INDIA      |0      |         0|    352|  410|
|6-24 months |Vellore Crypto |INDIA      |0      |         1|     47|  410|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
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


