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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |vagbrth | n_cell|     n|
|:---------|:--------------|:----------|:-------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |     81|    86|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |      5|    86|
|Birth     |JiVitA-3       |BANGLADESH |1       |  16939| 17888|
|Birth     |JiVitA-3       |BANGLADESH |0       |    949| 17888|
|Birth     |JiVitA-4       |BANGLADESH |1       |   1863|  2008|
|Birth     |JiVitA-4       |BANGLADESH |0       |    145|  2008|
|Birth     |NIH-Crypto     |BANGLADESH |1       |    259|   447|
|Birth     |NIH-Crypto     |BANGLADESH |0       |    188|   447|
|Birth     |PROBIT         |BELARUS    |1       |  12290| 13817|
|Birth     |PROBIT         |BELARUS    |0       |   1527| 13817|
|Birth     |PROVIDE        |BANGLADESH |1       |    408|   532|
|Birth     |PROVIDE        |BANGLADESH |0       |    124|   532|
|Birth     |Vellore Crypto |INDIA      |1       |    276|   343|
|Birth     |Vellore Crypto |INDIA      |0       |     67|   343|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11760| 12805|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1045| 12805|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |    340|   368|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |     28|   368|
|6 months  |JiVitA-3       |BANGLADESH |1       |  15697| 16667|
|6 months  |JiVitA-3       |BANGLADESH |0       |    970| 16667|
|6 months  |JiVitA-4       |BANGLADESH |1       |   3715|  4036|
|6 months  |JiVitA-4       |BANGLADESH |0       |    321|  4036|
|6 months  |NIH-Crypto     |BANGLADESH |1       |    262|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |    195|   457|
|6 months  |PROBIT         |BELARUS    |1       |  14026| 15757|
|6 months  |PROBIT         |BELARUS    |0       |   1731| 15757|
|6 months  |PROVIDE        |BANGLADESH |1       |    470|   603|
|6 months  |PROVIDE        |BANGLADESH |0       |    133|   603|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |   1866|  2013|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |    147|  2013|
|6 months  |Vellore Crypto |INDIA      |1       |    332|   408|
|6 months  |Vellore Crypto |INDIA      |0       |     76|   408|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7760|  8431|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |    671|  8431|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |    344|   372|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |     28|   372|
|24 months |JiVitA-3       |BANGLADESH |1       |   8063|  8536|
|24 months |JiVitA-3       |BANGLADESH |0       |    473|  8536|
|24 months |JiVitA-4       |BANGLADESH |1       |   3653|  3974|
|24 months |JiVitA-4       |BANGLADESH |0       |    321|  3974|
|24 months |NIH-Crypto     |BANGLADESH |1       |    190|   321|
|24 months |NIH-Crypto     |BANGLADESH |0       |    131|   321|
|24 months |PROBIT         |BELARUS    |1       |   3530|  3970|
|24 months |PROBIT         |BELARUS    |0       |    440|  3970|
|24 months |PROVIDE        |BANGLADESH |1       |    454|   579|
|24 months |PROVIDE        |BANGLADESH |0       |    125|   579|
|24 months |TanzaniaChild2 |TANZANIA   |1       |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |      0|     6|
|24 months |Vellore Crypto |INDIA      |1       |    332|   409|
|24 months |Vellore Crypto |INDIA      |0       |     77|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |    392|   430|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |     38|   430|


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


