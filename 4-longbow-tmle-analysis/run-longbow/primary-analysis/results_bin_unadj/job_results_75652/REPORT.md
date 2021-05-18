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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |feducyrs | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |Low      |            0|    560|  1829|
|0-24 months |COHORTS        |INDIA        |Low      |            1|     61|  1829|
|0-24 months |COHORTS        |INDIA        |Medium   |            0|    475|  1829|
|0-24 months |COHORTS        |INDIA        |Medium   |            1|     47|  1829|
|0-24 months |COHORTS        |INDIA        |High     |            0|    594|  1829|
|0-24 months |COHORTS        |INDIA        |High     |            1|     92|  1829|
|0-24 months |COHORTS        |GUATEMALA    |Low      |            0|    567|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Low      |            1|     44|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |            0|    415|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |            1|     36|  1281|
|0-24 months |COHORTS        |GUATEMALA    |High     |            0|    206|  1281|
|0-24 months |COHORTS        |GUATEMALA    |High     |            1|     13|  1281|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |            0|    873|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |            1|    122|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |            0|    618|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |            1|     95|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |High     |            0|   1066|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |High     |            1|    153|  2927|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |            0|    226|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |            1|     77|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |            0|    173|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |            1|     63|   685|
|0-24 months |GMS-Nepal      |NEPAL        |High     |            0|    110|   685|
|0-24 months |GMS-Nepal      |NEPAL        |High     |            1|     36|   685|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |            0|   9955| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |            1|    665| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |            0|   8374| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |            1|    555| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |            0|   6043| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |            1|    362| 25954|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |            0|   1826|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |            1|    115|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |            0|   1912|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |            1|    142|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |            0|   1115|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |            1|     70|  5180|
|0-24 months |LCNI-5         |MALAWI       |Low      |            0|    279|   828|
|0-24 months |LCNI-5         |MALAWI       |Low      |            1|      2|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |            0|    293|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |            1|      3|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |            0|    248|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |            1|      3|   828|
|0-24 months |MAL-ED         |INDIA        |Low      |            0|     27|   126|
|0-24 months |MAL-ED         |INDIA        |Low      |            1|      8|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |            0|     33|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |            1|      3|   126|
|0-24 months |MAL-ED         |INDIA        |High     |            0|     51|   126|
|0-24 months |MAL-ED         |INDIA        |High     |            1|      4|   126|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |            0|     39|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |            1|      2|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |            0|     33|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |            1|      4|   149|
|0-24 months |MAL-ED         |BANGLADESH   |High     |            0|     68|   149|
|0-24 months |MAL-ED         |BANGLADESH   |High     |            1|      3|   149|
|0-24 months |MAL-ED         |PERU         |Low      |            0|     86|   291|
|0-24 months |MAL-ED         |PERU         |Low      |            1|      0|   291|
|0-24 months |MAL-ED         |PERU         |Medium   |            0|     93|   291|
|0-24 months |MAL-ED         |PERU         |Medium   |            1|      2|   291|
|0-24 months |MAL-ED         |PERU         |High     |            0|    108|   291|
|0-24 months |MAL-ED         |PERU         |High     |            1|      2|   291|
|0-24 months |MAL-ED         |NEPAL        |Low      |            0|     22|    81|
|0-24 months |MAL-ED         |NEPAL        |Low      |            1|      0|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |            0|     23|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |            1|      1|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |            0|     29|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |            1|      6|    81|
|0-24 months |MAL-ED         |TANZANIA     |Low      |            0|     64|   245|
|0-24 months |MAL-ED         |TANZANIA     |Low      |            1|      0|   245|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |            0|     50|   245|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |            1|      2|   245|
|0-24 months |MAL-ED         |TANZANIA     |High     |            0|    124|   245|
|0-24 months |MAL-ED         |TANZANIA     |High     |            1|      5|   245|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |            0|     61|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |            1|      2|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            0|     32|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            1|      0|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |            0|     40|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |            1|      4|   139|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |            0|    189|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |            1|     19|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            0|    176|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            1|     16|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |            0|    327|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |            1|     31|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |            0|   5917| 16335|
|0-24 months |PROBIT         |BELARUS      |Low      |            1|    502| 16335|
|0-24 months |PROBIT         |BELARUS      |Medium   |            0|   6607| 16335|
|0-24 months |PROBIT         |BELARUS      |Medium   |            1|    562| 16335|
|0-24 months |PROBIT         |BELARUS      |High     |            0|   2531| 16335|
|0-24 months |PROBIT         |BELARUS      |High     |            1|    216| 16335|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |            0|    210|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |            1|     17|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |            0|    219|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |            1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |            0|    229|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |            1|     10|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |            0|    519|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |            1|    104|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |            0|    424|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |            1|     70|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |High     |            0|    347|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |High     |            1|     48|  1512|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |            0|    124|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |            1|     29|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            0|    131|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            1|     23|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |            0|     92|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |            1|     19|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |            0|   1159|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |            1|     89|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            0|    630|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            1|     41|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |            0|    449|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |            1|     28|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            0|   1820| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            1|    193| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   9402| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            1|    940| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |            0|    945| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |            1|    102| 13402|
|0-6 months  |COHORTS        |INDIA        |Low      |            0|    554|  1760|
|0-6 months  |COHORTS        |INDIA        |Low      |            1|     43|  1760|
|0-6 months  |COHORTS        |INDIA        |Medium   |            0|    468|  1760|
|0-6 months  |COHORTS        |INDIA        |Medium   |            1|     32|  1760|
|0-6 months  |COHORTS        |INDIA        |High     |            0|    604|  1760|
|0-6 months  |COHORTS        |INDIA        |High     |            1|     59|  1760|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |            0|    456|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |            1|     28|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |            0|    334|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |            1|     27|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |High     |            0|    167|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |High     |            1|     10|  1022|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |            0|    935|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |            1|     59|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |            0|    666|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |            1|     47|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |            0|   1121|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |            1|     98|  2926|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |            0|    268|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |            1|     35|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |            0|    210|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |            1|     26|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |            0|    128|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |            1|     18|   685|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |            0|  10133| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |            1|    451| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |            0|   8510| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |            1|    381| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |            0|   6145| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |            1|    241| 25861|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |            0|   1770|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |            1|     38|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |            0|   1880|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |            1|     43|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |            0|   1087|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |            1|     26|  4844|
|0-6 months  |LCNI-5         |MALAWI       |Low      |            0|     94|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |            1|      0|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |            0|     90|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |            1|      0|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |            0|     81|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |            1|      0|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |            0|     30|   126|
|0-6 months  |MAL-ED         |INDIA        |Low      |            1|      5|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |            0|     33|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |            1|      3|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |            0|     52|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |            1|      3|   126|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |            0|     40|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |            1|      1|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |            0|     33|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |            1|      4|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |            0|     70|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |            1|      1|   149|
|0-6 months  |MAL-ED         |PERU         |Low      |            0|     86|   291|
|0-6 months  |MAL-ED         |PERU         |Low      |            1|      0|   291|
|0-6 months  |MAL-ED         |PERU         |Medium   |            0|     94|   291|
|0-6 months  |MAL-ED         |PERU         |Medium   |            1|      1|   291|
|0-6 months  |MAL-ED         |PERU         |High     |            0|    110|   291|
|0-6 months  |MAL-ED         |PERU         |High     |            1|      0|   291|
|0-6 months  |MAL-ED         |NEPAL        |Low      |            0|     22|    81|
|0-6 months  |MAL-ED         |NEPAL        |Low      |            1|      0|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |            0|     24|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |            1|      0|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |            0|     29|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |            1|      6|    81|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |            0|     64|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |            1|      0|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |            0|     50|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |            1|      2|   245|
|0-6 months  |MAL-ED         |TANZANIA     |High     |            0|    128|   245|
|0-6 months  |MAL-ED         |TANZANIA     |High     |            1|      1|   245|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |            0|     63|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |            1|      0|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |            0|     32|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |            1|      0|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |            0|     42|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |            1|      2|   139|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |            0|    192|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |            1|     16|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |            0|    180|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |            1|     12|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |            0|    336|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |            1|     22|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |            0|   5921| 16332|
|0-6 months  |PROBIT         |BELARUS      |Low      |            1|    497| 16332|
|0-6 months  |PROBIT         |BELARUS      |Medium   |            0|   6611| 16332|
|0-6 months  |PROBIT         |BELARUS      |Medium   |            1|    556| 16332|
|0-6 months  |PROBIT         |BELARUS      |High     |            0|   2531| 16332|
|0-6 months  |PROBIT         |BELARUS      |High     |            1|    216| 16332|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |            0|    216|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |            1|     11|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |            0|    222|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |            1|     12|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |            0|    233|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |            1|      6|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |            0|    571|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |            1|     48|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |            0|    469|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |            1|     24|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |            0|    365|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |            1|     27|  1504|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |            0|    143|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |            1|     10|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |            0|    149|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |            1|      5|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |            0|    106|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |            1|      5|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |            0|   1207|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |            1|     41|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |            0|    652|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |            1|     19|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |            0|    458|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |            1|     19|  2396|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |            0|   1863| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |            1|    141| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   9582| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |            1|    691| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |            0|    964| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |            1|     76| 13317|
|6-24 months |COHORTS        |INDIA        |Low      |            0|    563|  1708|
|6-24 months |COHORTS        |INDIA        |Low      |            1|     21|  1708|
|6-24 months |COHORTS        |INDIA        |Medium   |            0|    470|  1708|
|6-24 months |COHORTS        |INDIA        |Medium   |            1|     15|  1708|
|6-24 months |COHORTS        |INDIA        |High     |            0|    603|  1708|
|6-24 months |COHORTS        |INDIA        |High     |            1|     36|  1708|
|6-24 months |COHORTS        |GUATEMALA    |Low      |            0|    544|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Low      |            1|     16|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |            0|    389|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |            1|      9|  1156|
|6-24 months |COHORTS        |GUATEMALA    |High     |            0|    195|  1156|
|6-24 months |COHORTS        |GUATEMALA    |High     |            1|      3|  1156|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |            0|    855|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |            1|     70|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |            0|    624|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |            1|     52|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |High     |            0|   1039|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |High     |            1|     61|  2701|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |            0|    213|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |            1|     47|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |            0|    168|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |            1|     43|   589|
|6-24 months |GMS-Nepal      |NEPAL        |High     |            0|     97|   589|
|6-24 months |GMS-Nepal      |NEPAL        |High     |            1|     21|   589|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |            0|   6374| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |            1|    223| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |            0|   5592| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |            1|    181| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |            0|   4092| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |            1|    124| 16586|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |            0|   1859|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |            1|     79|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |            0|   1944|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |            1|    103|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |            0|   1138|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |            1|     45|  5168|
|6-24 months |LCNI-5         |MALAWI       |Low      |            0|    276|   814|
|6-24 months |LCNI-5         |MALAWI       |Low      |            1|      2|   814|
|6-24 months |LCNI-5         |MALAWI       |Medium   |            0|    290|   814|
|6-24 months |LCNI-5         |MALAWI       |Medium   |            1|      3|   814|
|6-24 months |LCNI-5         |MALAWI       |High     |            0|    240|   814|
|6-24 months |LCNI-5         |MALAWI       |High     |            1|      3|   814|
|6-24 months |MAL-ED         |INDIA        |Low      |            0|     31|   119|
|6-24 months |MAL-ED         |INDIA        |Low      |            1|      3|   119|
|6-24 months |MAL-ED         |INDIA        |Medium   |            0|     33|   119|
|6-24 months |MAL-ED         |INDIA        |Medium   |            1|      1|   119|
|6-24 months |MAL-ED         |INDIA        |High     |            0|     50|   119|
|6-24 months |MAL-ED         |INDIA        |High     |            1|      1|   119|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |            0|     36|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |            1|      1|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |            0|     35|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |            1|      0|   135|
|6-24 months |MAL-ED         |BANGLADESH   |High     |            0|     61|   135|
|6-24 months |MAL-ED         |BANGLADESH   |High     |            1|      2|   135|
|6-24 months |MAL-ED         |PERU         |Low      |            0|     80|   259|
|6-24 months |MAL-ED         |PERU         |Low      |            1|      0|   259|
|6-24 months |MAL-ED         |PERU         |Medium   |            0|     76|   259|
|6-24 months |MAL-ED         |PERU         |Medium   |            1|      1|   259|
|6-24 months |MAL-ED         |PERU         |High     |            0|    100|   259|
|6-24 months |MAL-ED         |PERU         |High     |            1|      2|   259|
|6-24 months |MAL-ED         |NEPAL        |Low      |            0|     21|    79|
|6-24 months |MAL-ED         |NEPAL        |Low      |            1|      0|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |            0|     23|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |            1|      1|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |            0|     34|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |            1|      0|    79|
|6-24 months |MAL-ED         |TANZANIA     |Low      |            0|     60|   231|
|6-24 months |MAL-ED         |TANZANIA     |Low      |            1|      0|   231|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |            0|     49|   231|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |            1|      0|   231|
|6-24 months |MAL-ED         |TANZANIA     |High     |            0|    118|   231|
|6-24 months |MAL-ED         |TANZANIA     |High     |            1|      4|   231|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |            0|     55|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |            1|      2|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            0|     26|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            1|      0|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |            0|     34|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |            1|      2|   119|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |            0|    192|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |            1|      5|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            0|    183|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            1|      6|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |            0|    335|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |            1|      9|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |            0|   6310| 16048|
|6-24 months |PROBIT         |BELARUS      |Low      |            1|      5| 16048|
|6-24 months |PROBIT         |BELARUS      |Medium   |            0|   7046| 16048|
|6-24 months |PROBIT         |BELARUS      |Medium   |            1|      6| 16048|
|6-24 months |PROBIT         |BELARUS      |High     |            0|   2681| 16048|
|6-24 months |PROBIT         |BELARUS      |High     |            1|      0| 16048|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |            0|    200|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |            1|      6|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |            0|    198|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |            1|      3|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |            0|    204|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |            1|      4|   615|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |            0|    511|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |            1|     62|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |            0|    407|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |            1|     49|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |            0|    336|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |            1|     23|  1388|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |            0|    130|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |            1|     19|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            0|    130|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            1|     18|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |            0|     91|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |            1|     14|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |            0|    991|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |            1|     50|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            0|    554|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            1|     22|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |            0|    390|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |            1|     11|  2018|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            0|   1521| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            1|     54| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   7808| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            1|    265| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |            0|    762| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |            1|     29| 10439|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


