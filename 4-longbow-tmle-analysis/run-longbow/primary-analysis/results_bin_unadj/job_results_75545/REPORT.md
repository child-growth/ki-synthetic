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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |hdlvry | swasted| n_cell|    n|
|:---------|:--------------|:----------|:------|-------:|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |       0|      1|   85|
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |       1|      0|   85|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |       0|     84|   85|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |       1|      0|   85|
|Birth     |COHORTS        |INDIA      |1      |       0|   1540| 4245|
|Birth     |COHORTS        |INDIA      |1      |       1|     83| 4245|
|Birth     |COHORTS        |INDIA      |0      |       0|   2477| 4245|
|Birth     |COHORTS        |INDIA      |0      |       1|    145| 4245|
|Birth     |EE             |PAKISTAN   |1      |       0|     61|  175|
|Birth     |EE             |PAKISTAN   |1      |       1|      0|  175|
|Birth     |EE             |PAKISTAN   |0      |       0|    108|  175|
|Birth     |EE             |PAKISTAN   |0      |       1|      6|  175|
|Birth     |GMS-Nepal      |NEPAL      |1      |       0|    431|  593|
|Birth     |GMS-Nepal      |NEPAL      |1      |       1|     18|  593|
|Birth     |GMS-Nepal      |NEPAL      |0      |       0|    138|  593|
|Birth     |GMS-Nepal      |NEPAL      |0      |       1|      6|  593|
|Birth     |JiVitA-3       |BANGLADESH |1      |       0|    208|  250|
|Birth     |JiVitA-3       |BANGLADESH |1      |       1|      3|  250|
|Birth     |JiVitA-3       |BANGLADESH |0      |       0|     38|  250|
|Birth     |JiVitA-3       |BANGLADESH |0      |       1|      1|  250|
|Birth     |JiVitA-4       |BANGLADESH |1      |       0|   1471| 2000|
|Birth     |JiVitA-4       |BANGLADESH |1      |       1|     19| 2000|
|Birth     |JiVitA-4       |BANGLADESH |0      |       0|    504| 2000|
|Birth     |JiVitA-4       |BANGLADESH |0      |       1|      6| 2000|
|Birth     |NIH-Crypto     |BANGLADESH |1      |       0|    134|  707|
|Birth     |NIH-Crypto     |BANGLADESH |1      |       1|     14|  707|
|Birth     |NIH-Crypto     |BANGLADESH |0      |       0|    526|  707|
|Birth     |NIH-Crypto     |BANGLADESH |0      |       1|     33|  707|
|Birth     |PROVIDE        |BANGLADESH |1      |       0|    140|  532|
|Birth     |PROVIDE        |BANGLADESH |1      |       1|      2|  532|
|Birth     |PROVIDE        |BANGLADESH |0      |       0|    379|  532|
|Birth     |PROVIDE        |BANGLADESH |0      |       1|     11|  532|
|Birth     |SAS-CompFeed   |INDIA      |1      |       0|    763|  900|
|Birth     |SAS-CompFeed   |INDIA      |1      |       1|     21|  900|
|Birth     |SAS-CompFeed   |INDIA      |0      |       0|    112|  900|
|Birth     |SAS-CompFeed   |INDIA      |0      |       1|      4|  900|
|Birth     |Vellore Crypto |INDIA      |1      |       0|      8|  343|
|Birth     |Vellore Crypto |INDIA      |1      |       1|      1|  343|
|Birth     |Vellore Crypto |INDIA      |0      |       0|    281|  343|
|Birth     |Vellore Crypto |INDIA      |0      |       1|     53|  343|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |       0|      2|  365|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |       1|      0|  365|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |       0|    351|  365|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |       1|     12|  365|
|6 months  |COHORTS        |INDIA      |1      |       0|   1772| 4715|
|6 months  |COHORTS        |INDIA      |1      |       1|     54| 4715|
|6 months  |COHORTS        |INDIA      |0      |       0|   2803| 4715|
|6 months  |COHORTS        |INDIA      |0      |       1|     86| 4715|
|6 months  |EE             |PAKISTAN   |1      |       0|    115|  373|
|6 months  |EE             |PAKISTAN   |1      |       1|      5|  373|
|6 months  |EE             |PAKISTAN   |0      |       0|    245|  373|
|6 months  |EE             |PAKISTAN   |0      |       1|      8|  373|
|6 months  |GMS-Nepal      |NEPAL      |1      |       0|    397|  519|
|6 months  |GMS-Nepal      |NEPAL      |1      |       1|      6|  519|
|6 months  |GMS-Nepal      |NEPAL      |0      |       0|    115|  519|
|6 months  |GMS-Nepal      |NEPAL      |0      |       1|      1|  519|
|6 months  |JiVitA-3       |BANGLADESH |1      |       0|    203|  232|
|6 months  |JiVitA-3       |BANGLADESH |1      |       1|      4|  232|
|6 months  |JiVitA-3       |BANGLADESH |0      |       0|     23|  232|
|6 months  |JiVitA-3       |BANGLADESH |0      |       1|      2|  232|
|6 months  |JiVitA-4       |BANGLADESH |1      |       0|   2959| 4021|
|6 months  |JiVitA-4       |BANGLADESH |1      |       1|     20| 4021|
|6 months  |JiVitA-4       |BANGLADESH |0      |       0|   1035| 4021|
|6 months  |JiVitA-4       |BANGLADESH |0      |       1|      7| 4021|
|6 months  |NIH-Crypto     |BANGLADESH |1      |       0|    147|  715|
|6 months  |NIH-Crypto     |BANGLADESH |1      |       1|      0|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |       0|    568|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |       1|      0|  715|
|6 months  |PROVIDE        |BANGLADESH |1      |       0|    160|  603|
|6 months  |PROVIDE        |BANGLADESH |1      |       1|      2|  603|
|6 months  |PROVIDE        |BANGLADESH |0      |       0|    438|  603|
|6 months  |PROVIDE        |BANGLADESH |0      |       1|      3|  603|
|6 months  |SAS-CompFeed   |INDIA      |1      |       0|    914| 1083|
|6 months  |SAS-CompFeed   |INDIA      |1      |       1|     27| 1083|
|6 months  |SAS-CompFeed   |INDIA      |0      |       0|    135| 1083|
|6 months  |SAS-CompFeed   |INDIA      |0      |       1|      7| 1083|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |       0|    286|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |       1|     18|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |       0|     75|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |       1|      1|  380|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |       0|     29| 1943|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |       1|      0| 1943|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |       0|   1903| 1943|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |       1|     11| 1943|
|6 months  |Vellore Crypto |INDIA      |1      |       0|     10|  408|
|6 months  |Vellore Crypto |INDIA      |1      |       1|      1|  408|
|6 months  |Vellore Crypto |INDIA      |0      |       0|    376|  408|
|6 months  |Vellore Crypto |INDIA      |0      |       1|     21|  408|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |       0|      2|  369|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |       1|      0|  369|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |       0|    364|  369|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |       1|      3|  369|
|24 months |COHORTS        |INDIA      |1      |       0|   1392| 3632|
|24 months |COHORTS        |INDIA      |1      |       1|     20| 3632|
|24 months |COHORTS        |INDIA      |0      |       0|   2202| 3632|
|24 months |COHORTS        |INDIA      |0      |       1|     18| 3632|
|24 months |EE             |PAKISTAN   |1      |       0|     57|  168|
|24 months |EE             |PAKISTAN   |1      |       1|      2|  168|
|24 months |EE             |PAKISTAN   |0      |       0|    107|  168|
|24 months |EE             |PAKISTAN   |0      |       1|      2|  168|
|24 months |GMS-Nepal      |NEPAL      |1      |       0|    329|  447|
|24 months |GMS-Nepal      |NEPAL      |1      |       1|     10|  447|
|24 months |GMS-Nepal      |NEPAL      |0      |       0|    104|  447|
|24 months |GMS-Nepal      |NEPAL      |0      |       1|      4|  447|
|24 months |JiVitA-3       |BANGLADESH |1      |       0|     98|  118|
|24 months |JiVitA-3       |BANGLADESH |1      |       1|      8|  118|
|24 months |JiVitA-3       |BANGLADESH |0      |       0|     12|  118|
|24 months |JiVitA-3       |BANGLADESH |0      |       1|      0|  118|
|24 months |JiVitA-4       |BANGLADESH |1      |       0|   2852| 3958|
|24 months |JiVitA-4       |BANGLADESH |1      |       1|     88| 3958|
|24 months |JiVitA-4       |BANGLADESH |0      |       0|    994| 3958|
|24 months |JiVitA-4       |BANGLADESH |0      |       1|     24| 3958|
|24 months |NIH-Crypto     |BANGLADESH |1      |       0|    111|  514|
|24 months |NIH-Crypto     |BANGLADESH |1      |       1|      1|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |       0|    399|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |       1|      3|  514|
|24 months |PROVIDE        |BANGLADESH |1      |       0|    154|  579|
|24 months |PROVIDE        |BANGLADESH |1      |       1|      2|  579|
|24 months |PROVIDE        |BANGLADESH |0      |       0|    416|  579|
|24 months |PROVIDE        |BANGLADESH |0      |       1|      7|  579|
|24 months |TanzaniaChild2 |TANZANIA   |1      |       0|      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |1      |       1|      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |       0|      6|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |       1|      0|    6|
|24 months |Vellore Crypto |INDIA      |1      |       0|     11|  409|
|24 months |Vellore Crypto |INDIA      |1      |       1|      0|  409|
|24 months |Vellore Crypto |INDIA      |0      |       0|    393|  409|
|24 months |Vellore Crypto |INDIA      |0      |       1|      5|  409|


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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


