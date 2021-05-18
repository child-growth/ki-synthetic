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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |birthwt                    | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------------------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         0|    305|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         1|     17|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         0|     38|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         1|      5|   365|
|0-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |         0|      8|    12|
|0-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH   |Low birthweight            |         0|      4|    12|
|0-24 months |CMIN           |BANGLADESH   |Low birthweight            |         1|      0|    12|
|0-24 months |COHORTS        |INDIA        |Normal or high birthweight |         0|   3998|  5268|
|0-24 months |COHORTS        |INDIA        |Normal or high birthweight |         1|    281|  5268|
|0-24 months |COHORTS        |INDIA        |Low birthweight            |         0|    763|  5268|
|0-24 months |COHORTS        |INDIA        |Low birthweight            |         1|    226|  5268|
|0-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |         0|    706|   795|
|0-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |         1|     17|   795|
|0-24 months |COHORTS        |GUATEMALA    |Low birthweight            |         0|     69|   795|
|0-24 months |COHORTS        |GUATEMALA    |Low birthweight            |         1|      3|   795|
|0-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |         0|   2409|  2768|
|0-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |         1|    106|  2768|
|0-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |         0|    219|  2768|
|0-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |         1|     34|  2768|
|0-24 months |CONTENT        |PERU         |Normal or high birthweight |         0|      2|     2|
|0-24 months |CONTENT        |PERU         |Normal or high birthweight |         1|      0|     2|
|0-24 months |CONTENT        |PERU         |Low birthweight            |         0|      0|     2|
|0-24 months |CONTENT        |PERU         |Low birthweight            |         1|      0|     2|
|0-24 months |EE             |PAKISTAN     |Normal or high birthweight |         0|    225|   376|
|0-24 months |EE             |PAKISTAN     |Normal or high birthweight |         1|     19|   376|
|0-24 months |EE             |PAKISTAN     |Low birthweight            |         0|    118|   376|
|0-24 months |EE             |PAKISTAN     |Low birthweight            |         1|     14|   376|
|0-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |         0|    366|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |         1|     39|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |         0|    150|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |         1|     41|   596|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         0|   8052| 13429|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         1|    237| 13429|
|0-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |         0|   4630| 13429|
|0-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |         1|    510| 13429|
|0-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |         0|   3108|  4435|
|0-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |         1|    171|  4435|
|0-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |         0|    976|  4435|
|0-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |         1|    180|  4435|
|0-24 months |Keneba         |GAMBIA       |Normal or high birthweight |         0|   1219|  1496|
|0-24 months |Keneba         |GAMBIA       |Normal or high birthweight |         1|     60|  1496|
|0-24 months |Keneba         |GAMBIA       |Low birthweight            |         0|    197|  1496|
|0-24 months |Keneba         |GAMBIA       |Low birthweight            |         1|     20|  1496|
|0-24 months |MAL-ED         |INDIA        |Normal or high birthweight |         0|    181|   231|
|0-24 months |MAL-ED         |INDIA        |Normal or high birthweight |         1|     14|   231|
|0-24 months |MAL-ED         |INDIA        |Low birthweight            |         0|     31|   231|
|0-24 months |MAL-ED         |INDIA        |Low birthweight            |         1|      5|   231|
|0-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |         0|    186|   245|
|0-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |         1|      8|   245|
|0-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |         0|     47|   245|
|0-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |         1|      4|   245|
|0-24 months |MAL-ED         |PERU         |Normal or high birthweight |         0|    263|   281|
|0-24 months |MAL-ED         |PERU         |Normal or high birthweight |         1|      1|   281|
|0-24 months |MAL-ED         |PERU         |Low birthweight            |         0|     17|   281|
|0-24 months |MAL-ED         |PERU         |Low birthweight            |         1|      0|   281|
|0-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |         0|    209|   231|
|0-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |         1|      3|   231|
|0-24 months |MAL-ED         |NEPAL        |Low birthweight            |         0|     19|   231|
|0-24 months |MAL-ED         |NEPAL        |Low birthweight            |         1|      0|   231|
|0-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |         0|    206|   218|
|0-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL       |Low birthweight            |         0|     10|   218|
|0-24 months |MAL-ED         |BRAZIL       |Low birthweight            |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |         0|    181|   190|
|0-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |         1|      0|   190|
|0-24 months |MAL-ED         |TANZANIA     |Low birthweight            |         0|      9|   190|
|0-24 months |MAL-ED         |TANZANIA     |Low birthweight            |         1|      0|   190|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         0|    256|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         1|      2|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |         0|     16|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |         1|      0|   274|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         0|    334|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         1|     17|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |         0|    134|   515|
|0-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |         1|     30|   515|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         0|    548|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         1|     11|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |         0|    156|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |         1|     15|   730|
|0-24 months |PROBIT         |BELARUS      |Normal or high birthweight |         0|  16449| 16583|
|0-24 months |PROBIT         |BELARUS      |Normal or high birthweight |         1|    134| 16583|
|0-24 months |PROBIT         |BELARUS      |Low birthweight            |         0|      0| 16583|
|0-24 months |PROBIT         |BELARUS      |Low birthweight            |         1|      0| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |         0|    482|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |         1|      6|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |         0|    144|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |         1|      9|   641|
|0-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |         0|     28|    35|
|0-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |         1|      2|    35|
|0-24 months |ResPak         |PAKISTAN     |Low birthweight            |         0|      4|    35|
|0-24 months |ResPak         |PAKISTAN     |Low birthweight            |         1|      1|    35|
|0-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |         0|    986|  1356|
|0-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |         1|     48|  1356|
|0-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |         0|    258|  1356|
|0-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |         1|     64|  1356|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         0|   2016|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         1|     52|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |         0|     70|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |         1|      5|  2143|
|0-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |         0|    303|   404|
|0-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |         1|     32|   404|
|0-24 months |Vellore Crypto |INDIA        |Low birthweight            |         0|     53|   404|
|0-24 months |Vellore Crypto |INDIA        |Low birthweight            |         1|     16|   404|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         0|   8208|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         1|    110|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         0|   1125|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         1|     58|  9501|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         0|    270|   351|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         1|     39|   351|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         0|     32|   351|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         1|     10|   351|
|0-6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |         0|      8|    12|
|0-6 months  |CMIN           |BANGLADESH   |Normal or high birthweight |         1|      0|    12|
|0-6 months  |CMIN           |BANGLADESH   |Low birthweight            |         0|      4|    12|
|0-6 months  |CMIN           |BANGLADESH   |Low birthweight            |         1|      0|    12|
|0-6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |         0|    754|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Normal or high birthweight |         1|     37|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |         0|     47|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Low birthweight            |         1|     15|   853|
|0-6 months  |CONTENT        |PERU         |Normal or high birthweight |         0|      2|     2|
|0-6 months  |CONTENT        |PERU         |Normal or high birthweight |         1|      0|     2|
|0-6 months  |CONTENT        |PERU         |Low birthweight            |         0|      0|     2|
|0-6 months  |CONTENT        |PERU         |Low birthweight            |         1|      0|     2|
|0-6 months  |EE             |PAKISTAN     |Normal or high birthweight |         0|    227|   370|
|0-6 months  |EE             |PAKISTAN     |Normal or high birthweight |         1|     14|   370|
|0-6 months  |EE             |PAKISTAN     |Low birthweight            |         0|    118|   370|
|0-6 months  |EE             |PAKISTAN     |Low birthweight            |         1|     11|   370|
|0-6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |         0|    355|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Normal or high birthweight |         1|     29|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |         0|    149|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Low birthweight            |         1|     33|   566|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         0|     29|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         1|      1|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |         0|      7|    38|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low birthweight            |         1|      1|    38|
|0-6 months  |Keneba         |GAMBIA       |Normal or high birthweight |         0|   1177|  1406|
|0-6 months  |Keneba         |GAMBIA       |Normal or high birthweight |         1|     25|  1406|
|0-6 months  |Keneba         |GAMBIA       |Low birthweight            |         0|    185|  1406|
|0-6 months  |Keneba         |GAMBIA       |Low birthweight            |         1|     19|  1406|
|0-6 months  |MAL-ED         |INDIA        |Normal or high birthweight |         0|    183|   230|
|0-6 months  |MAL-ED         |INDIA        |Normal or high birthweight |         1|     12|   230|
|0-6 months  |MAL-ED         |INDIA        |Low birthweight            |         0|     30|   230|
|0-6 months  |MAL-ED         |INDIA        |Low birthweight            |         1|      5|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |         0|    188|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal or high birthweight |         1|      6|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |         0|     50|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |Low birthweight            |         1|      1|   245|
|0-6 months  |MAL-ED         |PERU         |Normal or high birthweight |         0|    264|   281|
|0-6 months  |MAL-ED         |PERU         |Normal or high birthweight |         1|      0|   281|
|0-6 months  |MAL-ED         |PERU         |Low birthweight            |         0|     17|   281|
|0-6 months  |MAL-ED         |PERU         |Low birthweight            |         1|      0|   281|
|0-6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |         0|    206|   231|
|0-6 months  |MAL-ED         |NEPAL        |Normal or high birthweight |         1|      6|   231|
|0-6 months  |MAL-ED         |NEPAL        |Low birthweight            |         0|     18|   231|
|0-6 months  |MAL-ED         |NEPAL        |Low birthweight            |         1|      1|   231|
|0-6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |         0|    207|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Normal or high birthweight |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Low birthweight            |         0|     10|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Low birthweight            |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |         0|    181|   190|
|0-6 months  |MAL-ED         |TANZANIA     |Normal or high birthweight |         1|      0|   190|
|0-6 months  |MAL-ED         |TANZANIA     |Low birthweight            |         0|      9|   190|
|0-6 months  |MAL-ED         |TANZANIA     |Low birthweight            |         1|      0|   190|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         0|    256|   273|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         1|      2|   273|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |         0|     15|   273|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low birthweight            |         1|      0|   273|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         0|    114|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         1|      4|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |         0|     41|   166|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low birthweight            |         1|      7|   166|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         0|    200|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         1|      3|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |         0|     45|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low birthweight            |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS      |Normal or high birthweight |         0|  12437| 13534|
|0-6 months  |PROBIT         |BELARUS      |Normal or high birthweight |         1|   1097| 13534|
|0-6 months  |PROBIT         |BELARUS      |Low birthweight            |         0|      0| 13534|
|0-6 months  |PROBIT         |BELARUS      |Low birthweight            |         1|      0| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |         0|    479|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal or high birthweight |         1|      7|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |         0|    145|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Low birthweight            |         1|      7|   638|
|0-6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |         0|     27|    34|
|0-6 months  |ResPak         |PAKISTAN     |Normal or high birthweight |         1|      2|    34|
|0-6 months  |ResPak         |PAKISTAN     |Low birthweight            |         0|      3|    34|
|0-6 months  |ResPak         |PAKISTAN     |Low birthweight            |         1|      2|    34|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         0|   1924|  2040|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         1|     44|  2040|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |         0|     65|  2040|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low birthweight            |         1|      7|  2040|
|0-6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |         0|    284|   397|
|0-6 months  |Vellore Crypto |INDIA        |Normal or high birthweight |         1|     46|   397|
|0-6 months  |Vellore Crypto |INDIA        |Low birthweight            |         0|     50|   397|
|0-6 months  |Vellore Crypto |INDIA        |Low birthweight            |         1|     17|   397|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         0|    557|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         1|     10|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         0|     61|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         1|      4|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         0|    305|   365|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Normal or high birthweight |         1|     17|   365|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         0|     38|   365|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low birthweight            |         1|      5|   365|
|6-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |         0|      8|    12|
|6-24 months |CMIN           |BANGLADESH   |Normal or high birthweight |         1|      0|    12|
|6-24 months |CMIN           |BANGLADESH   |Low birthweight            |         0|      4|    12|
|6-24 months |CMIN           |BANGLADESH   |Low birthweight            |         1|      0|    12|
|6-24 months |COHORTS        |INDIA        |Normal or high birthweight |         0|   3998|  5268|
|6-24 months |COHORTS        |INDIA        |Normal or high birthweight |         1|    281|  5268|
|6-24 months |COHORTS        |INDIA        |Low birthweight            |         0|    763|  5268|
|6-24 months |COHORTS        |INDIA        |Low birthweight            |         1|    226|  5268|
|6-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |         0|    706|   795|
|6-24 months |COHORTS        |GUATEMALA    |Normal or high birthweight |         1|     17|   795|
|6-24 months |COHORTS        |GUATEMALA    |Low birthweight            |         0|     69|   795|
|6-24 months |COHORTS        |GUATEMALA    |Low birthweight            |         1|      3|   795|
|6-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |         0|   2409|  2768|
|6-24 months |COHORTS        |PHILIPPINES  |Normal or high birthweight |         1|    106|  2768|
|6-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |         0|    219|  2768|
|6-24 months |COHORTS        |PHILIPPINES  |Low birthweight            |         1|     34|  2768|
|6-24 months |CONTENT        |PERU         |Normal or high birthweight |         0|      2|     2|
|6-24 months |CONTENT        |PERU         |Normal or high birthweight |         1|      0|     2|
|6-24 months |CONTENT        |PERU         |Low birthweight            |         0|      0|     2|
|6-24 months |CONTENT        |PERU         |Low birthweight            |         1|      0|     2|
|6-24 months |EE             |PAKISTAN     |Normal or high birthweight |         0|    225|   376|
|6-24 months |EE             |PAKISTAN     |Normal or high birthweight |         1|     19|   376|
|6-24 months |EE             |PAKISTAN     |Low birthweight            |         0|    118|   376|
|6-24 months |EE             |PAKISTAN     |Low birthweight            |         1|     14|   376|
|6-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |         0|    366|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Normal or high birthweight |         1|     39|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |         0|    150|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Low birthweight            |         1|     41|   596|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         0|   8052| 13429|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal or high birthweight |         1|    237| 13429|
|6-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |         0|   4630| 13429|
|6-24 months |JiVitA-3       |BANGLADESH   |Low birthweight            |         1|    510| 13429|
|6-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |         0|   3108|  4435|
|6-24 months |JiVitA-4       |BANGLADESH   |Normal or high birthweight |         1|    171|  4435|
|6-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |         0|    976|  4435|
|6-24 months |JiVitA-4       |BANGLADESH   |Low birthweight            |         1|    180|  4435|
|6-24 months |Keneba         |GAMBIA       |Normal or high birthweight |         0|   1219|  1496|
|6-24 months |Keneba         |GAMBIA       |Normal or high birthweight |         1|     60|  1496|
|6-24 months |Keneba         |GAMBIA       |Low birthweight            |         0|    197|  1496|
|6-24 months |Keneba         |GAMBIA       |Low birthweight            |         1|     20|  1496|
|6-24 months |MAL-ED         |INDIA        |Normal or high birthweight |         0|    181|   231|
|6-24 months |MAL-ED         |INDIA        |Normal or high birthweight |         1|     14|   231|
|6-24 months |MAL-ED         |INDIA        |Low birthweight            |         0|     31|   231|
|6-24 months |MAL-ED         |INDIA        |Low birthweight            |         1|      5|   231|
|6-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |         0|    186|   245|
|6-24 months |MAL-ED         |BANGLADESH   |Normal or high birthweight |         1|      8|   245|
|6-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |         0|     47|   245|
|6-24 months |MAL-ED         |BANGLADESH   |Low birthweight            |         1|      4|   245|
|6-24 months |MAL-ED         |PERU         |Normal or high birthweight |         0|    263|   281|
|6-24 months |MAL-ED         |PERU         |Normal or high birthweight |         1|      1|   281|
|6-24 months |MAL-ED         |PERU         |Low birthweight            |         0|     17|   281|
|6-24 months |MAL-ED         |PERU         |Low birthweight            |         1|      0|   281|
|6-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |         0|    209|   231|
|6-24 months |MAL-ED         |NEPAL        |Normal or high birthweight |         1|      3|   231|
|6-24 months |MAL-ED         |NEPAL        |Low birthweight            |         0|     19|   231|
|6-24 months |MAL-ED         |NEPAL        |Low birthweight            |         1|      0|   231|
|6-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |         0|    206|   218|
|6-24 months |MAL-ED         |BRAZIL       |Normal or high birthweight |         1|      2|   218|
|6-24 months |MAL-ED         |BRAZIL       |Low birthweight            |         0|     10|   218|
|6-24 months |MAL-ED         |BRAZIL       |Low birthweight            |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |         0|    181|   190|
|6-24 months |MAL-ED         |TANZANIA     |Normal or high birthweight |         1|      0|   190|
|6-24 months |MAL-ED         |TANZANIA     |Low birthweight            |         0|      9|   190|
|6-24 months |MAL-ED         |TANZANIA     |Low birthweight            |         1|      0|   190|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         0|    256|   274|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal or high birthweight |         1|      2|   274|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |         0|     16|   274|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low birthweight            |         1|      0|   274|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         0|    334|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal or high birthweight |         1|     17|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |         0|    134|   515|
|6-24 months |NIH-Birth      |BANGLADESH   |Low birthweight            |         1|     30|   515|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         0|    548|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal or high birthweight |         1|     11|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |         0|    156|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low birthweight            |         1|     15|   730|
|6-24 months |PROBIT         |BELARUS      |Normal or high birthweight |         0|  16449| 16583|
|6-24 months |PROBIT         |BELARUS      |Normal or high birthweight |         1|    134| 16583|
|6-24 months |PROBIT         |BELARUS      |Low birthweight            |         0|      0| 16583|
|6-24 months |PROBIT         |BELARUS      |Low birthweight            |         1|      0| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |         0|    482|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Normal or high birthweight |         1|      6|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |         0|    144|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Low birthweight            |         1|      9|   641|
|6-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |         0|     28|    35|
|6-24 months |ResPak         |PAKISTAN     |Normal or high birthweight |         1|      2|    35|
|6-24 months |ResPak         |PAKISTAN     |Low birthweight            |         0|      4|    35|
|6-24 months |ResPak         |PAKISTAN     |Low birthweight            |         1|      1|    35|
|6-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |         0|    986|  1356|
|6-24 months |SAS-CompFeed   |INDIA        |Normal or high birthweight |         1|     48|  1356|
|6-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |         0|    258|  1356|
|6-24 months |SAS-CompFeed   |INDIA        |Low birthweight            |         1|     64|  1356|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         0|   2016|  2143|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal or high birthweight |         1|     52|  2143|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |         0|     70|  2143|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low birthweight            |         1|      5|  2143|
|6-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |         0|    303|   404|
|6-24 months |Vellore Crypto |INDIA        |Normal or high birthweight |         1|     32|   404|
|6-24 months |Vellore Crypto |INDIA        |Low birthweight            |         0|     53|   404|
|6-24 months |Vellore Crypto |INDIA        |Low birthweight            |         1|     16|   404|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         0|   8208|  9501|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal or high birthweight |         1|    110|  9501|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         0|   1125|  9501|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low birthweight            |         1|     58|  9501|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


