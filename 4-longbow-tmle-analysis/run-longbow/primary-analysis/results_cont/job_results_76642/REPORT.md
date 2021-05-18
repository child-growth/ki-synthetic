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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |nchldlt5 | n_cell|     n|
|:---------|:--------------|:----------|:--------|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH |1        |  11530| 17997|
|Birth     |JiVitA-3       |BANGLADESH |2+       |   6467| 17997|
|Birth     |NIH-Crypto     |BANGLADESH |1        |    471|   707|
|Birth     |NIH-Crypto     |BANGLADESH |2+       |    236|   707|
|Birth     |PROVIDE        |BANGLADESH |1        |    382|   532|
|Birth     |PROVIDE        |BANGLADESH |2+       |    150|   532|
|Birth     |Vellore Crypto |INDIA      |1        |     65|   343|
|Birth     |Vellore Crypto |INDIA      |2+       |    278|   343|
|6 months  |JiVitA-3       |BANGLADESH |1        |  10705| 16776|
|6 months  |JiVitA-3       |BANGLADESH |2+       |   6071| 16776|
|6 months  |LCNI-5         |MALAWI     |1        |    411|   826|
|6 months  |LCNI-5         |MALAWI     |2+       |    415|   826|
|6 months  |NIH-Crypto     |BANGLADESH |1        |    480|   715|
|6 months  |NIH-Crypto     |BANGLADESH |2+       |    235|   715|
|6 months  |PROVIDE        |BANGLADESH |1        |    445|   603|
|6 months  |PROVIDE        |BANGLADESH |2+       |    158|   603|
|6 months  |TanzaniaChild2 |TANZANIA   |1        |   1402|  2027|
|6 months  |TanzaniaChild2 |TANZANIA   |2+       |    625|  2027|
|6 months  |Vellore Crypto |INDIA      |1        |     80|   408|
|6 months  |Vellore Crypto |INDIA      |2+       |    328|   408|
|24 months |JiVitA-3       |BANGLADESH |1        |   5495|  8599|
|24 months |JiVitA-3       |BANGLADESH |2+       |   3104|  8599|
|24 months |LCNI-5         |MALAWI     |1        |    276|   559|
|24 months |LCNI-5         |MALAWI     |2+       |    283|   559|
|24 months |NIH-Crypto     |BANGLADESH |1        |    353|   514|
|24 months |NIH-Crypto     |BANGLADESH |2+       |    161|   514|
|24 months |PROVIDE        |BANGLADESH |1        |    426|   579|
|24 months |PROVIDE        |BANGLADESH |2+       |    153|   579|
|24 months |TanzaniaChild2 |TANZANIA   |1        |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA   |2+       |      2|     6|
|24 months |Vellore Crypto |INDIA      |1        |     80|   409|
|24 months |Vellore Crypto |INDIA      |2+       |    329|   409|


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

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA







