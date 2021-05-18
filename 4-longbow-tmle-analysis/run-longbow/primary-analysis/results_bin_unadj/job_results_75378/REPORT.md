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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |vagbrth | sstunted| n_cell|     n|
|:---------|:--------------|:----------|:-------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |        0|     82|    92|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |        1|      4|    92|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |        0|      6|    92|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |        1|      0|    92|
|Birth     |JiVitA-3       |BANGLADESH |1       |        0|  18800| 22289|
|Birth     |JiVitA-3       |BANGLADESH |1       |        1|   2301| 22289|
|Birth     |JiVitA-3       |BANGLADESH |0       |        0|   1068| 22289|
|Birth     |JiVitA-3       |BANGLADESH |0       |        1|    120| 22289|
|Birth     |JiVitA-4       |BANGLADESH |1       |        0|   2023|  2369|
|Birth     |JiVitA-4       |BANGLADESH |1       |        1|    180|  2369|
|Birth     |JiVitA-4       |BANGLADESH |0       |        0|    155|  2369|
|Birth     |JiVitA-4       |BANGLADESH |0       |        1|     11|  2369|
|Birth     |NIH-Crypto     |BANGLADESH |1       |        0|    262|   463|
|Birth     |NIH-Crypto     |BANGLADESH |1       |        1|      8|   463|
|Birth     |NIH-Crypto     |BANGLADESH |0       |        0|    193|   463|
|Birth     |NIH-Crypto     |BANGLADESH |0       |        1|      0|   463|
|Birth     |PROBIT         |BELARUS    |1       |        0|  12353| 13893|
|Birth     |PROBIT         |BELARUS    |1       |        1|      4| 13893|
|Birth     |PROBIT         |BELARUS    |0       |        0|   1535| 13893|
|Birth     |PROBIT         |BELARUS    |0       |        1|      1| 13893|
|Birth     |PROVIDE        |BANGLADESH |1       |        0|    411|   539|
|Birth     |PROVIDE        |BANGLADESH |1       |        1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH |0       |        0|    124|   539|
|Birth     |PROVIDE        |BANGLADESH |0       |        1|      1|   539|
|Birth     |Vellore Crypto |INDIA      |1       |        0|    297|   388|
|Birth     |Vellore Crypto |INDIA      |1       |        1|     14|   388|
|Birth     |Vellore Crypto |INDIA      |0       |        0|     75|   388|
|Birth     |Vellore Crypto |INDIA      |0       |        1|      2|   388|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |        0|  12238| 13756|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |        1|    406| 13756|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |        0|   1079| 13756|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |        1|     33| 13756|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |        0|    303|   369|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |        1|     38|   369|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |        0|     24|   369|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |        1|      4|   369|
|6 months  |JiVitA-3       |BANGLADESH |1       |        0|  14771| 16693|
|6 months  |JiVitA-3       |BANGLADESH |1       |        1|    948| 16693|
|6 months  |JiVitA-3       |BANGLADESH |0       |        0|    915| 16693|
|6 months  |JiVitA-3       |BANGLADESH |0       |        1|     59| 16693|
|6 months  |JiVitA-4       |BANGLADESH |1       |        0|   3516|  4034|
|6 months  |JiVitA-4       |BANGLADESH |1       |        1|    195|  4034|
|6 months  |JiVitA-4       |BANGLADESH |0       |        0|    302|  4034|
|6 months  |JiVitA-4       |BANGLADESH |0       |        1|     21|  4034|
|6 months  |NIH-Crypto     |BANGLADESH |1       |        0|    255|   457|
|6 months  |NIH-Crypto     |BANGLADESH |1       |        1|      7|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |        0|    191|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |        1|      4|   457|
|6 months  |PROBIT         |BELARUS    |1       |        0|  13874| 15760|
|6 months  |PROBIT         |BELARUS    |1       |        1|    154| 15760|
|6 months  |PROBIT         |BELARUS    |0       |        0|   1709| 15760|
|6 months  |PROBIT         |BELARUS    |0       |        1|     23| 15760|
|6 months  |PROVIDE        |BANGLADESH |1       |        0|    463|   604|
|6 months  |PROVIDE        |BANGLADESH |1       |        1|      7|   604|
|6 months  |PROVIDE        |BANGLADESH |0       |        0|    127|   604|
|6 months  |PROVIDE        |BANGLADESH |0       |        1|      7|   604|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |        0|   1850|  2014|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |        1|     17|  2014|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |        0|    145|  2014|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |        1|      2|  2014|
|6 months  |Vellore Crypto |INDIA      |1       |        0|    305|   407|
|6 months  |Vellore Crypto |INDIA      |1       |        1|     25|   407|
|6 months  |Vellore Crypto |INDIA      |0       |        0|     73|   407|
|6 months  |Vellore Crypto |INDIA      |0       |        1|      4|   407|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |        0|   7587|  8594|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |        1|    320|  8594|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |        0|    658|  8594|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |        1|     29|  8594|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |        0|    227|   371|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |        1|    116|   371|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |        0|     19|   371|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |        1|      9|   371|
|24 months |JiVitA-3       |BANGLADESH |1       |        0|   6834|  8564|
|24 months |JiVitA-3       |BANGLADESH |1       |        1|   1257|  8564|
|24 months |JiVitA-3       |BANGLADESH |0       |        0|    397|  8564|
|24 months |JiVitA-3       |BANGLADESH |0       |        1|     76|  8564|
|24 months |JiVitA-4       |BANGLADESH |1       |        0|   3325|  3988|
|24 months |JiVitA-4       |BANGLADESH |1       |        1|    343|  3988|
|24 months |JiVitA-4       |BANGLADESH |0       |        0|    296|  3988|
|24 months |JiVitA-4       |BANGLADESH |0       |        1|     24|  3988|
|24 months |NIH-Crypto     |BANGLADESH |1       |        0|    180|   321|
|24 months |NIH-Crypto     |BANGLADESH |1       |        1|     10|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |        0|    123|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |        1|      8|   321|
|24 months |PROBIT         |BELARUS    |1       |        0|   3540|  4035|
|24 months |PROBIT         |BELARUS    |1       |        1|     49|  4035|
|24 months |PROBIT         |BELARUS    |0       |        0|    430|  4035|
|24 months |PROBIT         |BELARUS    |0       |        1|     16|  4035|
|24 months |PROVIDE        |BANGLADESH |1       |        0|    411|   578|
|24 months |PROVIDE        |BANGLADESH |1       |        1|     43|   578|
|24 months |PROVIDE        |BANGLADESH |0       |        0|    115|   578|
|24 months |PROVIDE        |BANGLADESH |0       |        1|      9|   578|
|24 months |TanzaniaChild2 |TANZANIA   |1       |        0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA   |1       |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |        1|      0|     6|
|24 months |Vellore Crypto |INDIA      |1       |        0|    296|   409|
|24 months |Vellore Crypto |INDIA      |1       |        1|     36|   409|
|24 months |Vellore Crypto |INDIA      |0       |        0|     72|   409|
|24 months |Vellore Crypto |INDIA      |0       |        1|      5|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |        0|   1330|  1626|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |        1|    156|  1626|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |        0|    120|  1626|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |        1|     20|  1626|


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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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


