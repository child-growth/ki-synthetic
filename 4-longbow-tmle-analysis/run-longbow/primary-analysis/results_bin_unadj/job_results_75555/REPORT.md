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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |nchldlt5 | swasted| n_cell|     n|
|:---------|:--------------|:----------|:--------|-------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH |1        |       0|  11309| 17997|
|Birth     |JiVitA-3       |BANGLADESH |1        |       1|    221| 17997|
|Birth     |JiVitA-3       |BANGLADESH |2+       |       0|   6341| 17997|
|Birth     |JiVitA-3       |BANGLADESH |2+       |       1|    126| 17997|
|Birth     |NIH-Crypto     |BANGLADESH |1        |       0|    440|   707|
|Birth     |NIH-Crypto     |BANGLADESH |1        |       1|     31|   707|
|Birth     |NIH-Crypto     |BANGLADESH |2+       |       0|    220|   707|
|Birth     |NIH-Crypto     |BANGLADESH |2+       |       1|     16|   707|
|Birth     |PROVIDE        |BANGLADESH |1        |       0|    376|   532|
|Birth     |PROVIDE        |BANGLADESH |1        |       1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH |2+       |       0|    143|   532|
|Birth     |PROVIDE        |BANGLADESH |2+       |       1|      7|   532|
|Birth     |Vellore Crypto |INDIA      |1        |       0|     51|   343|
|Birth     |Vellore Crypto |INDIA      |1        |       1|     14|   343|
|Birth     |Vellore Crypto |INDIA      |2+       |       0|    238|   343|
|Birth     |Vellore Crypto |INDIA      |2+       |       1|     40|   343|
|6 months  |JiVitA-3       |BANGLADESH |1        |       0|  10544| 16776|
|6 months  |JiVitA-3       |BANGLADESH |1        |       1|    161| 16776|
|6 months  |JiVitA-3       |BANGLADESH |2+       |       0|   6002| 16776|
|6 months  |JiVitA-3       |BANGLADESH |2+       |       1|     69| 16776|
|6 months  |LCNI-5         |MALAWI     |1        |       0|    411|   826|
|6 months  |LCNI-5         |MALAWI     |1        |       1|      0|   826|
|6 months  |LCNI-5         |MALAWI     |2+       |       0|    415|   826|
|6 months  |LCNI-5         |MALAWI     |2+       |       1|      0|   826|
|6 months  |NIH-Crypto     |BANGLADESH |1        |       0|    480|   715|
|6 months  |NIH-Crypto     |BANGLADESH |1        |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH |2+       |       0|    235|   715|
|6 months  |NIH-Crypto     |BANGLADESH |2+       |       1|      0|   715|
|6 months  |PROVIDE        |BANGLADESH |1        |       0|    441|   603|
|6 months  |PROVIDE        |BANGLADESH |1        |       1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH |2+       |       0|    157|   603|
|6 months  |PROVIDE        |BANGLADESH |2+       |       1|      1|   603|
|6 months  |TanzaniaChild2 |TANZANIA   |1        |       0|   1394|  2027|
|6 months  |TanzaniaChild2 |TANZANIA   |1        |       1|      8|  2027|
|6 months  |TanzaniaChild2 |TANZANIA   |2+       |       0|    621|  2027|
|6 months  |TanzaniaChild2 |TANZANIA   |2+       |       1|      4|  2027|
|6 months  |Vellore Crypto |INDIA      |1        |       0|     76|   408|
|6 months  |Vellore Crypto |INDIA      |1        |       1|      4|   408|
|6 months  |Vellore Crypto |INDIA      |2+       |       0|    310|   408|
|6 months  |Vellore Crypto |INDIA      |2+       |       1|     18|   408|
|24 months |JiVitA-3       |BANGLADESH |1        |       0|   5289|  8599|
|24 months |JiVitA-3       |BANGLADESH |1        |       1|    206|  8599|
|24 months |JiVitA-3       |BANGLADESH |2+       |       0|   2975|  8599|
|24 months |JiVitA-3       |BANGLADESH |2+       |       1|    129|  8599|
|24 months |LCNI-5         |MALAWI     |1        |       0|    276|   559|
|24 months |LCNI-5         |MALAWI     |1        |       1|      0|   559|
|24 months |LCNI-5         |MALAWI     |2+       |       0|    282|   559|
|24 months |LCNI-5         |MALAWI     |2+       |       1|      1|   559|
|24 months |NIH-Crypto     |BANGLADESH |1        |       0|    351|   514|
|24 months |NIH-Crypto     |BANGLADESH |1        |       1|      2|   514|
|24 months |NIH-Crypto     |BANGLADESH |2+       |       0|    159|   514|
|24 months |NIH-Crypto     |BANGLADESH |2+       |       1|      2|   514|
|24 months |PROVIDE        |BANGLADESH |1        |       0|    420|   579|
|24 months |PROVIDE        |BANGLADESH |1        |       1|      6|   579|
|24 months |PROVIDE        |BANGLADESH |2+       |       0|    150|   579|
|24 months |PROVIDE        |BANGLADESH |2+       |       1|      3|   579|
|24 months |TanzaniaChild2 |TANZANIA   |1        |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA   |1        |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA   |2+       |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA   |2+       |       1|      0|     6|
|24 months |Vellore Crypto |INDIA      |1        |       0|     80|   409|
|24 months |Vellore Crypto |INDIA      |1        |       1|      0|   409|
|24 months |Vellore Crypto |INDIA      |2+       |       0|    324|   409|
|24 months |Vellore Crypto |INDIA      |2+       |       1|      5|   409|


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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


