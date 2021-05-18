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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |hdlvry | n_cell|    n|
|:---------|:--------------|:----------|:------|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |      1|   85|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |     84|   85|
|Birth     |COHORTS        |INDIA      |1      |   1623| 4245|
|Birth     |COHORTS        |INDIA      |0      |   2622| 4245|
|Birth     |EE             |PAKISTAN   |1      |     61|  175|
|Birth     |EE             |PAKISTAN   |0      |    114|  175|
|Birth     |GMS-Nepal      |NEPAL      |1      |    449|  593|
|Birth     |GMS-Nepal      |NEPAL      |0      |    144|  593|
|Birth     |JiVitA-3       |BANGLADESH |1      |    211|  250|
|Birth     |JiVitA-3       |BANGLADESH |0      |     39|  250|
|Birth     |JiVitA-4       |BANGLADESH |1      |   1490| 2000|
|Birth     |JiVitA-4       |BANGLADESH |0      |    510| 2000|
|Birth     |NIH-Crypto     |BANGLADESH |1      |    148|  707|
|Birth     |NIH-Crypto     |BANGLADESH |0      |    559|  707|
|Birth     |PROVIDE        |BANGLADESH |1      |    142|  532|
|Birth     |PROVIDE        |BANGLADESH |0      |    390|  532|
|Birth     |SAS-CompFeed   |INDIA      |1      |    784|  900|
|Birth     |SAS-CompFeed   |INDIA      |0      |    116|  900|
|Birth     |Vellore Crypto |INDIA      |1      |      9|  343|
|Birth     |Vellore Crypto |INDIA      |0      |    334|  343|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |      2|  365|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |    363|  365|
|6 months  |COHORTS        |INDIA      |1      |   1826| 4715|
|6 months  |COHORTS        |INDIA      |0      |   2889| 4715|
|6 months  |EE             |PAKISTAN   |1      |    120|  373|
|6 months  |EE             |PAKISTAN   |0      |    253|  373|
|6 months  |GMS-Nepal      |NEPAL      |1      |    403|  519|
|6 months  |GMS-Nepal      |NEPAL      |0      |    116|  519|
|6 months  |JiVitA-3       |BANGLADESH |1      |    207|  232|
|6 months  |JiVitA-3       |BANGLADESH |0      |     25|  232|
|6 months  |JiVitA-4       |BANGLADESH |1      |   2979| 4021|
|6 months  |JiVitA-4       |BANGLADESH |0      |   1042| 4021|
|6 months  |NIH-Crypto     |BANGLADESH |1      |    147|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |    568|  715|
|6 months  |PROVIDE        |BANGLADESH |1      |    162|  603|
|6 months  |PROVIDE        |BANGLADESH |0      |    441|  603|
|6 months  |SAS-CompFeed   |INDIA      |1      |    941| 1083|
|6 months  |SAS-CompFeed   |INDIA      |0      |    142| 1083|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |     29| 1943|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |   1914| 1943|
|6 months  |Vellore Crypto |INDIA      |1      |     11|  408|
|6 months  |Vellore Crypto |INDIA      |0      |    397|  408|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |      2|  369|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |    367|  369|
|24 months |COHORTS        |INDIA      |1      |   1412| 3632|
|24 months |COHORTS        |INDIA      |0      |   2220| 3632|
|24 months |EE             |PAKISTAN   |1      |     59|  168|
|24 months |EE             |PAKISTAN   |0      |    109|  168|
|24 months |GMS-Nepal      |NEPAL      |1      |    339|  447|
|24 months |GMS-Nepal      |NEPAL      |0      |    108|  447|
|24 months |JiVitA-3       |BANGLADESH |1      |    106|  118|
|24 months |JiVitA-3       |BANGLADESH |0      |     12|  118|
|24 months |JiVitA-4       |BANGLADESH |1      |   2940| 3958|
|24 months |JiVitA-4       |BANGLADESH |0      |   1018| 3958|
|24 months |NIH-Crypto     |BANGLADESH |1      |    112|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |    402|  514|
|24 months |PROVIDE        |BANGLADESH |1      |    156|  579|
|24 months |PROVIDE        |BANGLADESH |0      |    423|  579|
|24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|24 months |Vellore Crypto |INDIA      |1      |     11|  409|
|24 months |Vellore Crypto |INDIA      |0      |    398|  409|


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


