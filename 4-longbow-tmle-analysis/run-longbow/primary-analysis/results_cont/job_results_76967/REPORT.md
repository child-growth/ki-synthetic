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
|Birth     |CMC-V-BCS-2002 |INDIA      |1       |     81|    92|
|Birth     |CMC-V-BCS-2002 |INDIA      |0       |     11|    92|
|Birth     |JiVitA-3       |BANGLADESH |1       |  21879| 22418|
|Birth     |JiVitA-3       |BANGLADESH |0       |    539| 22418|
|Birth     |JiVitA-4       |BANGLADESH |1       |   2746|  2822|
|Birth     |JiVitA-4       |BANGLADESH |0       |     76|  2822|
|Birth     |NIH-Crypto     |BANGLADESH |1       |    291|   477|
|Birth     |NIH-Crypto     |BANGLADESH |0       |    186|   477|
|Birth     |PROBIT         |BELARUS    |1       |  12296| 13893|
|Birth     |PROBIT         |BELARUS    |0       |   1597| 13893|
|Birth     |PROVIDE        |BANGLADESH |1       |    431|   539|
|Birth     |PROVIDE        |BANGLADESH |0       |    108|   539|
|Birth     |Vellore Crypto |INDIA      |1       |    320|   388|
|Birth     |Vellore Crypto |INDIA      |0       |     68|   388|
|Birth     |ZVITAMBO       |ZIMBABWE   |1       |  12595| 13761|
|Birth     |ZVITAMBO       |ZIMBABWE   |0       |   1166| 13761|
|6 months  |CMC-V-BCS-2002 |INDIA      |1       |    344|   369|
|6 months  |CMC-V-BCS-2002 |INDIA      |0       |     25|   369|
|6 months  |JiVitA-3       |BANGLADESH |1       |  15655| 16732|
|6 months  |JiVitA-3       |BANGLADESH |0       |   1077| 16732|
|6 months  |JiVitA-4       |BANGLADESH |1       |   3716|  4052|
|6 months  |JiVitA-4       |BANGLADESH |0       |    336|  4052|
|6 months  |NIH-Crypto     |BANGLADESH |1       |    270|   457|
|6 months  |NIH-Crypto     |BANGLADESH |0       |    187|   457|
|6 months  |PROBIT         |BELARUS    |1       |  13961| 15760|
|6 months  |PROBIT         |BELARUS    |0       |   1799| 15760|
|6 months  |PROVIDE        |BANGLADESH |1       |    465|   604|
|6 months  |PROVIDE        |BANGLADESH |0       |    139|   604|
|6 months  |TanzaniaChild2 |TANZANIA   |1       |   1816|  2005|
|6 months  |TanzaniaChild2 |TANZANIA   |0       |    189|  2005|
|6 months  |Vellore Crypto |INDIA      |1       |    338|   407|
|6 months  |Vellore Crypto |INDIA      |0       |     69|   407|
|6 months  |ZVITAMBO       |ZIMBABWE   |1       |   7861|  8601|
|6 months  |ZVITAMBO       |ZIMBABWE   |0       |    740|  8601|
|24 months |CMC-V-BCS-2002 |INDIA      |1       |    347|   371|
|24 months |CMC-V-BCS-2002 |INDIA      |0       |     24|   371|
|24 months |JiVitA-3       |BANGLADESH |1       |   8104|  8584|
|24 months |JiVitA-3       |BANGLADESH |0       |    480|  8584|
|24 months |JiVitA-4       |BANGLADESH |1       |   3697|  4020|
|24 months |JiVitA-4       |BANGLADESH |0       |    323|  4020|
|24 months |NIH-Crypto     |BANGLADESH |1       |    161|   260|
|24 months |NIH-Crypto     |BANGLADESH |0       |     99|   260|
|24 months |PROBIT         |BELARUS    |1       |   3563|  4035|
|24 months |PROBIT         |BELARUS    |0       |    472|  4035|
|24 months |PROVIDE        |BANGLADESH |1       |    441|   578|
|24 months |PROVIDE        |BANGLADESH |0       |    137|   578|
|24 months |TanzaniaChild2 |TANZANIA   |1       |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA   |0       |      2|     6|
|24 months |Vellore Crypto |INDIA      |1       |    340|   409|
|24 months |Vellore Crypto |INDIA      |0       |     69|   409|
|24 months |ZVITAMBO       |ZIMBABWE   |1       |   1486|  1619|
|24 months |ZVITAMBO       |ZIMBABWE   |0       |    133|  1619|


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







