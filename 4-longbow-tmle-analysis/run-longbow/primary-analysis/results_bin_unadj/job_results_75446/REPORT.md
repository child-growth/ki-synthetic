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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country     |gagebrth          | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:-----------|:-----------------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|     17|   274|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|    142|   274|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Early term        |            0|      5|   274|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Early term        |            1|     75|   274|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|      4|   274|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|     31|   274|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Full or late term |            0|    331|  1139|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Full or late term |            1|    139|  1139|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Early term        |            0|    203|  1139|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Early term        |            1|     94|  1139|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Preterm           |            0|    260|  1139|
|0-24 months (no birth st.) |COHORTS        |INDIA       |Preterm           |            1|    112|  1139|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Full or late term |            0|     82|   486|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Full or late term |            1|    195|   486|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Early term        |            0|     40|   486|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Early term        |            1|    103|   486|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Preterm           |            0|     24|   486|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA   |Preterm           |            1|     42|   486|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Full or late term |            0|    395|  2848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Full or late term |            1|    737|  2848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Early term        |            0|    375|  2848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Early term        |            1|    743|  2848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Preterm           |            0|    177|  2848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES |Preterm           |            1|    421|  2848|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Full or late term |            0|   6836| 17742|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Full or late term |            1|   2300| 17742|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Early term        |            0|   3442| 17742|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Early term        |            1|   1180| 17742|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Preterm           |            0|   2995| 17742|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH  |Preterm           |            1|    989| 17742|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Full or late term |            0|    391|  1482|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Full or late term |            1|    348|  1482|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Early term        |            0|    320|  1482|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Early term        |            1|    226|  1482|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Preterm           |            0|    100|  1482|
|0-24 months (no birth st.) |Keneba         |GAMBIA      |Preterm           |            1|     97|  1482|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Full or late term |            0|    103|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Full or late term |            1|     88|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Early term        |            0|    121|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Early term        |            1|     74|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    172|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH  |Preterm           |            1|     95|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Full or late term |            0|   7570| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Full or late term |            1|   1008| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Early term        |            0|   6661| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Early term        |            1|    939| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Preterm           |            0|    513| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS     |Preterm           |            1|     74| 16765|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Full or late term |            0|    916|  2115|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Full or late term |            1|    383|  2115|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Early term        |            0|    334|  2115|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Early term        |            1|    156|  2115|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    221|  2115|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA    |Preterm           |            1|    105|  2115|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Full or late term |            0|     76|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Full or late term |            1|    138|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Early term        |            0|     42|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Early term        |            1|     41|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Preterm           |            0|     24|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA       |Preterm           |            1|     24|   345|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|    100|   270|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|     57|   270|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Early term        |            0|     43|   270|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Early term        |            1|     35|   270|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|     22|   270|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|     13|   270|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Full or late term |            0|    418|  1103|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Full or late term |            1|     31|  1103|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Early term        |            0|    258|  1103|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Early term        |            1|     34|  1103|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Preterm           |            0|    334|  1103|
|0-6 months (no birth st.)  |COHORTS        |INDIA       |Preterm           |            1|     28|  1103|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Full or late term |            0|    204|   452|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Full or late term |            1|     54|   452|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Early term        |            0|    112|   452|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Early term        |            1|     22|   452|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Preterm           |            0|     48|   452|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA   |Preterm           |            1|     12|   452|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Full or late term |            0|    924|  2848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Full or late term |            1|    208|  2848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Early term        |            0|    899|  2848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Early term        |            1|    219|  2848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Preterm           |            0|    485|  2848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES |Preterm           |            1|    113|  2848|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Full or late term |            0|   7945| 17701|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Full or late term |            1|   1177| 17701|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Early term        |            0|   4004| 17701|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Early term        |            1|    609| 17701|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Preterm           |            0|   3446| 17701|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH  |Preterm           |            1|    520| 17701|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Full or late term |            0|    496|  1296|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Full or late term |            1|    139|  1296|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Early term        |            0|    386|  1296|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Early term        |            1|    102|  1296|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Preterm           |            0|    129|  1296|
|0-6 months (no birth st.)  |Keneba         |GAMBIA      |Preterm           |            1|     44|  1296|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Full or late term |            0|    150|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Full or late term |            1|     41|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Early term        |            0|    152|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Early term        |            1|     43|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    227|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH  |Preterm           |            1|     40|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Full or late term |            0|   8082| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Full or late term |            1|    495| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Early term        |            0|   7109| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Early term        |            1|    490| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Preterm           |            0|    542| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS     |Preterm           |            1|     45| 16763|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Full or late term |            0|   1112|  2115|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Full or late term |            1|    187|  2115|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Early term        |            0|    429|  2115|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Early term        |            1|     61|  2115|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    275|  2115|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA    |Preterm           |            1|     51|  2115|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Full or late term |            0|    137|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Full or late term |            1|     77|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Early term        |            0|     55|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Early term        |            1|     28|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Preterm           |            0|     33|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA       |Preterm           |            1|     15|   345|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|     17|   170|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|     85|   170|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Early term        |            0|      5|   170|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Early term        |            1|     41|   170|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|      4|   170|
|6-24 months                |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|     18|   170|
|6-24 months                |COHORTS        |INDIA       |Full or late term |            0|    301|   984|
|6-24 months                |COHORTS        |INDIA       |Full or late term |            1|    110|   984|
|6-24 months                |COHORTS        |INDIA       |Early term        |            0|    192|   984|
|6-24 months                |COHORTS        |INDIA       |Early term        |            1|     61|   984|
|6-24 months                |COHORTS        |INDIA       |Preterm           |            0|    235|   984|
|6-24 months                |COHORTS        |INDIA       |Preterm           |            1|     85|   984|
|6-24 months                |COHORTS        |GUATEMALA   |Full or late term |            0|     54|   413|
|6-24 months                |COHORTS        |GUATEMALA   |Full or late term |            1|    172|   413|
|6-24 months                |COHORTS        |GUATEMALA   |Early term        |            0|     25|   413|
|6-24 months                |COHORTS        |GUATEMALA   |Early term        |            1|    100|   413|
|6-24 months                |COHORTS        |GUATEMALA   |Preterm           |            0|     17|   413|
|6-24 months                |COHORTS        |GUATEMALA   |Preterm           |            1|     45|   413|
|6-24 months                |COHORTS        |PHILIPPINES |Full or late term |            0|    307|  2104|
|6-24 months                |COHORTS        |PHILIPPINES |Full or late term |            1|    529|  2104|
|6-24 months                |COHORTS        |PHILIPPINES |Early term        |            0|    299|  2104|
|6-24 months                |COHORTS        |PHILIPPINES |Early term        |            1|    524|  2104|
|6-24 months                |COHORTS        |PHILIPPINES |Preterm           |            0|    137|  2104|
|6-24 months                |COHORTS        |PHILIPPINES |Preterm           |            1|    308|  2104|
|6-24 months                |JiVitA-3       |BANGLADESH  |Full or late term |            0|   4255| 10132|
|6-24 months                |JiVitA-3       |BANGLADESH  |Full or late term |            1|   1131| 10132|
|6-24 months                |JiVitA-3       |BANGLADESH  |Early term        |            0|   2047| 10132|
|6-24 months                |JiVitA-3       |BANGLADESH  |Early term        |            1|    581| 10132|
|6-24 months                |JiVitA-3       |BANGLADESH  |Preterm           |            0|   1645| 10132|
|6-24 months                |JiVitA-3       |BANGLADESH  |Preterm           |            1|    473| 10132|
|6-24 months                |Keneba         |GAMBIA      |Full or late term |            0|    360|  1181|
|6-24 months                |Keneba         |GAMBIA      |Full or late term |            1|    237|  1181|
|6-24 months                |Keneba         |GAMBIA      |Early term        |            0|    292|  1181|
|6-24 months                |Keneba         |GAMBIA      |Early term        |            1|    144|  1181|
|6-24 months                |Keneba         |GAMBIA      |Preterm           |            0|     89|  1181|
|6-24 months                |Keneba         |GAMBIA      |Preterm           |            1|     59|  1181|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Full or late term |            0|     97|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Full or late term |            1|     47|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Early term        |            0|    111|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Early term        |            1|     31|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    165|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH  |Preterm           |            1|     55|   506|
|6-24 months                |PROBIT         |BELARUS     |Full or late term |            0|   7426| 15467|
|6-24 months                |PROBIT         |BELARUS     |Full or late term |            1|    516| 15467|
|6-24 months                |PROBIT         |BELARUS     |Early term        |            0|   6542| 15467|
|6-24 months                |PROBIT         |BELARUS     |Early term        |            1|    449| 15467|
|6-24 months                |PROBIT         |BELARUS     |Preterm           |            0|    505| 15467|
|6-24 months                |PROBIT         |BELARUS     |Preterm           |            1|     29| 15467|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Full or late term |            0|    734|  1511|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Full or late term |            1|    196|  1511|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Early term        |            0|    260|  1511|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Early term        |            1|     95|  1511|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    172|  1511|
|6-24 months                |TanzaniaChild2 |TANZANIA    |Preterm           |            1|     54|  1511|
|6-24 months                |Vellore Crypto |INDIA       |Full or late term |            0|     76|   225|
|6-24 months                |Vellore Crypto |INDIA       |Full or late term |            1|     61|   225|
|6-24 months                |Vellore Crypto |INDIA       |Early term        |            0|     42|   225|
|6-24 months                |Vellore Crypto |INDIA       |Early term        |            1|     13|   225|
|6-24 months                |Vellore Crypto |INDIA       |Preterm           |            0|     24|   225|
|6-24 months                |Vellore Crypto |INDIA       |Preterm           |            1|      9|   225|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA





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


