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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |fage    | wast_rec90d| n_cell|    n|
|:-----------|:-------------|:------------|:-------|-----------:|------:|----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |           0|     53|  373|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |           1|     49|  373|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |           0|     49|  373|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |           1|     38|  373|
|0-24 months |COHORTS       |GUATEMALA    |<32     |           0|    106|  373|
|0-24 months |COHORTS       |GUATEMALA    |<32     |           1|     78|  373|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |           0|     87| 1608|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |           1|    133| 1608|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |           0|    121| 1608|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |           1|    177| 1608|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |           0|    428| 1608|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |           1|    662| 1608|
|0-24 months |MAL-ED        |INDIA        |>=38    |           0|     13|  127|
|0-24 months |MAL-ED        |INDIA        |>=38    |           1|     20|  127|
|0-24 months |MAL-ED        |INDIA        |[32-38) |           0|     22|  127|
|0-24 months |MAL-ED        |INDIA        |[32-38) |           1|     32|  127|
|0-24 months |MAL-ED        |INDIA        |<32     |           0|     16|  127|
|0-24 months |MAL-ED        |INDIA        |<32     |           1|     24|  127|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |           0|     14|   57|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |           1|     25|   57|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |           0|      5|   57|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |           1|      5|   57|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |           0|      2|   57|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |           1|      6|   57|
|0-24 months |MAL-ED        |PERU         |>=38    |           0|      1|   11|
|0-24 months |MAL-ED        |PERU         |>=38    |           1|      4|   11|
|0-24 months |MAL-ED        |PERU         |[32-38) |           0|      0|   11|
|0-24 months |MAL-ED        |PERU         |[32-38) |           1|      3|   11|
|0-24 months |MAL-ED        |PERU         |<32     |           0|      0|   11|
|0-24 months |MAL-ED        |PERU         |<32     |           1|      3|   11|
|0-24 months |MAL-ED        |NEPAL        |>=38    |           0|      5|   44|
|0-24 months |MAL-ED        |NEPAL        |>=38    |           1|     12|   44|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |           0|      1|   44|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |           1|     18|   44|
|0-24 months |MAL-ED        |NEPAL        |<32     |           0|      3|   44|
|0-24 months |MAL-ED        |NEPAL        |<32     |           1|      5|   44|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |           0|      0|   10|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |           1|      1|   10|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |           0|      2|   10|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |           1|      1|   10|
|0-24 months |MAL-ED        |BRAZIL       |<32     |           0|      0|   10|
|0-24 months |MAL-ED        |BRAZIL       |<32     |           1|      6|   10|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |           0|      3|   24|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |           1|      6|   24|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |           0|      1|   24|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |           1|     11|   24|
|0-24 months |MAL-ED        |TANZANIA     |<32     |           0|      2|   24|
|0-24 months |MAL-ED        |TANZANIA     |<32     |           1|      1|   24|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           0|      1|   31|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           1|     12|   31|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           0|      4|   31|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      7|   31|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |           0|      1|   31|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |           1|      6|   31|
|0-24 months |PROBIT        |BELARUS      |>=38    |           0|     24| 4254|
|0-24 months |PROBIT        |BELARUS      |>=38    |           1|    173| 4254|
|0-24 months |PROBIT        |BELARUS      |[32-38) |           0|     77| 4254|
|0-24 months |PROBIT        |BELARUS      |[32-38) |           1|    581| 4254|
|0-24 months |PROBIT        |BELARUS      |<32     |           0|    405| 4254|
|0-24 months |PROBIT        |BELARUS      |<32     |           1|   2994| 4254|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |           0|     14|  814|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |           1|     10|  814|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |           0|     62|  814|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |           1|     53|  814|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |           0|    428|  814|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |           1|    247|  814|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |           0|     39|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |           1|      1|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           0|     47|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           1|      4|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |           0|    135|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |           1|      8|  234|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |           0|     15|  212|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |           1|     45|  212|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |           0|     11|  212|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |           1|     37|  212|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |           0|     29|  212|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |           1|     75|  212|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |           0|     29|  721|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |           1|     72|  721|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |           0|     48|  721|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |           1|     91|  721|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |           0|    113|  721|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |           1|    368|  721|
|0-6 months  |MAL-ED        |INDIA        |>=38    |           0|      4|   55|
|0-6 months  |MAL-ED        |INDIA        |>=38    |           1|     13|   55|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |           0|      5|   55|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |           1|     16|   55|
|0-6 months  |MAL-ED        |INDIA        |<32     |           0|      6|   55|
|0-6 months  |MAL-ED        |INDIA        |<32     |           1|     11|   55|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |           0|      4|   26|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |           1|     12|   26|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |           0|      2|   26|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |           1|      3|   26|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |           0|      1|   26|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |           1|      4|   26|
|0-6 months  |MAL-ED        |PERU         |>=38    |           0|      0|    5|
|0-6 months  |MAL-ED        |PERU         |>=38    |           1|      1|    5|
|0-6 months  |MAL-ED        |PERU         |[32-38) |           0|      0|    5|
|0-6 months  |MAL-ED        |PERU         |[32-38) |           1|      1|    5|
|0-6 months  |MAL-ED        |PERU         |<32     |           0|      0|    5|
|0-6 months  |MAL-ED        |PERU         |<32     |           1|      3|    5|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |           0|      2|   22|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |           1|      8|   22|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |           0|      0|   22|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |           1|      9|   22|
|0-6 months  |MAL-ED        |NEPAL        |<32     |           0|      2|   22|
|0-6 months  |MAL-ED        |NEPAL        |<32     |           1|      1|   22|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |           0|      0|    6|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |           1|      1|    6|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |           0|      1|    6|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |           1|      0|    6|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |           0|      0|    6|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |           1|      4|    6|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |           0|      1|    5|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |           1|      0|    5|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |           0|      0|    5|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |           1|      4|    5|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |           0|      0|    5|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |           1|      0|    5|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |           0|      0|   12|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |           1|      6|   12|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |           0|      1|   12|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      1|   12|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |           0|      1|   12|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |           1|      3|   12|
|0-6 months  |PROBIT        |BELARUS      |>=38    |           0|     21| 4114|
|0-6 months  |PROBIT        |BELARUS      |>=38    |           1|    170| 4114|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |           0|     60| 4114|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |           1|    572| 4114|
|0-6 months  |PROBIT        |BELARUS      |<32     |           0|    322| 4114|
|0-6 months  |PROBIT        |BELARUS      |<32     |           1|   2969| 4114|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |           0|      4|  341|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |           1|      6|  341|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |           0|     15|  341|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |           1|     32|  341|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |           0|    147|  341|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |           1|    137|  341|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |           0|     11|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |           0|     18|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |           0|     49|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |           1|      0|   78|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |           0|     38|  161|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |           1|      4|  161|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |           0|     38|  161|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |           1|      1|  161|
|6-24 months |COHORTS       |GUATEMALA    |<32     |           0|     77|  161|
|6-24 months |COHORTS       |GUATEMALA    |<32     |           1|      3|  161|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |           0|     58|  887|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |           1|     61|  887|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |           0|     73|  887|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |           1|     86|  887|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |           0|    315|  887|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |           1|    294|  887|
|6-24 months |MAL-ED        |INDIA        |>=38    |           0|      9|   72|
|6-24 months |MAL-ED        |INDIA        |>=38    |           1|      7|   72|
|6-24 months |MAL-ED        |INDIA        |[32-38) |           0|     17|   72|
|6-24 months |MAL-ED        |INDIA        |[32-38) |           1|     16|   72|
|6-24 months |MAL-ED        |INDIA        |<32     |           0|     10|   72|
|6-24 months |MAL-ED        |INDIA        |<32     |           1|     13|   72|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |           0|     10|   31|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |           1|     13|   31|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |           0|      3|   31|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |           1|      2|   31|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |           0|      1|   31|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |           1|      2|   31|
|6-24 months |MAL-ED        |PERU         |>=38    |           0|      1|    6|
|6-24 months |MAL-ED        |PERU         |>=38    |           1|      3|    6|
|6-24 months |MAL-ED        |PERU         |[32-38) |           0|      0|    6|
|6-24 months |MAL-ED        |PERU         |[32-38) |           1|      2|    6|
|6-24 months |MAL-ED        |PERU         |<32     |           0|      0|    6|
|6-24 months |MAL-ED        |PERU         |<32     |           1|      0|    6|
|6-24 months |MAL-ED        |NEPAL        |>=38    |           0|      3|   22|
|6-24 months |MAL-ED        |NEPAL        |>=38    |           1|      4|   22|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |           0|      1|   22|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |           1|      9|   22|
|6-24 months |MAL-ED        |NEPAL        |<32     |           0|      1|   22|
|6-24 months |MAL-ED        |NEPAL        |<32     |           1|      4|   22|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |           0|      0|    4|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |           1|      0|    4|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |           0|      1|    4|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |           1|      1|    4|
|6-24 months |MAL-ED        |BRAZIL       |<32     |           0|      0|    4|
|6-24 months |MAL-ED        |BRAZIL       |<32     |           1|      2|    4|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |           0|      2|   19|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |           1|      6|   19|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |           0|      1|   19|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |           1|      7|   19|
|6-24 months |MAL-ED        |TANZANIA     |<32     |           0|      2|   19|
|6-24 months |MAL-ED        |TANZANIA     |<32     |           1|      1|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           0|      1|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           1|      6|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           0|      3|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      6|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |           0|      0|   19|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |           1|      3|   19|
|6-24 months |PROBIT        |BELARUS      |>=38    |           0|      3|  140|
|6-24 months |PROBIT        |BELARUS      |>=38    |           1|      3|  140|
|6-24 months |PROBIT        |BELARUS      |[32-38) |           0|     17|  140|
|6-24 months |PROBIT        |BELARUS      |[32-38) |           1|      9|  140|
|6-24 months |PROBIT        |BELARUS      |<32     |           0|     83|  140|
|6-24 months |PROBIT        |BELARUS      |<32     |           1|     25|  140|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |           0|     10|  473|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |           1|      4|  473|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |           0|     47|  473|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |           1|     21|  473|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |           0|    281|  473|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |           1|    110|  473|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |           0|     28|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |           1|      1|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           0|     29|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           1|      4|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |           0|     86|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |           1|      8|  156|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


