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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |gagebrth          | n_cell|     n|
|:---------|:--------------|:-----------|:-----------------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |     58|    92|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |     11|    92|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |     23|    92|
|Birth     |COHORTS        |INDIA       |Full or late term |    570|  1293|
|Birth     |COHORTS        |INDIA       |Preterm           |    285|  1293|
|Birth     |COHORTS        |INDIA       |Early term        |    438|  1293|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |    341|   617|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |     95|   617|
|Birth     |COHORTS        |GUATEMALA   |Early term        |    181|   617|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |   1164|  3024|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |    649|  3024|
|Birth     |COHORTS        |PHILIPPINES |Early term        |   1211|  3024|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |  10944| 21442|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |   4514| 21442|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |   5984| 21442|
|Birth     |Keneba         |GAMBIA      |Full or late term |    734|  1515|
|Birth     |Keneba         |GAMBIA      |Preterm           |    235|  1515|
|Birth     |Keneba         |GAMBIA      |Early term        |    546|  1515|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |    162|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |    257|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |    313|   732|
|Birth     |PROBIT         |BELARUS     |Full or late term |   7100| 13893|
|Birth     |PROBIT         |BELARUS     |Preterm           |    472| 13893|
|Birth     |PROBIT         |BELARUS     |Early term        |   6321| 13893|
|Birth     |Vellore Crypto |INDIA       |Full or late term |    238|   369|
|Birth     |Vellore Crypto |INDIA       |Preterm           |     36|   369|
|Birth     |Vellore Crypto |INDIA       |Early term        |     95|   369|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |    212|   347|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |     52|   347|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |     83|   347|
|6 months  |COHORTS        |INDIA       |Full or late term |    568|  1312|
|6 months  |COHORTS        |INDIA       |Preterm           |    299|  1312|
|6 months  |COHORTS        |INDIA       |Early term        |    445|  1312|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |    389|   713|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |    113|   713|
|6 months  |COHORTS        |GUATEMALA   |Early term        |    211|   713|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |   1028|  2687|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |    573|  2687|
|6 months  |COHORTS        |PHILIPPINES |Early term        |   1086|  2687|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |   8527| 16010|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |   3045| 16010|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |   4438| 16010|
|6 months  |Keneba         |GAMBIA      |Full or late term |    658|  1374|
|6 months  |Keneba         |GAMBIA      |Preterm           |    207|  1374|
|6 months  |Keneba         |GAMBIA      |Early term        |    509|  1374|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |    155|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |    251|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |    309|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |   8007| 15760|
|6 months  |PROBIT         |BELARUS     |Preterm           |    551| 15760|
|6 months  |PROBIT         |BELARUS     |Early term        |   7202| 15760|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |   1167|  1903|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |    291|  1903|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |    445|  1903|
|6 months  |Vellore Crypto |INDIA       |Full or late term |    249|   388|
|6 months  |Vellore Crypto |INDIA       |Preterm           |     42|   388|
|6 months  |Vellore Crypto |INDIA       |Early term        |     97|   388|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |    213|   349|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |     52|   349|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |     84|   349|
|24 months |COHORTS        |INDIA       |Full or late term |    565|  1308|
|24 months |COHORTS        |INDIA       |Preterm           |    305|  1308|
|24 months |COHORTS        |INDIA       |Early term        |    438|  1308|
|24 months |COHORTS        |GUATEMALA   |Full or late term |    375|   661|
|24 months |COHORTS        |GUATEMALA   |Preterm           |    107|   661|
|24 months |COHORTS        |GUATEMALA   |Early term        |    179|   661|
|24 months |COHORTS        |PHILIPPINES |Full or late term |    938|  2424|
|24 months |COHORTS        |PHILIPPINES |Preterm           |    513|  2424|
|24 months |COHORTS        |PHILIPPINES |Early term        |    973|  2424|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |   4327|  8202|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |   1604|  8202|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |   2271|  8202|
|24 months |Keneba         |GAMBIA      |Full or late term |    557|  1156|
|24 months |Keneba         |GAMBIA      |Preterm           |    167|  1156|
|24 months |Keneba         |GAMBIA      |Early term        |    432|  1156|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |     79|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |    208|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |    227|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |   2025|  4035|
|24 months |PROBIT         |BELARUS     |Preterm           |    137|  4035|
|24 months |PROBIT         |BELARUS     |Early term        |   1873|  4035|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |      5|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |      1|     6|
|24 months |Vellore Crypto |INDIA       |Full or late term |    250|   390|
|24 months |Vellore Crypto |INDIA       |Preterm           |     42|   390|
|24 months |Vellore Crypto |INDIA       |Early term        |     98|   390|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA







