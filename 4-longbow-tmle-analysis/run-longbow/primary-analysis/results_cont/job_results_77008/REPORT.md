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
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |     76|    86|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |     10|    86|
|Birth     |JiVitA-3       |BANGLADESH |1       |  17485| 17985|
|Birth     |JiVitA-3       |BANGLADESH |0       |    500| 17985|
|Birth     |JiVitA-4       |BANGLADESH |1       |   2324|  2395|
|Birth     |JiVitA-4       |BANGLADESH |0       |     71|  2395|
|Birth     |NIH-Crypto     |BANGLADESH |1       |    281|   465|
|Birth     |NIH-Crypto     |BANGLADESH |0       |    184|   465|
|Birth     |PROBIT         |BELARUS    |1       |  12226| 13817|
|Birth     |PROBIT         |BELARUS    |0       |   1591| 13817|
|Birth     |PROVIDE        |BANGLADESH |1       |    424|   532|
|Birth     |PROVIDE        |BANGLADESH |0       |    108|   532|
|Birth     |Vellore Crypto |INDIA      |1       |    277|   343|
|Birth     |Vellore Crypto |INDIA      |0       |     66|   343|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |  11714| 12814|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1100| 12814|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |    343|   368|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |     25|   368|
|6 months  |JiVitA-3       |BANGLADESH |1       |  15630| 16705|
|6 months  |JiVitA-3       |BANGLADESH |0       |   1075| 16705|
|6 months  |JiVitA-4       |BANGLADESH |1       |   3719|  4056|
|6 months  |JiVitA-4       |BANGLADESH |0       |    337|  4056|
|6 months  |NIH-Crypto     |BANGLADESH |1       |    270|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |    187|   457|
|6 months  |PROBIT         |BELARUS    |1       |  13960| 15757|
|6 months  |PROBIT         |BELARUS    |0       |   1797| 15757|
|6 months  |PROVIDE        |BANGLADESH |1       |    464|   603|
|6 months  |PROVIDE        |BANGLADESH |0       |    139|   603|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |   1815|  2004|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |    189|  2004|
|6 months  |Vellore Crypto |INDIA      |1       |    340|   408|
|6 months  |Vellore Crypto |INDIA      |0       |     68|   408|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7716|  8437|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |    721|  8437|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |    347|   372|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |     25|   372|
|24 months |JiVitA-3       |BANGLADESH |1       |   8080|  8555|
|24 months |JiVitA-3       |BANGLADESH |0       |    475|  8555|
|24 months |JiVitA-4       |BANGLADESH |1       |   3685|  4008|
|24 months |JiVitA-4       |BANGLADESH |0       |    323|  4008|
|24 months |NIH-Crypto     |BANGLADESH |1       |    161|   260|
|24 months |NIH-Crypto     |BANGLADESH |0       |     99|   260|
|24 months |PROBIT         |BELARUS    |1       |   3507|  3970|
|24 months |PROBIT         |BELARUS    |0       |    463|  3970|
|24 months |PROVIDE        |BANGLADESH |1       |    442|   579|
|24 months |PROVIDE        |BANGLADESH |0       |    137|   579|
|24 months |TanzaniaChild2 |TANZANIA   |1       |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |      2|     6|
|24 months |Vellore Crypto |INDIA      |1       |    340|   409|
|24 months |Vellore Crypto |INDIA      |0       |     69|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |    398|   426|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |     28|   426|


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







