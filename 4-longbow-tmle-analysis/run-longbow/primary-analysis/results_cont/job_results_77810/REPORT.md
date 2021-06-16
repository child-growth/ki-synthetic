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
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country    |vagbrth | n_cell|     n|
|:-------|:---------|:--------------|:----------|:-------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |1       |     81|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |0       |      5|    86|
|BC      |Birth     |JiVitA-3       |BANGLADESH |1       |  16939| 17888|
|BC      |Birth     |JiVitA-3       |BANGLADESH |0       |    949| 17888|
|BC      |Birth     |JiVitA-4       |BANGLADESH |1       |   1863|  2008|
|BC      |Birth     |JiVitA-4       |BANGLADESH |0       |    145|  2008|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |1       |    259|   447|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |0       |    188|   447|
|BC      |Birth     |PROBIT         |BELARUS    |1       |  12290| 13817|
|BC      |Birth     |PROBIT         |BELARUS    |0       |   1527| 13817|
|BC      |Birth     |PROVIDE        |BANGLADESH |1       |    408|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH |0       |    124|   532|
|BC      |Birth     |Vellore Crypto |INDIA      |1       |    276|   343|
|BC      |Birth     |Vellore Crypto |INDIA      |0       |     67|   343|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11760| 12805|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1045| 12805|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    340|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     28|   368|
|BC      |6 months  |JiVitA-3       |BANGLADESH |1       |  15697| 16667|
|BC      |6 months  |JiVitA-3       |BANGLADESH |0       |    970| 16667|
|BC      |6 months  |JiVitA-4       |BANGLADESH |1       |   3715|  4036|
|BC      |6 months  |JiVitA-4       |BANGLADESH |0       |    321|  4036|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |1       |    262|   457|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |0       |    195|   457|
|BC      |6 months  |PROBIT         |BELARUS    |1       |  14026| 15757|
|BC      |6 months  |PROBIT         |BELARUS    |0       |   1731| 15757|
|BC      |6 months  |PROVIDE        |BANGLADESH |1       |    470|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH |0       |    133|   603|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |1       |   1866|  2013|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |0       |    147|  2013|
|BC      |6 months  |Vellore Crypto |INDIA      |1       |    332|   408|
|BC      |6 months  |Vellore Crypto |INDIA      |0       |     76|   408|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7760|  8431|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE   |0       |    671|  8431|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |1       |    344|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |0       |     28|   372|
|BC      |24 months |JiVitA-3       |BANGLADESH |1       |   8063|  8536|
|BC      |24 months |JiVitA-3       |BANGLADESH |0       |    473|  8536|
|BC      |24 months |JiVitA-4       |BANGLADESH |1       |   3653|  3974|
|BC      |24 months |JiVitA-4       |BANGLADESH |0       |    321|  3974|
|BC      |24 months |NIH-Crypto     |BANGLADESH |1       |    190|   321|
|BC      |24 months |NIH-Crypto     |BANGLADESH |0       |    131|   321|
|BC      |24 months |PROBIT         |BELARUS    |1       |   3530|  3970|
|BC      |24 months |PROBIT         |BELARUS    |0       |    440|  3970|
|BC      |24 months |PROVIDE        |BANGLADESH |1       |    454|   579|
|BC      |24 months |PROVIDE        |BANGLADESH |0       |    125|   579|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |1       |      6|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |0       |      0|     6|
|BC      |24 months |Vellore Crypto |INDIA      |1       |    332|   409|
|BC      |24 months |Vellore Crypto |INDIA      |0       |     77|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE   |1       |    392|   430|
|BC      |24 months |ZVITAMBO       |ZIMBABWE   |0       |     38|   430|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |1       |     76|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |0       |     10|    86|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |1       |  17485| 17985|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |0       |    500| 17985|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |1       |   2324|  2395|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |0       |     71|  2395|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |1       |    281|   465|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |0       |    184|   465|
|FULL    |Birth     |PROBIT         |BELARUS    |1       |  12226| 13817|
|FULL    |Birth     |PROBIT         |BELARUS    |0       |   1591| 13817|
|FULL    |Birth     |PROVIDE        |BANGLADESH |1       |    424|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH |0       |    108|   532|
|FULL    |Birth     |Vellore Crypto |INDIA      |1       |    277|   343|
|FULL    |Birth     |Vellore Crypto |INDIA      |0       |     66|   343|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11714| 12814|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1100| 12814|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    343|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     25|   368|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |1       |  15630| 16705|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |0       |   1075| 16705|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |1       |   3719|  4056|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |0       |    337|  4056|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |1       |    270|   457|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |0       |    187|   457|
|FULL    |6 months  |PROBIT         |BELARUS    |1       |  13960| 15757|
|FULL    |6 months  |PROBIT         |BELARUS    |0       |   1797| 15757|
|FULL    |6 months  |PROVIDE        |BANGLADESH |1       |    464|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH |0       |    139|   603|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |1       |   1815|  2004|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |0       |    189|  2004|
|FULL    |6 months  |Vellore Crypto |INDIA      |1       |    340|   408|
|FULL    |6 months  |Vellore Crypto |INDIA      |0       |     68|   408|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7716|  8437|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE   |0       |    721|  8437|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |1       |    347|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |0       |     25|   372|
|FULL    |24 months |JiVitA-3       |BANGLADESH |1       |   8080|  8555|
|FULL    |24 months |JiVitA-3       |BANGLADESH |0       |    475|  8555|
|FULL    |24 months |JiVitA-4       |BANGLADESH |1       |   3685|  4008|
|FULL    |24 months |JiVitA-4       |BANGLADESH |0       |    323|  4008|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |1       |    161|   260|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |0       |     99|   260|
|FULL    |24 months |PROBIT         |BELARUS    |1       |   3507|  3970|
|FULL    |24 months |PROBIT         |BELARUS    |0       |    463|  3970|
|FULL    |24 months |PROVIDE        |BANGLADESH |1       |    442|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH |0       |    137|   579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |1       |      4|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |0       |      2|     6|
|FULL    |24 months |Vellore Crypto |INDIA      |1       |    340|   409|
|FULL    |24 months |Vellore Crypto |INDIA      |0       |     69|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE   |1       |    398|   426|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE   |0       |     28|   426|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |1       |    340|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |0       |     23|   363|
|QI      |Birth     |JiVitA-3       |BANGLADESH |1       |  11028| 11268|
|QI      |Birth     |JiVitA-3       |BANGLADESH |0       |    240| 11268|
|QI      |Birth     |JiVitA-4       |BANGLADESH |1       |    702|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH |0       |     32|   734|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |1       |    288|   490|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |0       |    202|   490|
|QI      |Birth     |PROBIT         |BELARUS    |1       |   5973|  6687|
|QI      |Birth     |PROBIT         |BELARUS    |0       |    714|  6687|
|QI      |Birth     |PROVIDE        |BANGLADESH |1       |    425|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH |0       |    106|   531|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |1       |   2132|  2358|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |0       |    226|  2358|
|QI      |Birth     |Vellore Crypto |INDIA      |1       |    317|   379|
|QI      |Birth     |Vellore Crypto |INDIA      |0       |     62|   379|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11649| 12749|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1100| 12749|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    325|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     22|   347|
|QI      |6 months  |JiVitA-3       |BANGLADESH |1       |   4583|  4829|
|QI      |6 months  |JiVitA-3       |BANGLADESH |0       |    246|  4829|
|QI      |6 months  |JiVitA-4       |BANGLADESH |1       |    609|   658|
|QI      |6 months  |JiVitA-4       |BANGLADESH |0       |     49|   658|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |1       |    201|   352|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |0       |    151|   352|
|QI      |6 months  |PROBIT         |BELARUS    |1       |   4648|  5179|
|QI      |6 months  |PROBIT         |BELARUS    |0       |    531|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH |1       |    468|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH |0       |    143|   611|
|QI      |6 months  |TanzaniaChild2 |TANZANIA   |1       |   1735|  1924|
|QI      |6 months  |TanzaniaChild2 |TANZANIA   |0       |    189|  1924|
|QI      |6 months  |Vellore Crypto |INDIA      |1       |    322|   383|
|QI      |6 months  |Vellore Crypto |INDIA      |0       |     61|   383|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE   |1       |   5741|  6256|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE   |0       |    515|  6256|
|QI      |24 months |CMC-V-BCS-2002 |INDIA      |1       |    138|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA      |0       |      7|   145|
|QI      |24 months |JiVitA-3       |BANGLADESH |1       |      4|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH |0       |      2|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH |1       |     45|    50|
|QI      |24 months |JiVitA-4       |BANGLADESH |0       |      5|    50|
|QI      |24 months |NIH-Crypto     |BANGLADESH |1       |     14|    28|
|QI      |24 months |NIH-Crypto     |BANGLADESH |0       |     14|    28|
|QI      |24 months |PROBIT         |BELARUS    |1       |    128|   143|
|QI      |24 months |PROBIT         |BELARUS    |0       |     15|   143|
|QI      |24 months |PROVIDE        |BANGLADESH |1       |     43|    55|
|QI      |24 months |PROVIDE        |BANGLADESH |0       |     12|    55|
|QI      |24 months |TanzaniaChild2 |TANZANIA   |1       |     51|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA   |0       |      3|    54|
|QI      |24 months |Vellore Crypto |INDIA      |1       |    128|   161|
|QI      |24 months |Vellore Crypto |INDIA      |0       |     33|   161|
|QI      |24 months |ZVITAMBO       |ZIMBABWE   |1       |    143|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE   |0       |      9|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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


