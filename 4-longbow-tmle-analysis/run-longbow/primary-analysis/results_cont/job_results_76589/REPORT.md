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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |vagbrth | n_cell|     n|
|:---------|:--------------|:----------|:-------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |     86|    92|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |      6|    92|
|Birth     |JiVitA-3       |BANGLADESH |1       |  21101| 22289|
|Birth     |JiVitA-3       |BANGLADESH |0       |   1188| 22289|
|Birth     |JiVitA-4       |BANGLADESH |1       |   2203|  2369|
|Birth     |JiVitA-4       |BANGLADESH |0       |    166|  2369|
|Birth     |NIH-Crypto     |BANGLADESH |1       |    270|   463|
|Birth     |NIH-Crypto     |BANGLADESH |0       |    193|   463|
|Birth     |PROBIT         |BELARUS    |1       |  12357| 13893|
|Birth     |PROBIT         |BELARUS    |0       |   1536| 13893|
|Birth     |PROVIDE        |BANGLADESH |1       |    414|   539|
|Birth     |PROVIDE        |BANGLADESH |0       |    125|   539|
|Birth     |Vellore Crypto |INDIA      |1       |    311|   388|
|Birth     |Vellore Crypto |INDIA      |0       |     77|   388|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |  12644| 13756|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1112| 13756|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |    341|   369|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |     28|   369|
|6 months  |JiVitA-3       |BANGLADESH |1       |  15719| 16693|
|6 months  |JiVitA-3       |BANGLADESH |0       |    974| 16693|
|6 months  |JiVitA-4       |BANGLADESH |1       |   3711|  4034|
|6 months  |JiVitA-4       |BANGLADESH |0       |    323|  4034|
|6 months  |NIH-Crypto     |BANGLADESH |1       |    262|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |    195|   457|
|6 months  |PROBIT         |BELARUS    |1       |  14028| 15760|
|6 months  |PROBIT         |BELARUS    |0       |   1732| 15760|
|6 months  |PROVIDE        |BANGLADESH |1       |    470|   604|
|6 months  |PROVIDE        |BANGLADESH |0       |    134|   604|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |   1867|  2014|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |    147|  2014|
|6 months  |Vellore Crypto |INDIA      |1       |    330|   407|
|6 months  |Vellore Crypto |INDIA      |0       |     77|   407|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7907|  8594|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |    687|  8594|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |    343|   371|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |     28|   371|
|24 months |JiVitA-3       |BANGLADESH |1       |   8091|  8564|
|24 months |JiVitA-3       |BANGLADESH |0       |    473|  8564|
|24 months |JiVitA-4       |BANGLADESH |1       |   3668|  3988|
|24 months |JiVitA-4       |BANGLADESH |0       |    320|  3988|
|24 months |NIH-Crypto     |BANGLADESH |1       |    190|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |    131|   321|
|24 months |PROBIT         |BELARUS    |1       |   3589|  4035|
|24 months |PROBIT         |BELARUS    |0       |    446|  4035|
|24 months |PROVIDE        |BANGLADESH |1       |    454|   578|
|24 months |PROVIDE        |BANGLADESH |0       |    124|   578|
|24 months |TanzaniaChild2 |TANZANIA   |1       |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |      0|     6|
|24 months |Vellore Crypto |INDIA      |1       |    332|   409|
|24 months |Vellore Crypto |INDIA      |0       |     77|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |   1486|  1626|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |    140|  1626|


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


