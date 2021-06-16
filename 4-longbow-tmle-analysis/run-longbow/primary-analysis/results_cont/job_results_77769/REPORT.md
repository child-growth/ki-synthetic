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
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |1       |     86|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA      |0       |      6|    92|
|BC      |Birth     |JiVitA-3       |BANGLADESH |1       |  21101| 22289|
|BC      |Birth     |JiVitA-3       |BANGLADESH |0       |   1188| 22289|
|BC      |Birth     |JiVitA-4       |BANGLADESH |1       |   2203|  2369|
|BC      |Birth     |JiVitA-4       |BANGLADESH |0       |    166|  2369|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |1       |    270|   463|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |0       |    193|   463|
|BC      |Birth     |PROBIT         |BELARUS    |1       |  12357| 13893|
|BC      |Birth     |PROBIT         |BELARUS    |0       |   1536| 13893|
|BC      |Birth     |PROVIDE        |BANGLADESH |1       |    414|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH |0       |    125|   539|
|BC      |Birth     |Vellore Crypto |INDIA      |1       |    311|   388|
|BC      |Birth     |Vellore Crypto |INDIA      |0       |     77|   388|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  12644| 13756|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1112| 13756|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    341|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     28|   369|
|BC      |6 months  |JiVitA-3       |BANGLADESH |1       |  15719| 16693|
|BC      |6 months  |JiVitA-3       |BANGLADESH |0       |    974| 16693|
|BC      |6 months  |JiVitA-4       |BANGLADESH |1       |   3711|  4034|
|BC      |6 months  |JiVitA-4       |BANGLADESH |0       |    323|  4034|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |1       |    262|   457|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |0       |    195|   457|
|BC      |6 months  |PROBIT         |BELARUS    |1       |  14028| 15760|
|BC      |6 months  |PROBIT         |BELARUS    |0       |   1732| 15760|
|BC      |6 months  |PROVIDE        |BANGLADESH |1       |    470|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH |0       |    134|   604|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |1       |   1867|  2014|
|BC      |6 months  |TanzaniaChild2 |TANZANIA   |0       |    147|  2014|
|BC      |6 months  |Vellore Crypto |INDIA      |1       |    330|   407|
|BC      |6 months  |Vellore Crypto |INDIA      |0       |     77|   407|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7907|  8594|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE   |0       |    687|  8594|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |1       |    343|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA      |0       |     28|   371|
|BC      |24 months |JiVitA-3       |BANGLADESH |1       |   8091|  8564|
|BC      |24 months |JiVitA-3       |BANGLADESH |0       |    473|  8564|
|BC      |24 months |JiVitA-4       |BANGLADESH |1       |   3668|  3988|
|BC      |24 months |JiVitA-4       |BANGLADESH |0       |    320|  3988|
|BC      |24 months |NIH-Crypto     |BANGLADESH |1       |    190|   321|
|BC      |24 months |NIH-Crypto     |BANGLADESH |0       |    131|   321|
|BC      |24 months |PROBIT         |BELARUS    |1       |   3589|  4035|
|BC      |24 months |PROBIT         |BELARUS    |0       |    446|  4035|
|BC      |24 months |PROVIDE        |BANGLADESH |1       |    454|   578|
|BC      |24 months |PROVIDE        |BANGLADESH |0       |    124|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |1       |      6|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA   |0       |      0|     6|
|BC      |24 months |Vellore Crypto |INDIA      |1       |    332|   409|
|BC      |24 months |Vellore Crypto |INDIA      |0       |     77|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE   |1       |   1486|  1626|
|BC      |24 months |ZVITAMBO       |ZIMBABWE   |0       |    140|  1626|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |1       |     81|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA      |0       |     11|    92|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |1       |  21879| 22418|
|FULL    |Birth     |JiVitA-3       |BANGLADESH |0       |    539| 22418|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |1       |   2746|  2822|
|FULL    |Birth     |JiVitA-4       |BANGLADESH |0       |     76|  2822|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |1       |    291|   477|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |0       |    186|   477|
|FULL    |Birth     |PROBIT         |BELARUS    |1       |  12296| 13893|
|FULL    |Birth     |PROBIT         |BELARUS    |0       |   1597| 13893|
|FULL    |Birth     |PROVIDE        |BANGLADESH |1       |    431|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH |0       |    108|   539|
|FULL    |Birth     |Vellore Crypto |INDIA      |1       |    320|   388|
|FULL    |Birth     |Vellore Crypto |INDIA      |0       |     68|   388|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  12595| 13761|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1166| 13761|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    344|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     25|   369|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |1       |  15655| 16732|
|FULL    |6 months  |JiVitA-3       |BANGLADESH |0       |   1077| 16732|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |1       |   3716|  4052|
|FULL    |6 months  |JiVitA-4       |BANGLADESH |0       |    336|  4052|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |1       |    270|   457|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |0       |    187|   457|
|FULL    |6 months  |PROBIT         |BELARUS    |1       |  13961| 15760|
|FULL    |6 months  |PROBIT         |BELARUS    |0       |   1799| 15760|
|FULL    |6 months  |PROVIDE        |BANGLADESH |1       |    465|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH |0       |    139|   604|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |1       |   1816|  2005|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA   |0       |    189|  2005|
|FULL    |6 months  |Vellore Crypto |INDIA      |1       |    338|   407|
|FULL    |6 months  |Vellore Crypto |INDIA      |0       |     69|   407|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7861|  8601|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE   |0       |    740|  8601|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |1       |    347|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA      |0       |     24|   371|
|FULL    |24 months |JiVitA-3       |BANGLADESH |1       |   8104|  8584|
|FULL    |24 months |JiVitA-3       |BANGLADESH |0       |    480|  8584|
|FULL    |24 months |JiVitA-4       |BANGLADESH |1       |   3697|  4020|
|FULL    |24 months |JiVitA-4       |BANGLADESH |0       |    323|  4020|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |1       |    161|   260|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |0       |     99|   260|
|FULL    |24 months |PROBIT         |BELARUS    |1       |   3563|  4035|
|FULL    |24 months |PROBIT         |BELARUS    |0       |    472|  4035|
|FULL    |24 months |PROVIDE        |BANGLADESH |1       |    441|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH |0       |    137|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |1       |      4|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA   |0       |      2|     6|
|FULL    |24 months |Vellore Crypto |INDIA      |1       |    340|   409|
|FULL    |24 months |Vellore Crypto |INDIA      |0       |     69|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE   |1       |   1486|  1619|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE   |0       |    133|  1619|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |1       |    340|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA      |0       |     23|   363|
|QI      |Birth     |JiVitA-3       |BANGLADESH |1       |  11048| 11288|
|QI      |Birth     |JiVitA-3       |BANGLADESH |0       |    240| 11288|
|QI      |Birth     |JiVitA-4       |BANGLADESH |1       |    698|   730|
|QI      |Birth     |JiVitA-4       |BANGLADESH |0       |     32|   730|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |1       |    287|   488|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |0       |    201|   488|
|QI      |Birth     |PROBIT         |BELARUS    |1       |   6038|  6759|
|QI      |Birth     |PROBIT         |BELARUS    |0       |    721|  6759|
|QI      |Birth     |PROVIDE        |BANGLADESH |1       |    425|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH |0       |    106|   531|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |1       |   2132|  2358|
|QI      |Birth     |TanzaniaChild2 |TANZANIA   |0       |    226|  2358|
|QI      |Birth     |Vellore Crypto |INDIA      |1       |    340|   405|
|QI      |Birth     |Vellore Crypto |INDIA      |0       |     65|   405|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11770| 12881|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1111| 12881|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |1       |    325|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA      |0       |     22|   347|
|QI      |6 months  |JiVitA-3       |BANGLADESH |1       |   4582|  4828|
|QI      |6 months  |JiVitA-3       |BANGLADESH |0       |    246|  4828|
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


