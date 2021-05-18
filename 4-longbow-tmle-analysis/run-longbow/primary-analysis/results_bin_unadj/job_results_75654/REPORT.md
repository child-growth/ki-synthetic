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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid        |country     |gagebrth          | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:-----------|:-----------------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|    108|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|     87|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     53|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     49|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|     27|   344|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     20|   344|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Full or late term |           0|    420|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Full or late term |           1|    103|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Early term        |           0|    266|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Early term        |           1|     72|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Preterm           |           0|    330|  1264|
|0-24 months (no birth wast) |COHORTS        |INDIA       |Preterm           |           1|     73|  1264|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Full or late term |           0|    301|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Full or late term |           1|     35|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Early term        |           0|    153|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Early term        |           1|     19|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Preterm           |           0|     82|   602|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |Preterm           |           1|     12|   602|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Full or late term |           0|    818|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Full or late term |           1|    362|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Early term        |           0|    826|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Early term        |           1|    346|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Preterm           |           0|    438|  2992|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |Preterm           |           1|    202|  2992|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Full or late term |           0|  10972| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Full or late term |           1|   2216| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Early term        |           0|   5490| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Early term        |           1|   1134| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Preterm           |           0|   4831| 25613|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |Preterm           |           1|    970| 25613|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Full or late term |           0|    538|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Full or late term |           1|    281|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Early term        |           0|    433|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Early term        |           1|    180|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Preterm           |           0|    137|  1651|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |Preterm           |           1|     82|  1651|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Full or late term |           0|    188|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Full or late term |           1|     30|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Early term        |           0|    189|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Early term        |           1|     35|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Preterm           |           0|    269|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |Preterm           |           1|     43|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Full or late term |           0|   8062| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Full or late term |           1|    574| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Early term        |           0|   7117| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Early term        |           1|    536| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Preterm           |           0|    552| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |Preterm           |           1|     38| 16879|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Full or late term |           0|   1103|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    276|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Early term        |           0|    415|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Early term        |           1|    106|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Preterm           |           0|    281|  2254|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     73|  2254|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Full or late term |           0|    113|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Full or late term |           1|    131|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Early term        |           0|     55|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Early term        |           1|     39|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Preterm           |           0|     23|   393|
|0-24 months (no birth wast) |Vellore Crypto |INDIA       |Preterm           |           1|     32|   393|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|    130|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|     55|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     64|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     35|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|     32|   329|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     13|   329|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Full or late term |           0|    433|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Full or late term |           1|     41|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Early term        |           0|    286|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Early term        |           1|     32|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Preterm           |           0|    336|  1166|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |Preterm           |           1|     38|  1166|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Full or late term |           0|    275|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Full or late term |           1|      4|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Early term        |           0|    137|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Early term        |           1|      3|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Preterm           |           0|     69|   489|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |Preterm           |           1|      1|   489|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Full or late term |           0|   1056|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Full or late term |           1|    117|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Early term        |           0|   1067|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Early term        |           1|     96|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Preterm           |           0|    568|  2971|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |Preterm           |           1|     67|  2971|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Full or late term |           0|  12153| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Full or late term |           1|    890| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Early term        |           0|   6075| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Early term        |           1|    479| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Preterm           |           0|   5306| 25333|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |Preterm           |           1|    430| 25333|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Full or late term |           0|    618|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Full or late term |           1|     70|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Early term        |           0|    494|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Early term        |           1|     42|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Preterm           |           0|    166|  1413|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |Preterm           |           1|     23|  1413|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Full or late term |           0|    211|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Full or late term |           1|      5|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Early term        |           0|    214|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Early term        |           1|      8|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Preterm           |           0|    304|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |Preterm           |           1|      7|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Full or late term |           0|   8017| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Full or late term |           1|    524| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Early term        |           0|   7108| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Early term        |           1|    463| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Preterm           |           0|    546| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |Preterm           |           1|     35| 16693|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Full or late term |           0|   1263|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    114|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Early term        |           0|    471|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Early term        |           1|     47|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Preterm           |           0|    320|  2247|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     32|  2247|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Full or late term |           0|    159|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Full or late term |           1|     77|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Early term        |           0|     60|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Early term        |           1|     28|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Preterm           |           0|     32|   374|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA       |Preterm           |           1|     18|   374|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Full or late term |           0|    142|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Full or late term |           1|     55|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Early term        |           0|     75|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Early term        |           1|     27|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Preterm           |           0|     38|   348|
|6-24 months                 |CMC-V-BCS-2002 |INDIA       |Preterm           |           1|     11|   348|
|6-24 months                 |COHORTS        |INDIA       |Full or late term |           0|    435|  1218|
|6-24 months                 |COHORTS        |INDIA       |Full or late term |           1|     69|  1218|
|6-24 months                 |COHORTS        |INDIA       |Early term        |           0|    287|  1218|
|6-24 months                 |COHORTS        |INDIA       |Early term        |           1|     44|  1218|
|6-24 months                 |COHORTS        |INDIA       |Preterm           |           0|    343|  1218|
|6-24 months                 |COHORTS        |INDIA       |Preterm           |           1|     40|  1218|
|6-24 months                 |COHORTS        |GUATEMALA   |Full or late term |           0|    273|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Full or late term |           1|     33|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Early term        |           0|    139|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Early term        |           1|     19|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Preterm           |           0|     75|   550|
|6-24 months                 |COHORTS        |GUATEMALA   |Preterm           |           1|     11|   550|
|6-24 months                 |COHORTS        |PHILIPPINES |Full or late term |           0|    796|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Full or late term |           1|    295|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Early term        |           0|    809|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Early term        |           1|    289|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Preterm           |           0|    433|  2784|
|6-24 months                 |COHORTS        |PHILIPPINES |Preterm           |           1|    162|  2784|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Full or late term |           0|   7431| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Full or late term |           1|   1437| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Early term        |           0|   3595| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Early term        |           1|    708| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Preterm           |           0|   2948| 16708|
|6-24 months                 |JiVitA-3       |BANGLADESH  |Preterm           |           1|    589| 16708|
|6-24 months                 |Keneba         |GAMBIA      |Full or late term |           0|    536|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Full or late term |           1|    250|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Early term        |           0|    429|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Early term        |           1|    158|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Preterm           |           0|    134|  1577|
|6-24 months                 |Keneba         |GAMBIA      |Preterm           |           1|     70|  1577|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Full or late term |           0|    185|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Full or late term |           1|     28|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Early term        |           0|    184|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Early term        |           1|     29|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Preterm           |           0|    265|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH  |Preterm           |           1|     39|   730|
|6-24 months                 |PROBIT         |BELARUS     |Full or late term |           0|   8424| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Full or late term |           1|     59| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Early term        |           0|   7457| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Early term        |           1|     77| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Preterm           |           0|    578| 16598|
|6-24 months                 |PROBIT         |BELARUS     |Preterm           |           1|      3| 16598|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Full or late term |           0|    976|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Full or late term |           1|    193|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Early term        |           0|    368|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Early term        |           1|     73|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Preterm           |           0|    253|  1912|
|6-24 months                 |TanzaniaChild2 |TANZANIA    |Preterm           |           1|     49|  1912|
|6-24 months                 |Vellore Crypto |INDIA       |Full or late term |           0|    165|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Full or late term |           1|     79|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Early term        |           0|     75|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Early term        |           1|     20|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Preterm           |           0|     33|   394|
|6-24 months                 |Vellore Crypto |INDIA       |Preterm           |           1|     22|   394|


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

* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
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


