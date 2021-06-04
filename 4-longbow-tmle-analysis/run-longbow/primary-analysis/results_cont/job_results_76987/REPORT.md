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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |cleanck | n_cell|   n|
|:---------|:--------------|:------------|:-------|------:|---:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |     39|  92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |     53|  92|
|Birth     |GMS-Nepal      |NEPAL        |1       |      9| 621|
|Birth     |GMS-Nepal      |NEPAL        |0       |    612| 621|
|Birth     |MAL-ED         |PERU         |1       |      1|   2|
|Birth     |MAL-ED         |PERU         |0       |      1|   2|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |    345| 561|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |    216| 561|
|Birth     |PROVIDE        |BANGLADESH   |1       |    438| 539|
|Birth     |PROVIDE        |BANGLADESH   |0       |    101| 539|
|Birth     |Vellore Crypto |INDIA        |1       |    218| 378|
|Birth     |Vellore Crypto |INDIA        |0       |    160| 378|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |    163| 369|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |    206| 369|
|6 months  |GMS-Nepal      |NEPAL        |1       |      8| 505|
|6 months  |GMS-Nepal      |NEPAL        |0       |    497| 505|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |      1|   1|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |      0|   1|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |    329| 545|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |    216| 545|
|6 months  |PROVIDE        |BANGLADESH   |1       |    498| 604|
|6 months  |PROVIDE        |BANGLADESH   |0       |    106| 604|
|6 months  |Vellore Crypto |INDIA        |1       |    230| 398|
|6 months  |Vellore Crypto |INDIA        |0       |    168| 398|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |    163| 371|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |    208| 371|
|24 months |GMS-Nepal      |NEPAL        |1       |      5| 435|
|24 months |GMS-Nepal      |NEPAL        |0       |    430| 435|
|24 months |MAL-ED         |SOUTH AFRICA |1       |      1|   1|
|24 months |MAL-ED         |SOUTH AFRICA |0       |      0|   1|
|24 months |NIH-Crypto     |BANGLADESH   |1       |    199| 410|
|24 months |NIH-Crypto     |BANGLADESH   |0       |    211| 410|
|24 months |PROVIDE        |BANGLADESH   |1       |    479| 578|
|24 months |PROVIDE        |BANGLADESH   |0       |     99| 578|
|24 months |Vellore Crypto |INDIA        |1       |    231| 400|
|24 months |Vellore Crypto |INDIA        |0       |    169| 400|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





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


