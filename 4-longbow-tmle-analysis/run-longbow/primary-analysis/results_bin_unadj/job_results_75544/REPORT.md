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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |vagbrth | swasted| n_cell|     n|
|:---------|:--------------|:----------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |       0|     80|    86|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |       1|      1|    86|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |       0|      5|    86|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |       1|      0|    86|
|Birth     |JiVitA-3       |BANGLADESH |1       |       0|  16609| 17888|
|Birth     |JiVitA-3       |BANGLADESH |1       |       1|    330| 17888|
|Birth     |JiVitA-3       |BANGLADESH |0       |       0|    932| 17888|
|Birth     |JiVitA-3       |BANGLADESH |0       |       1|     17| 17888|
|Birth     |JiVitA-4       |BANGLADESH |1       |       0|   1841|  2008|
|Birth     |JiVitA-4       |BANGLADESH |1       |       1|     22|  2008|
|Birth     |JiVitA-4       |BANGLADESH |0       |       0|    142|  2008|
|Birth     |JiVitA-4       |BANGLADESH |0       |       1|      3|  2008|
|Birth     |NIH-Crypto     |BANGLADESH |1       |       0|    243|   447|
|Birth     |NIH-Crypto     |BANGLADESH |1       |       1|     16|   447|
|Birth     |NIH-Crypto     |BANGLADESH |0       |       0|    178|   447|
|Birth     |NIH-Crypto     |BANGLADESH |0       |       1|     10|   447|
|Birth     |PROBIT         |BELARUS    |1       |       0|  11469| 13817|
|Birth     |PROBIT         |BELARUS    |1       |       1|    821| 13817|
|Birth     |PROBIT         |BELARUS    |0       |       0|   1429| 13817|
|Birth     |PROBIT         |BELARUS    |0       |       1|     98| 13817|
|Birth     |PROVIDE        |BANGLADESH |1       |       0|    399|   532|
|Birth     |PROVIDE        |BANGLADESH |1       |       1|      9|   532|
|Birth     |PROVIDE        |BANGLADESH |0       |       0|    120|   532|
|Birth     |PROVIDE        |BANGLADESH |0       |       1|      4|   532|
|Birth     |Vellore Crypto |INDIA      |1       |       0|    230|   343|
|Birth     |Vellore Crypto |INDIA      |1       |       1|     46|   343|
|Birth     |Vellore Crypto |INDIA      |0       |       0|     59|   343|
|Birth     |Vellore Crypto |INDIA      |0       |       1|      8|   343|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |       0|  11037| 12805|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |       1|    723| 12805|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |       0|    982| 12805|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |       1|     63| 12805|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |       0|    329|   368|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |       1|     11|   368|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |       0|     27|   368|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |       1|      1|   368|
|6 months  |JiVitA-3       |BANGLADESH |1       |       0|  15479| 16667|
|6 months  |JiVitA-3       |BANGLADESH |1       |       1|    218| 16667|
|6 months  |JiVitA-3       |BANGLADESH |0       |       0|    962| 16667|
|6 months  |JiVitA-3       |BANGLADESH |0       |       1|      8| 16667|
|6 months  |JiVitA-4       |BANGLADESH |1       |       0|   3691|  4036|
|6 months  |JiVitA-4       |BANGLADESH |1       |       1|     24|  4036|
|6 months  |JiVitA-4       |BANGLADESH |0       |       0|    318|  4036|
|6 months  |JiVitA-4       |BANGLADESH |0       |       1|      3|  4036|
|6 months  |NIH-Crypto     |BANGLADESH |1       |       0|    262|   457|
|6 months  |NIH-Crypto     |BANGLADESH |1       |       1|      0|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |       0|    195|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |       1|      0|   457|
|6 months  |PROBIT         |BELARUS    |1       |       0|  14018| 15757|
|6 months  |PROBIT         |BELARUS    |1       |       1|      8| 15757|
|6 months  |PROBIT         |BELARUS    |0       |       0|   1730| 15757|
|6 months  |PROBIT         |BELARUS    |0       |       1|      1| 15757|
|6 months  |PROVIDE        |BANGLADESH |1       |       0|    465|   603|
|6 months  |PROVIDE        |BANGLADESH |1       |       1|      5|   603|
|6 months  |PROVIDE        |BANGLADESH |0       |       0|    133|   603|
|6 months  |PROVIDE        |BANGLADESH |0       |       1|      0|   603|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |       0|   1855|  2013|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |       1|     11|  2013|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |       0|    147|  2013|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |       1|      0|  2013|
|6 months  |Vellore Crypto |INDIA      |1       |       0|    316|   408|
|6 months  |Vellore Crypto |INDIA      |1       |       1|     16|   408|
|6 months  |Vellore Crypto |INDIA      |0       |       0|     70|   408|
|6 months  |Vellore Crypto |INDIA      |0       |       1|      6|   408|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |       0|   7688|  8431|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |       1|     72|  8431|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |       0|    664|  8431|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |       1|      7|  8431|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |       0|    341|   372|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |       1|      3|   372|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |       0|     28|   372|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |       1|      0|   372|
|24 months |JiVitA-3       |BANGLADESH |1       |       0|   7746|  8536|
|24 months |JiVitA-3       |BANGLADESH |1       |       1|    317|  8536|
|24 months |JiVitA-3       |BANGLADESH |0       |       0|    458|  8536|
|24 months |JiVitA-3       |BANGLADESH |0       |       1|     15|  8536|
|24 months |JiVitA-4       |BANGLADESH |1       |       0|   3547|  3974|
|24 months |JiVitA-4       |BANGLADESH |1       |       1|    106|  3974|
|24 months |JiVitA-4       |BANGLADESH |0       |       0|    315|  3974|
|24 months |JiVitA-4       |BANGLADESH |0       |       1|      6|  3974|
|24 months |NIH-Crypto     |BANGLADESH |1       |       0|    187|   321|
|24 months |NIH-Crypto     |BANGLADESH |1       |       1|      3|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |       0|    131|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |       1|      0|   321|
|24 months |PROBIT         |BELARUS    |1       |       0|   3524|  3970|
|24 months |PROBIT         |BELARUS    |1       |       1|      6|  3970|
|24 months |PROBIT         |BELARUS    |0       |       0|    439|  3970|
|24 months |PROBIT         |BELARUS    |0       |       1|      1|  3970|
|24 months |PROVIDE        |BANGLADESH |1       |       0|    447|   579|
|24 months |PROVIDE        |BANGLADESH |1       |       1|      7|   579|
|24 months |PROVIDE        |BANGLADESH |0       |       0|    123|   579|
|24 months |PROVIDE        |BANGLADESH |0       |       1|      2|   579|
|24 months |TanzaniaChild2 |TANZANIA   |1       |       0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA   |1       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |       1|      0|     6|
|24 months |Vellore Crypto |INDIA      |1       |       0|    327|   409|
|24 months |Vellore Crypto |INDIA      |1       |       1|      5|   409|
|24 months |Vellore Crypto |INDIA      |0       |       0|     77|   409|
|24 months |Vellore Crypto |INDIA      |0       |       1|      0|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |       0|    365|   430|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |       1|     27|   430|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |       0|     35|   430|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |       1|      3|   430|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





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


