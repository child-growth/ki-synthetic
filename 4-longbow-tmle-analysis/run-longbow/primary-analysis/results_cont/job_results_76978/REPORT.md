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
|Birth     |JiVitA-3       |BANGLADESH |1        |  13986| 22431|
|Birth     |JiVitA-3       |BANGLADESH |2+       |   8445| 22431|
|Birth     |NIH-Crypto     |BANGLADESH |1        |    522|   732|
|Birth     |NIH-Crypto     |BANGLADESH |2+       |    210|   732|
|Birth     |PROVIDE        |BANGLADESH |1        |    391|   539|
|Birth     |PROVIDE        |BANGLADESH |2+       |    148|   539|
|Birth     |Vellore Crypto |INDIA      |1        |     84|   388|
|Birth     |Vellore Crypto |INDIA      |2+       |    304|   388|
|6 months  |JiVitA-3       |BANGLADESH |1        |  10887| 16800|
|6 months  |JiVitA-3       |BANGLADESH |2+       |   5913| 16800|
|6 months  |LCNI-5         |MALAWI     |1        |    390|   811|
|6 months  |LCNI-5         |MALAWI     |2+       |    421|   811|
|6 months  |NIH-Crypto     |BANGLADESH |1        |    507|   715|
|6 months  |NIH-Crypto     |BANGLADESH |2+       |    208|   715|
|6 months  |PROVIDE        |BANGLADESH |1        |    438|   604|
|6 months  |PROVIDE        |BANGLADESH |2+       |    166|   604|
|6 months  |TanzaniaChild2 |TANZANIA   |1        |   1391|  2020|
|6 months  |TanzaniaChild2 |TANZANIA   |2+       |    629|  2020|
|6 months  |Vellore Crypto |INDIA      |1        |     89|   407|
|6 months  |Vellore Crypto |INDIA      |2+       |    318|   407|
|24 months |JiVitA-3       |BANGLADESH |1        |   5454|  8622|
|24 months |JiVitA-3       |BANGLADESH |2+       |   3168|  8622|
|24 months |LCNI-5         |MALAWI     |1        |    283|   571|
|24 months |LCNI-5         |MALAWI     |2+       |    288|   571|
|24 months |NIH-Crypto     |BANGLADESH |1        |    357|   514|
|24 months |NIH-Crypto     |BANGLADESH |2+       |    157|   514|
|24 months |PROVIDE        |BANGLADESH |1        |    424|   578|
|24 months |PROVIDE        |BANGLADESH |2+       |    154|   578|
|24 months |TanzaniaChild2 |TANZANIA   |1        |      5|     6|
|24 months |TanzaniaChild2 |TANZANIA   |2+       |      1|     6|
|24 months |Vellore Crypto |INDIA      |1        |     89|   409|
|24 months |Vellore Crypto |INDIA      |2+       |    320|   409|


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







