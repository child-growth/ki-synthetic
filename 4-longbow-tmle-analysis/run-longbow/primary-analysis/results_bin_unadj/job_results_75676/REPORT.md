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

**Outcome Variable:** ever_swasted

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

|agecat                      |studyid        |country     |gagebrth          | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:-----------|:-----------------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|    161|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|     34|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Early term        |            0|     86|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Early term        |            1|     16|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|     42|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|      5|   344|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Full or late term |            0|    490|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Full or late term |            1|     33|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Early term        |            0|    319|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Early term        |            1|     19|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Preterm           |            0|    383|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Preterm           |            1|     20|  1264|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Full or late term |            0|    334|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Full or late term |            1|      2|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Early term        |            0|    164|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Early term        |            1|      8|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Preterm           |            0|     93|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Preterm           |            1|      1|   602|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Full or late term |            0|   1080|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Full or late term |            1|    100|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Early term        |            0|   1085|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Early term        |            1|     87|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Preterm           |            0|    580|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Preterm           |            1|     60|  2992|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Full or late term |            0|  12743| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Full or late term |            1|    445| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Early term        |            0|   6383| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Early term        |            1|    241| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Preterm           |            0|   5569| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Preterm           |            1|    232| 25613|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Full or late term |            0|    705|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Full or late term |            1|    114|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Early term        |            0|    549|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Early term        |            1|     64|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Preterm           |            0|    186|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Preterm           |            1|     33|  1651|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Full or late term |            0|    211|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Full or late term |            1|      7|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Early term        |            0|    218|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Early term        |            1|      6|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    305|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Preterm           |            1|      7|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Full or late term |            0|   8523| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Full or late term |            1|    113| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Early term        |            0|   7567| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Early term        |            1|     86| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Preterm           |            0|    585| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Preterm           |            1|      5| 16879|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Full or late term |            0|   1310|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Full or late term |            1|     69|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Early term        |            0|    497|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Early term        |            1|     24|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    331|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Preterm           |            1|     23|  2254|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Full or late term |            0|    201|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Full or late term |            1|     43|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Early term        |            0|     78|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Early term        |            1|     16|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Preterm           |            0|     41|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Preterm           |            1|     14|   393|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|    170|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|     15|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Early term        |            0|     87|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Early term        |            1|     12|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|     42|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|      3|   329|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Full or late term |            0|    462|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Full or late term |            1|     12|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Early term        |            0|    312|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Early term        |            1|      6|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Preterm           |            0|    366|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Preterm           |            1|      8|  1166|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Full or late term |            0|    279|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Full or late term |            1|      0|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Early term        |            0|    139|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Early term        |            1|      1|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Preterm           |            0|     70|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Preterm           |            1|      0|   489|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Full or late term |            0|   1148|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Full or late term |            1|     25|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Early term        |            0|   1139|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Early term        |            1|     24|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Preterm           |            0|    620|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Preterm           |            1|     15|  2971|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Full or late term |            0|  12857| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Full or late term |            1|    186| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Early term        |            0|   6437| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Early term        |            1|    117| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Preterm           |            0|   5621| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Preterm           |            1|    115| 25333|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Full or late term |            0|    662|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Full or late term |            1|     26|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Early term        |            0|    522|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Early term        |            1|     14|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Preterm           |            0|    178|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Preterm           |            1|     11|  1413|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Full or late term |            0|    216|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Full or late term |            1|      0|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Early term        |            0|    221|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Early term        |            1|      1|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    311|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Preterm           |            1|      0|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Full or late term |            0|   8434| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Full or late term |            1|    107| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Early term        |            0|   7491| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Early term        |            1|     80| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Preterm           |            0|    576| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Preterm           |            1|      5| 16693|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Full or late term |            0|   1357|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Full or late term |            1|     20|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Early term        |            0|    511|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Early term        |            1|      7|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    340|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Preterm           |            1|     12|  2247|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Full or late term |            0|    208|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Full or late term |            1|     28|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Early term        |            0|     73|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Early term        |            1|     15|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Preterm           |            0|     40|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Preterm           |            1|     10|   374|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Full or late term |            0|    176|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Full or late term |            1|     21|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Early term        |            0|     96|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Early term        |            1|      6|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Preterm           |            0|     47|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Preterm           |            1|      2|   348|
|6-24 months                 |COHORTS        |INDIA       |Full or late term |            0|    481|  1218|
|6-24 months                 |COHORTS        |INDIA       |Full or late term |            1|     23|  1218|
|6-24 months                 |COHORTS        |INDIA       |Early term        |            0|    314|  1218|
|6-24 months                 |COHORTS        |INDIA       |Early term        |            1|     17|  1218|
|6-24 months                 |COHORTS        |INDIA       |Preterm           |            0|    370|  1218|
|6-24 months                 |COHORTS        |INDIA       |Preterm           |            1|     13|  1218|
|6-24 months                 |COHORTS        |GUATEMALA   |Full or late term |            0|    302|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Full or late term |            1|      4|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Early term        |            0|    151|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Early term        |            1|      7|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Preterm           |            0|     85|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Preterm           |            1|      1|   550|
|6-24 months                 |COHORTS        |PHILIPPINES |Full or late term |            0|   1014|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Full or late term |            1|     77|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Early term        |            0|   1034|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Early term        |            1|     64|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Preterm           |            0|    548|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Preterm           |            1|     47|  2784|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Full or late term |            0|   8591| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Full or late term |            1|    277| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Early term        |            0|   4169| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Early term        |            1|    134| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Preterm           |            0|   3409| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Preterm           |            1|    128| 16708|
|6-24 months                 |Keneba         |GAMBIA      |Full or late term |            0|    691|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Full or late term |            1|     95|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Early term        |            0|    530|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Early term        |            1|     57|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Preterm           |            0|    181|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Preterm           |            1|     23|  1577|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Full or late term |            0|    205|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Full or late term |            1|      8|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Early term        |            0|    208|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Early term        |            1|      5|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Preterm           |            0|    297|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Preterm           |            1|      7|   730|
|6-24 months                 |PROBIT         |BELARUS     |Full or late term |            0|   8477| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Full or late term |            1|      6| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Early term        |            0|   7528| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Early term        |            1|      6| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Preterm           |            0|    581| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Preterm           |            1|      0| 16598|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Full or late term |            0|   1120|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Full or late term |            1|     49|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Early term        |            0|    422|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Early term        |            1|     19|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Preterm           |            0|    289|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Preterm           |            1|     13|  1912|
|6-24 months                 |Vellore Crypto |INDIA       |Full or late term |            0|    228|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Full or late term |            1|     16|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Early term        |            0|     90|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Early term        |            1|      5|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Preterm           |            0|     50|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Preterm           |            1|      5|   394|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





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


