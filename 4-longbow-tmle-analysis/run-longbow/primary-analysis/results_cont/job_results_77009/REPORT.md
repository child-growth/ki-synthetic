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
|Birth     |CMC-V-BCS-2002 |INDIA      |1      |      0|   86|
|Birth     |CMC-V-BCS-2002 |INDIA      |0      |     86|   86|
|Birth     |COHORTS        |INDIA      |1      |   1626| 4389|
|Birth     |COHORTS        |INDIA      |0      |   2763| 4389|
|Birth     |EE             |PAKISTAN   |1      |     55|  175|
|Birth     |EE             |PAKISTAN   |0      |    120|  175|
|Birth     |GMS-Nepal      |NEPAL      |1      |    453|  596|
|Birth     |GMS-Nepal      |NEPAL      |0      |    143|  596|
|Birth     |JiVitA-3       |BANGLADESH |1      |    265|  292|
|Birth     |JiVitA-3       |BANGLADESH |0      |     27|  292|
|Birth     |JiVitA-4       |BANGLADESH |1      |   1884| 2384|
|Birth     |JiVitA-4       |BANGLADESH |0      |    500| 2384|
|Birth     |NIH-Crypto     |BANGLADESH |1      |    159|  707|
|Birth     |NIH-Crypto     |BANGLADESH |0      |    548|  707|
|Birth     |PROVIDE        |BANGLADESH |1      |    145|  532|
|Birth     |PROVIDE        |BANGLADESH |0      |    387|  532|
|Birth     |SAS-CompFeed   |INDIA      |1      |    849|  957|
|Birth     |SAS-CompFeed   |INDIA      |0      |    108|  957|
|Birth     |Vellore Crypto |INDIA      |1      |      6|  343|
|Birth     |Vellore Crypto |INDIA      |0      |    337|  343|
|6 months  |CMC-V-BCS-2002 |INDIA      |1      |      8|  365|
|6 months  |CMC-V-BCS-2002 |INDIA      |0      |    357|  365|
|6 months  |COHORTS        |INDIA      |1      |   1798| 4694|
|6 months  |COHORTS        |INDIA      |0      |   2896| 4694|
|6 months  |EE             |PAKISTAN   |1      |    121|  373|
|6 months  |EE             |PAKISTAN   |0      |    252|  373|
|6 months  |GMS-Nepal      |NEPAL      |1      |    399|  528|
|6 months  |GMS-Nepal      |NEPAL      |0      |    129|  528|
|6 months  |JiVitA-3       |BANGLADESH |1      |    295|  334|
|6 months  |JiVitA-3       |BANGLADESH |0      |     39|  334|
|6 months  |JiVitA-4       |BANGLADESH |1      |   2960| 4042|
|6 months  |JiVitA-4       |BANGLADESH |0      |   1082| 4042|
|6 months  |NIH-Crypto     |BANGLADESH |1      |    161|  715|
|6 months  |NIH-Crypto     |BANGLADESH |0      |    554|  715|
|6 months  |PROVIDE        |BANGLADESH |1      |    153|  603|
|6 months  |PROVIDE        |BANGLADESH |0      |    450|  603|
|6 months  |SAS-CompFeed   |INDIA      |1      |    941| 1088|
|6 months  |SAS-CompFeed   |INDIA      |0      |    147| 1088|
|6 months  |SAS-FoodSuppl  |INDIA      |1      |    304|  380|
|6 months  |SAS-FoodSuppl  |INDIA      |0      |     76|  380|
|6 months  |TanzaniaChild2 |TANZANIA   |1      |     32| 1920|
|6 months  |TanzaniaChild2 |TANZANIA   |0      |   1888| 1920|
|6 months  |Vellore Crypto |INDIA      |1      |      8|  408|
|6 months  |Vellore Crypto |INDIA      |0      |    400|  408|
|24 months |CMC-V-BCS-2002 |INDIA      |1      |      8|  369|
|24 months |CMC-V-BCS-2002 |INDIA      |0      |    361|  369|
|24 months |COHORTS        |INDIA      |1      |   1319| 3533|
|24 months |COHORTS        |INDIA      |0      |   2214| 3533|
|24 months |EE             |PAKISTAN   |1      |     55|  167|
|24 months |EE             |PAKISTAN   |0      |    112|  167|
|24 months |GMS-Nepal      |NEPAL      |1      |    337|  455|
|24 months |GMS-Nepal      |NEPAL      |0      |    118|  455|
|24 months |JiVitA-3       |BANGLADESH |1      |    255|  289|
|24 months |JiVitA-3       |BANGLADESH |0      |     34|  289|
|24 months |JiVitA-4       |BANGLADESH |1      |   2961| 3993|
|24 months |JiVitA-4       |BANGLADESH |0      |   1032| 3993|
|24 months |NIH-Crypto     |BANGLADESH |1      |    123|  514|
|24 months |NIH-Crypto     |BANGLADESH |0      |    391|  514|
|24 months |PROVIDE        |BANGLADESH |1      |    146|  579|
|24 months |PROVIDE        |BANGLADESH |0      |    433|  579|
|24 months |TanzaniaChild2 |TANZANIA   |1      |      0|    6|
|24 months |TanzaniaChild2 |TANZANIA   |0      |      6|    6|
|24 months |Vellore Crypto |INDIA      |1      |      8|  409|
|24 months |Vellore Crypto |INDIA      |0      |    401|  409|


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


