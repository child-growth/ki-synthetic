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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |feducyrs | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-----------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |High     |           0|    164|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |High     |           1|     67|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |           0|    419|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |           1|    139|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |           0|    330|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |           1|    115|  1234|
|0-24 months |COHORTS        |INDIA                        |High     |           0|    386|  1447|
|0-24 months |COHORTS        |INDIA                        |High     |           1|    181|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |           0|    305|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |           1|    167|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |           0|    269|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |           1|    139|  1447|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |           0|    640|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |           1|    388|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |           0|    480|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |           1|    346|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |           0|    597|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |           1|    417|  2868|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |           0|     65|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |           1|    104|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |           0|    115|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |           1|    177|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |           0|    100|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |           1|    123|   684|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |           0|   4908| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |           1|   1569| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |           0|   7799| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |           1|   2838| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           0|   6580| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           1|   2276| 25970|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |           0|    912|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |           1|    335|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |           0|   1303|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |           1|    651|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1426|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           1|    650|  5277|
|0-24 months |LCNI-5         |MALAWI                       |High     |           0|    235|   813|
|0-24 months |LCNI-5         |MALAWI                       |High     |           1|     16|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |           0|    267|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |           1|     24|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |           0|    246|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |           1|     25|   813|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |           0|     41|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |           1|     13|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |           0|     23|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |           1|     16|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |           0|     36|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |           1|     18|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |           0|     22|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |           1|     22|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |           0|     29|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |           1|     30|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |           0|     27|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |           1|     17|   147|
|0-24 months |MAL-ED         |NEPAL                        |High     |           0|     31|    98|
|0-24 months |MAL-ED         |NEPAL                        |High     |           1|     11|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |           0|     17|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |           1|     11|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |           0|     18|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |           1|     10|    98|
|0-24 months |MAL-ED         |PERU                         |High     |           0|    111|   250|
|0-24 months |MAL-ED         |PERU                         |High     |           1|      9|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |           0|     65|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |           1|      4|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |           0|     54|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |           1|      7|   250|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           0|     36|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           1|      7|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           0|     29|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           1|      8|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     23|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|      7|   110|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|    113|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|     17|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     52|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      9|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|     19|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|      1|   211|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |           0|    202|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |           1|     94|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           0|    152|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           1|     90|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    154|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     66|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |           0|   2071| 16315|
|0-24 months |PROBIT         |BELARUS                      |High     |           1|    637| 16315|
|0-24 months |PROBIT         |BELARUS                      |Low      |           0|   4755| 16315|
|0-24 months |PROBIT         |BELARUS                      |Low      |           1|   1663| 16315|
|0-24 months |PROBIT         |BELARUS                      |Medium   |           0|   5346| 16315|
|0-24 months |PROBIT         |BELARUS                      |Medium   |           1|   1843| 16315|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |           0|    165|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |           1|     67|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |           0|    136|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |           1|    102|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |           0|    153|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |           1|     77|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |           0|    235|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |           1|    151|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |           0|    352|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |           1|    291|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |           0|    297|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |           1|    184|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |           0|     62|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |           1|     48|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           0|     79|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           1|     68|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           0|     80|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           1|     81|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    355|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|     94|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|    966|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|    304|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    498|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|    166|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           0|    783| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           1|    209| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   1720| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    564| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   7893| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|   2399| 13568|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |           0|    146|   997|
|0-6 months  |COHORTS        |GUATEMALA                    |High     |           1|     44|   997|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |           0|    355|   997|
|0-6 months  |COHORTS        |GUATEMALA                    |Low      |           1|     88|   997|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |           0|    296|   997|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium   |           1|     68|   997|
|0-6 months  |COHORTS        |INDIA                        |High     |           0|    419|  1417|
|0-6 months  |COHORTS        |INDIA                        |High     |           1|    138|  1417|
|0-6 months  |COHORTS        |INDIA                        |Low      |           0|    357|  1417|
|0-6 months  |COHORTS        |INDIA                        |Low      |           1|    101|  1417|
|0-6 months  |COHORTS        |INDIA                        |Medium   |           0|    292|  1417|
|0-6 months  |COHORTS        |INDIA                        |Medium   |           1|    110|  1417|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |           0|    768|  2867|
|0-6 months  |COHORTS        |PHILIPPINES                  |High     |           1|    260|  2867|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |           0|    649|  2867|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low      |           1|    177|  2867|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |           0|    793|  2867|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium   |           1|    220|  2867|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |           0|     94|   684|
|0-6 months  |GMS-Nepal      |NEPAL                        |High     |           1|     75|   684|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |           0|    198|   684|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low      |           1|     94|   684|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |           0|    134|   684|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium   |           1|     89|   684|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |           0|   5344| 25882|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High     |           1|   1106| 25882|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |           0|   8696| 25882|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low      |           1|   1905| 25882|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |           0|   7293| 25882|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium   |           1|   1538| 25882|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |           0|   1056|  4948|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High     |           1|    119|  4948|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |           0|   1625|  4948|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low      |           1|    206|  4948|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1733|  4948|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium   |           1|    209|  4948|
|0-6 months  |LCNI-5         |MALAWI                       |High     |           0|     72|   267|
|0-6 months  |LCNI-5         |MALAWI                       |High     |           1|      1|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |           0|    104|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Low      |           1|      0|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |           0|     87|   267|
|0-6 months  |LCNI-5         |MALAWI                       |Medium   |           1|      3|   267|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |           0|     45|   147|
|0-6 months  |MAL-ED         |BANGLADESH                   |High     |           1|      9|   147|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |           0|     27|   147|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low      |           1|     12|   147|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |           0|     42|   147|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium   |           1|     12|   147|
|0-6 months  |MAL-ED         |INDIA                        |High     |           0|     30|   147|
|0-6 months  |MAL-ED         |INDIA                        |High     |           1|     14|   147|
|0-6 months  |MAL-ED         |INDIA                        |Low      |           0|     41|   147|
|0-6 months  |MAL-ED         |INDIA                        |Low      |           1|     18|   147|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |           0|     33|   147|
|0-6 months  |MAL-ED         |INDIA                        |Medium   |           1|     11|   147|
|0-6 months  |MAL-ED         |NEPAL                        |High     |           0|     33|    98|
|0-6 months  |MAL-ED         |NEPAL                        |High     |           1|      9|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |           0|     21|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Low      |           1|      7|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |           0|     25|    98|
|0-6 months  |MAL-ED         |NEPAL                        |Medium   |           1|      3|    98|
|0-6 months  |MAL-ED         |PERU                         |High     |           0|    118|   250|
|0-6 months  |MAL-ED         |PERU                         |High     |           1|      2|   250|
|0-6 months  |MAL-ED         |PERU                         |Low      |           0|     67|   250|
|0-6 months  |MAL-ED         |PERU                         |Low      |           1|      2|   250|
|0-6 months  |MAL-ED         |PERU                         |Medium   |           0|     58|   250|
|0-6 months  |MAL-ED         |PERU                         |Medium   |           1|      3|   250|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |           0|     39|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |High     |           1|      4|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |           0|     33|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Low      |           1|      4|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     29|   110|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|      1|   110|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|    125|   211|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|      5|   211|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     58|   211|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      3|   211|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|     19|   211|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|      1|   211|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |           0|    219|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High     |           1|     77|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |           0|    172|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low      |           1|     70|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    172|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     48|   758|
|0-6 months  |PROBIT         |BELARUS                      |High     |           0|   2083| 16312|
|0-6 months  |PROBIT         |BELARUS                      |High     |           1|    625| 16312|
|0-6 months  |PROBIT         |BELARUS                      |Low      |           0|   4793| 16312|
|0-6 months  |PROBIT         |BELARUS                      |Low      |           1|   1625| 16312|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |           0|   5381| 16312|
|0-6 months  |PROBIT         |BELARUS                      |Medium   |           1|   1805| 16312|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |           0|    180|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |High     |           1|     52|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |           0|    167|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low      |           1|     71|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |           0|    172|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium   |           1|     58|   700|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |           0|    309|  1502|
|0-6 months  |SAS-CompFeed   |INDIA                        |High     |           1|     76|  1502|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |           0|    491|  1502|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low      |           1|    149|  1502|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |           0|    372|  1502|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium   |           1|    105|  1502|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |           0|     93|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High     |           1|     17|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |           0|    121|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low      |           1|     26|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |           0|    126|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium   |           1|     35|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    395|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|     54|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|   1088|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|    182|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    567|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|     97|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |           0|    815| 13478|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High     |           1|    170| 13478|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   1863| 13478|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    406| 13478|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   8381| 13478|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|   1843| 13478|
|6-24 months |COHORTS        |GUATEMALA                    |High     |           0|    181|  1125|
|6-24 months |COHORTS        |GUATEMALA                    |High     |           1|     29|  1125|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |           0|    445|  1125|
|6-24 months |COHORTS        |GUATEMALA                    |Low      |           1|     66|  1125|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |           0|    354|  1125|
|6-24 months |COHORTS        |GUATEMALA                    |Medium   |           1|     50|  1125|
|6-24 months |COHORTS        |INDIA                        |High     |           0|    494|  1405|
|6-24 months |COHORTS        |INDIA                        |High     |           1|     55|  1405|
|6-24 months |COHORTS        |INDIA                        |Low      |           0|    375|  1405|
|6-24 months |COHORTS        |INDIA                        |Low      |           1|     84|  1405|
|6-24 months |COHORTS        |INDIA                        |Medium   |           0|    350|  1405|
|6-24 months |COHORTS        |INDIA                        |Medium   |           1|     47|  1405|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |           0|    735|  2655|
|6-24 months |COHORTS        |PHILIPPINES                  |High     |           1|    188|  2655|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |           0|    526|  2655|
|6-24 months |COHORTS        |PHILIPPINES                  |Low      |           1|    252|  2655|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |           0|    686|  2655|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium   |           1|    268|  2655|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |           0|     86|   589|
|6-24 months |GMS-Nepal      |NEPAL                        |High     |           1|     59|   589|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |           0|    118|   589|
|6-24 months |GMS-Nepal      |NEPAL                        |Low      |           1|    135|   589|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |           0|    107|   589|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium   |           1|     84|   589|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |           0|   3796| 16606|
|6-24 months |JiVitA-3       |BANGLADESH                   |High     |           1|    595| 16606|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |           0|   5313| 16606|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low      |           1|   1183| 16606|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           0|   4768| 16606|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium   |           1|    951| 16606|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |           0|    985|  5273|
|6-24 months |JiVitA-4       |BANGLADESH                   |High     |           1|    260|  5273|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |           0|   1425|  5273|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low      |           1|    528|  5273|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           0|   1562|  5273|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium   |           1|    513|  5273|
|6-24 months |LCNI-5         |MALAWI                       |High     |           0|    232|   802|
|6-24 months |LCNI-5         |MALAWI                       |High     |           1|     15|   802|
|6-24 months |LCNI-5         |MALAWI                       |Low      |           0|    265|   802|
|6-24 months |LCNI-5         |MALAWI                       |Low      |           1|     24|   802|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |           0|    243|   802|
|6-24 months |LCNI-5         |MALAWI                       |Medium   |           1|     23|   802|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |           0|     42|   131|
|6-24 months |MAL-ED         |BANGLADESH                   |High     |           1|      6|   131|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |           0|     28|   131|
|6-24 months |MAL-ED         |BANGLADESH                   |Low      |           1|      9|   131|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |           0|     36|   131|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium   |           1|     10|   131|
|6-24 months |MAL-ED         |INDIA                        |High     |           0|     32|   137|
|6-24 months |MAL-ED         |INDIA                        |High     |           1|     11|   137|
|6-24 months |MAL-ED         |INDIA                        |Low      |           0|     34|   137|
|6-24 months |MAL-ED         |INDIA                        |Low      |           1|     20|   137|
|6-24 months |MAL-ED         |INDIA                        |Medium   |           0|     32|   137|
|6-24 months |MAL-ED         |INDIA                        |Medium   |           1|      8|   137|
|6-24 months |MAL-ED         |NEPAL                        |High     |           0|     36|    94|
|6-24 months |MAL-ED         |NEPAL                        |High     |           1|      3|    94|
|6-24 months |MAL-ED         |NEPAL                        |Low      |           0|     23|    94|
|6-24 months |MAL-ED         |NEPAL                        |Low      |           1|      4|    94|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |           0|     20|    94|
|6-24 months |MAL-ED         |NEPAL                        |Medium   |           1|      8|    94|
|6-24 months |MAL-ED         |PERU                         |High     |           0|     98|   223|
|6-24 months |MAL-ED         |PERU                         |High     |           1|      8|   223|
|6-24 months |MAL-ED         |PERU                         |Low      |           0|     58|   223|
|6-24 months |MAL-ED         |PERU                         |Low      |           1|      2|   223|
|6-24 months |MAL-ED         |PERU                         |Medium   |           0|     53|   223|
|6-24 months |MAL-ED         |PERU                         |Medium   |           1|      4|   223|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           0|     33|    96|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |High     |           1|      3|    96|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           0|     30|    96|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |           1|      6|    96|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           0|     17|    96|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |           1|      7|    96|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           0|    115|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |           1|     13|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           0|     47|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |           1|      8|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|     19|   202|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|      0|   202|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |           0|    263|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High     |           1|     23|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           0|    188|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low      |           1|     41|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           0|    183|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |           1|     32|   730|
|6-24 months |PROBIT         |BELARUS                      |High     |           0|   2619| 16027|
|6-24 months |PROBIT         |BELARUS                      |High     |           1|     17| 16027|
|6-24 months |PROBIT         |BELARUS                      |Low      |           0|   6260| 16027|
|6-24 months |PROBIT         |BELARUS                      |Low      |           1|     61| 16027|
|6-24 months |PROBIT         |BELARUS                      |Medium   |           0|   7014| 16027|
|6-24 months |PROBIT         |BELARUS                      |Medium   |           1|     56| 16027|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |           0|    191|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |High     |           1|     23|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |           0|    158|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Low      |           1|     50|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |           0|    167|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium   |           1|     26|   615|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |           0|    263|  1386|
|6-24 months |SAS-CompFeed   |INDIA                        |High     |           1|    107|  1386|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |           0|    376|  1386|
|6-24 months |SAS-CompFeed   |INDIA                        |Low      |           1|    196|  1386|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |           0|    324|  1386|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium   |           1|    120|  1386|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |           0|     71|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High     |           1|     36|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           0|     89|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low      |           1|     51|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           0|     99|   402|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |           1|     56|   402|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           0|    321|  2009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |           1|     54|  2009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           0|    906|  2009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |           1|    166|  2009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           0|    460|  2009|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |           1|    102|  2009|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           0|    666| 10504|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High     |           1|     51| 10504|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           0|   1600| 10504|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |           1|    213| 10504|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           0|   7244| 10504|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |           1|    730| 10504|


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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2d4c4e33-b01f-497c-8ef9-8721aad42577/88863896-dc33-4666-828c-2133d09fc95e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d4c4e33-b01f-497c-8ef9-8721aad42577/88863896-dc33-4666-828c-2133d09fc95e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d4c4e33-b01f-497c-8ef9-8721aad42577/88863896-dc33-4666-828c-2133d09fc95e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d4c4e33-b01f-497c-8ef9-8721aad42577/88863896-dc33-4666-828c-2133d09fc95e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.2994017| 0.2477669| 0.3510365|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.2640491| 0.2298721| 0.2982261|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.2588867| 0.2186574| 0.2991159|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.3340419| 0.2959939| 0.3720899|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.3708337| 0.3299258| 0.4117415|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.3216883| 0.2768206| 0.3665559|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.3772125| 0.3432872| 0.4111378|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.4149171| 0.3790419| 0.4507923|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.4157580| 0.3834465| 0.4480695|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.6020238| 0.5315873| 0.6724603|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.6071900| 0.5520117| 0.6623684|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.5581275| 0.4870371| 0.6292178|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.2551718| 0.2374516| 0.2728919|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.2617997| 0.2488637| 0.2747356|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.2573860| 0.2454837| 0.2692882|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.3029637| 0.2516765| 0.3542509|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.3225282| 0.2919884| 0.3530679|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.3176750| 0.2939260| 0.3414240|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.0884817| 0.0459005| 0.1310628|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.0782796| 0.0465416| 0.1100176|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.0874656| 0.0538654| 0.1210659|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.2396393| 0.1255016| 0.3537770|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.4148413| 0.2569723| 0.5727104|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.3443566| 0.2136652| 0.4750480|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.4972626| 0.3457622| 0.6487630|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.5083028| 0.3783183| 0.6382874|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.3868536| 0.2377543| 0.5359528|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.2804968| 0.1388454| 0.4221482|
|0-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.3880282| 0.2018715| 0.5741849|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.3705222| 0.1848694| 0.5561750|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.1627907| 0.0519425| 0.2736389|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.2162162| 0.0829646| 0.3494679|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.2333333| 0.0812918| 0.3853749|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.3295242| 0.2776352| 0.3814132|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.3634051| 0.3028705| 0.4239397|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.2973548| 0.2344419| 0.3602677|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.2517851| 0.1936683| 0.3099020|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.2551832| 0.1971977| 0.3131687|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.2520938| 0.1918348| 0.3123528|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.3316717| 0.2772043| 0.3861391|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.4086505| 0.3506837| 0.4666173|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.3169862| 0.2660125| 0.3679598|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.4252240| 0.3762361| 0.4742118|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.4100382| 0.3399607| 0.4801156|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.3911127| 0.3158447| 0.4663806|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.4397897| 0.3448273| 0.5347521|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.4506175| 0.3693095| 0.5319255|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.5053732| 0.4266647| 0.5840817|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.2249006| 0.1820198| 0.2677814|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.2401392| 0.2164837| 0.2637947|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.2499200| 0.2137387| 0.2861012|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.2151132| 0.1944465| 0.2357799|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.2426235| 0.2240446| 0.2612024|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.2349288| 0.2268446| 0.2430129|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | 0.2289991| 0.1698992| 0.2880990|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |NA             | 0.2170158| 0.1782858| 0.2557459|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.1811163| 0.1410779| 0.2211546|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | 0.2480982| 0.2164702| 0.2797262|
|0-6 months  |COHORTS        |INDIA                        |Low                |NA             | 0.2502560| 0.2167320| 0.2837800|
|0-6 months  |COHORTS        |INDIA                        |Medium             |NA             | 0.2537379| 0.2166300| 0.2908459|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2132198| 0.1915436| 0.2348959|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.2301939| 0.2056105| 0.2547773|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2323086| 0.2068566| 0.2577607|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | 0.4041927| 0.3375286| 0.4708567|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.3446953| 0.2941528| 0.3952379|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.4050424| 0.3354818| 0.4746031|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1785938| 0.1628611| 0.1943265|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1726850| 0.1627998| 0.1825703|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1770578| 0.1673071| 0.1868086|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.0910562| 0.0752003| 0.1069120|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.1084952| 0.0954426| 0.1215479|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.1090514| 0.0947571| 0.1233457|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1666667| 0.0669272| 0.2664062|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.3076923| 0.1623454| 0.4530393|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.2222222| 0.1109581| 0.3334863|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | 0.3405552| 0.1985877| 0.4825227|
|0-6 months  |MAL-ED         |INDIA                        |Low                |NA             | 0.3047886| 0.1860055| 0.4235718|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |NA             | 0.2705536| 0.1388991| 0.4022080|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.2482193| 0.1996666| 0.2967721|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.3098350| 0.2519301| 0.3677400|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.2222648| 0.1669010| 0.2776285|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             | 0.2449680| 0.1866902| 0.3032458|
|0-6 months  |PROBIT         |BELARUS                      |Low                |NA             | 0.2489127| 0.1906537| 0.3071717|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |NA             | 0.2481781| 0.1880394| 0.3083168|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             | 0.2506075| 0.1958640| 0.3053510|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2925944| 0.2315538| 0.3536349|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.2461186| 0.1880622| 0.3041750|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             | 0.2002306| 0.1618810| 0.2385803|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.2213199| 0.1670030| 0.2756368|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.2215503| 0.1612717| 0.2818290|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.1689611| 0.0942240| 0.2436981|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.1658015| 0.1057715| 0.2258315|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.2127761| 0.1488165| 0.2767357|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1206108| 0.0906106| 0.1506110|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.1416444| 0.1224688| 0.1608199|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1481429| 0.1210095| 0.1752763|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.1700737| 0.1564700| 0.1836774|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1831040| 0.1701246| 0.1960835|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.1808193| 0.1735829| 0.1880556|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.1412826| 0.0927788| 0.1897865|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.1297184| 0.1002124| 0.1592243|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.1234311| 0.0906030| 0.1562592|
|6-24 months |COHORTS        |INDIA                        |High               |NA             | 0.1226477| 0.0919408| 0.1533547|
|6-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.1677018| 0.1309434| 0.2044602|
|6-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.1101593| 0.0756501| 0.1446685|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2328193| 0.2008608| 0.2647778|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.2766043| 0.2422268| 0.3109818|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.2752017| 0.2436507| 0.3067528|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.4424616| 0.3544794| 0.5304438|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.5150179| 0.4521607| 0.5778751|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.4444043| 0.3639666| 0.5248420|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1633729| 0.1412386| 0.1855072|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1719391| 0.1577721| 0.1861061|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1659012| 0.1529505| 0.1788519|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.2543502| 0.2007342| 0.3079662|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.2605035| 0.2300905| 0.2909165|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.2518731| 0.2286445| 0.2751017|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.0831681| 0.0419024| 0.1244338|
|6-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.0787112| 0.0467278| 0.1106947|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.0817394| 0.0485602| 0.1149186|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1250000| 0.0310816| 0.2189184|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.2432432| 0.1044687| 0.3820178|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.2173913| 0.0977375| 0.3370451|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.2558140| 0.1249236| 0.3867043|
|6-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.3703704| 0.2410989| 0.4996419|
|6-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.2000000| 0.0755861| 0.3244139|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.0840730| 0.0521264| 0.1160196|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1773933| 0.1273415| 0.2274451|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.1441969| 0.0965363| 0.1918574|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0082795| 0.0039031| 0.0126558|
|6-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0093117| 0.0035024| 0.0151209|
|6-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0075158| 0.0026319| 0.0123997|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.1167074| 0.0743346| 0.1590801|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.2316567| 0.1728093| 0.2905041|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.1293732| 0.0822792| 0.1764672|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.3386249| 0.2976146| 0.3796352|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.3022238| 0.2556099| 0.3488377|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.2779926| 0.2048293| 0.3511559|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.3248095| 0.2337571| 0.4158620|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.3598519| 0.2798389| 0.4398650|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.3596259| 0.2827428| 0.4365090|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.1486384| 0.1124360| 0.1848409|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.1511351| 0.1297536| 0.1725165|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1848354| 0.1530900| 0.2165808|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.0752016| 0.0538736| 0.0965297|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1205924| 0.1037438| 0.1374410|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.0925008| 0.0860179| 0.0989838|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2601297| 0.2356425| 0.2846169|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3365584| 0.3122030| 0.3609138|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4013250| 0.3833827| 0.4192673|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5906433| 0.5537666| 0.6275199|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2573354| 0.2507501| 0.2639207|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3100246| 0.2953385| 0.3247108|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0799508| 0.0612962| 0.0986054|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3197279| 0.2440789| 0.3953769|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4693878| 0.3884360| 0.5503395|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3265306| 0.2332088| 0.4198524|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2000000| 0.1249078| 0.2750922|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2539381| 0.1952340| 0.3126422|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.4145695| 0.3576236| 0.4715155|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2366765| 0.2196074| 0.2537455|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2337854| 0.2266636| 0.2409072|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2006018| 0.1757323| 0.2254713|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.2462950| 0.2238538| 0.2687361|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2291594| 0.2137721| 0.2445467|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3771930| 0.3408437| 0.4135423|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1757592| 0.1700164| 0.1815020|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.1079224| 0.0978937| 0.1179511|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2244898| 0.1568093| 0.2921703|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.2925170| 0.2187257| 0.3663083|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2485900| 0.1897185| 0.3074615|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2197071| 0.1750081| 0.2644060|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1866029| 0.1492099| 0.2239959|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1397398| 0.1258162| 0.1536634|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1794777| 0.1729988| 0.1859566|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1288889| 0.1093000| 0.1484778|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1323843| 0.1146569| 0.1501118|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666667| 0.2498425| 0.2834908|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.4719864| 0.4316361| 0.5123367|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1643382| 0.1581062| 0.1705701|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2467286| 0.2329282| 0.2605290|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0773067| 0.0588111| 0.0958024|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1908397| 0.1232893| 0.2583901|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2846715| 0.2088306| 0.3605124|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0083609| 0.0045540| 0.0121678|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3051948| 0.2633957| 0.3469939|
|6-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3557214| 0.3088651| 0.4025777|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1602787| 0.1442326| 0.1763249|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0946306| 0.0890328| 0.1002285|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.8819224| 0.7215435| 1.077949|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.8646799| 0.6938641| 1.077547|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.1101411| 0.9558110| 1.289390|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 0.9630177| 0.8127969| 1.141002|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.0999559| 0.9742155| 1.241925|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.1021850| 0.9823717| 1.236611|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.0085814| 0.8733324| 1.164776|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9270854| 0.7831753| 1.097439|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0259743| 0.9447378| 1.114196|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0086773| 0.9315874| 1.092146|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.0645768| 0.8808005| 1.286697|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0485580| 0.8727552| 1.259774|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 0.8846983| 0.4716478| 1.659482|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 0.9885168| 0.5345278| 1.828091|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.7311074| 0.9409720| 3.184721|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.4369791| 0.7806497| 2.645116|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.0222020| 0.6852916| 1.524748|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 0.7779664| 0.4756029| 1.272557|
|0-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |Low                |High           | 1.3833606| 0.6828544| 2.802481|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 1.3209500| 0.6487840| 2.689507|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.3281853| 0.5301512| 3.327496|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.4333333| 0.5585186| 3.678381|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.1028178| 0.8795875| 1.382702|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.9023763| 0.6958056| 1.170274|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.0134959| 0.9525520| 1.078339|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.0012259| 0.9350728| 1.072059|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.2320936| 1.0071304| 1.507307|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9557227| 0.7762759| 1.176651|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 0.9642876| 0.8454760| 1.099795|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 0.9197803| 0.8043492| 1.051777|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0246204| 0.7730470| 1.358064|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.1491247| 0.8800638| 1.500445|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0677570| 0.8619339| 1.322729|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.1112463| 0.8751047| 1.411109|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1278873| 1.0015513| 1.270159|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0921168| 0.9913679| 1.203104|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Low                |High           | 0.9476710| 0.6961376| 1.290090|
|0-6 months  |COHORTS        |GUATEMALA                    |Medium             |High           | 0.7909037| 0.5660979| 1.104983|
|0-6 months  |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |INDIA                        |Low                |High           | 1.0086974| 0.8566754| 1.187697|
|0-6 months  |COHORTS        |INDIA                        |Medium             |High           | 1.0227319| 0.8617191| 1.213830|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Low                |High           | 1.0796085| 0.9477181| 1.229854|
|0-6 months  |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.0895268| 0.9541991| 1.244047|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Low                |High           | 0.8527996| 0.6936762| 1.048425|
|0-6 months  |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.0021024| 0.7970545| 1.259900|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Low                |High           | 0.9669147| 0.8775686| 1.065357|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9913995| 0.9028657| 1.088615|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1915201| 0.9900636| 1.433969|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.1976280| 0.9879320| 1.451834|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Low                |High           | 1.8461538| 0.8613068| 3.957108|
|0-6 months  |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.3333333| 0.6110452| 2.909405|
|0-6 months  |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |INDIA                        |Low                |High           | 0.8949757| 0.5040457| 1.589105|
|0-6 months  |MAL-ED         |INDIA                        |Medium             |High           | 0.7944485| 0.4205095| 1.500914|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.2482309| 0.9559042| 1.629954|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.8954369| 0.6550985| 1.223949|
|0-6 months  |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |Low                |High           | 1.0161030| 0.9593035| 1.076266|
|0-6 months  |PROBIT         |BELARUS                      |Medium             |High           | 1.0131043| 0.9437600| 1.087544|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Low                |High           | 1.1675403| 0.8633737| 1.578865|
|0-6 months  |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.9820878| 0.7123324| 1.353998|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-CompFeed   |INDIA                        |Low                |High           | 1.1053250| 0.9515012| 1.284017|
|0-6 months  |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.1064758| 0.9100077| 1.345361|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Low                |High           | 0.9813000| 0.5540556| 1.738002|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.2593203| 0.7375318| 2.150263|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.1743920| 0.8852740| 1.557932|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.2282722| 0.9023179| 1.671975|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.0766159| 0.9769991| 1.186390|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0631819| 0.9841518| 1.148558|
|6-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9181482| 0.6081834| 1.386089|
|6-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.8736466| 0.5658293| 1.348920|
|6-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |INDIA                        |Low                |High           | 1.3673458| 0.9803947| 1.907022|
|6-24 months |COHORTS        |INDIA                        |Medium             |High           | 0.8981766| 0.6017570| 1.340610|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1880642| 0.9880269| 1.428601|
|6-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.1820398| 0.9895224| 1.412013|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.1639832| 0.9223833| 1.468865|
|6-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.0043906| 0.7684635| 1.312750|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0524334| 0.8967929| 1.235086|
|6-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0154758| 0.8707803| 1.184215|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.0241924| 0.8085037| 1.297421|
|6-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 0.9902613| 0.7872215| 1.245669|
|6-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5         |MALAWI                       |Low                |High           | 0.9464112| 0.4986270| 1.796321|
|6-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 0.9828215| 0.5182269| 1.863929|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.9459459| 0.7575571| 4.998575|
|6-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 1.7391304| 0.6852334| 4.413933|
|6-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.4478114| 0.7793310| 2.689689|
|6-24 months |MAL-ED         |INDIA                        |Medium             |High           | 0.7818182| 0.3493801| 1.749498|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 2.1099907| 1.3144077| 3.387123|
|6-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.7151386| 1.0367721| 2.837365|
|6-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.1246703| 0.5352675| 2.363086|
|6-24 months |PROBIT         |BELARUS                      |Medium             |High           | 0.9077641| 0.4033565| 2.042946|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.9849366| 1.2760384| 3.087660|
|6-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.1085266| 0.6646279| 1.848901|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 0.8925032| 0.7587246| 1.049870|
|6-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 0.8209454| 0.6292207| 1.071089|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.1078860| 0.7737792| 1.586255|
|6-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.1071901| 0.7775755| 1.576528|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0167967| 0.7676826| 1.346749|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.2435236| 0.9236152| 1.674237|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.6035881| 1.1690826| 2.199583|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.2300378| 0.9185024| 1.647239|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0392721| -0.0850862| 0.0065421|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0025165| -0.0272046| 0.0322376|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0241125| -0.0052698| 0.0534948|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0113805| -0.0730737| 0.0503126|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0021636| -0.0145608| 0.0188881|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0070609| -0.0408277| 0.0549495|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0085309| -0.0460648| 0.0290031|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0800886| -0.0160304| 0.1762076|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0278748| -0.1549582| 0.0992086|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.0460338| -0.0680155| 0.1600832|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0372093| -0.0540031| 0.1284218|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0002911| -0.0401741| 0.0407564|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0021530| -0.0113826| 0.0156886|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0197569| -0.0219815| 0.0614953|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0106544| -0.0442024| 0.0228935|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0315022| -0.0507124| 0.1137167|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0117758| -0.0278675| 0.0514191|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0186721| -0.0009865| 0.0383308|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | -0.0283973| -0.0810580| 0.0242633|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | -0.0018032| -0.0242926| 0.0206861|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0159396| -0.0003283| 0.0322076|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0269997| -0.0834408| 0.0294414|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0028346| -0.0169565| 0.0112873|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0168662|  0.0038360| 0.0298964|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0578231| -0.0271469| 0.1427932|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | -0.0480382| -0.1663501| 0.0702737|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0090366| -0.0286416| 0.0467148|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0036220| -0.0091722| 0.0164162|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0079639| -0.0383062| 0.0542341|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0194764| -0.0080999| 0.0470528|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0176418| -0.0489214| 0.0842050|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0191290| -0.0083590| 0.0466170|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0094040| -0.0028363| 0.0216442|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0123937| -0.0562441| 0.0314566|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0097366| -0.0166315| 0.0361047|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0338473|  0.0053410| 0.0623537|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0295248| -0.0491874| 0.1082369|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0009653| -0.0202335| 0.0221641|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0076216| -0.0582394| 0.0429963|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0058614| -0.0422880| 0.0305652|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0658397| -0.0173452| 0.1490246|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0288576| -0.0812767| 0.1389918|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0474338|  0.0185891| 0.0762785|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0000814| -0.0049575| 0.0051204|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0442683|  0.0067620| 0.0817745|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0334301| -0.0729935| 0.0061333|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0309118| -0.0484132| 0.1102369|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0116403| -0.0212975| 0.0445781|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0194290| -0.0013882| 0.0402462|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.1509711| -0.3421867| 0.0130029|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0074771| -0.0848696| 0.0919630|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0600822| -0.0160167| 0.1304813|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0192681| -0.1293258| 0.0800641|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0084078| -0.0587510| 0.0713066|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0227753| -0.1446828| 0.1657356|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.1067016| -0.6909247| 0.2756695|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.2504899| -0.1163128| 0.4967671|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0593855| -0.3679603| 0.1795832|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             |  0.1409786| -0.2887883| 0.4274329|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.1860465| -0.4198366| 0.5333827|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0008827| -0.1296567| 0.1163374|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0084783| -0.0459928| 0.0601127|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0562188| -0.0704377| 0.1678891|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0257000| -0.1119299| 0.0538428|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0668422| -0.1250950| 0.2260355|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0497550| -0.1333840| 0.2033013|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0798687| -0.0081246| 0.1601816|
|0-6 months  |COHORTS        |GUATEMALA                    |High               |NA             | -0.1415607| -0.4365963| 0.0928831|
|0-6 months  |COHORTS        |INDIA                        |High               |NA             | -0.0073214| -0.1029076| 0.0799807|
|0-6 months  |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0695570| -0.0040589| 0.1377756|
|0-6 months  |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0715806| -0.2324701| 0.0683061|
|0-6 months  |JiVitA-3       |BANGLADESH                   |High               |NA             | -0.0161279| -0.0996867| 0.0610818|
|0-6 months  |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.1562811|  0.0266860| 0.2686208|
|0-6 months  |MAL-ED         |BANGLADESH                   |High               |NA             |  0.2575758| -0.2285454| 0.5513444|
|0-6 months  |MAL-ED         |INDIA                        |High               |NA             | -0.1642236| -0.6484487| 0.1777624|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0351269| -0.1230402| 0.1710180|
|0-6 months  |PROBIT         |BELARUS                      |High               |NA             |  0.0145702| -0.0378217| 0.0643173|
|0-6 months  |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0307998| -0.1654745| 0.1940200|
|0-6 months  |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0886472| -0.0363174| 0.1985430|
|0-6 months  |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0945420| -0.3420179| 0.3890885|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.1368901| -0.0835253| 0.3124677|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0523963| -0.0182590| 0.1181490|
|6-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0961584| -0.4949821| 0.1962691|
|6-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0735482| -0.1480927| 0.2524009|
|6-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1269275|  0.0135718| 0.2272569|
|6-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0625543| -0.1199865| 0.2153437|
|6-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0058738| -0.1318660| 0.1268517|
|6-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0308904| -0.2577093| 0.1550233|
|6-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0758198| -0.6669097| 0.3056682|
|6-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.3450000| -0.2511462| 0.6570944|
|6-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.1013715| -0.3817356| 0.4155660|
|6-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.3606948|  0.1123669| 0.5395495|
|6-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0097386| -0.8155938| 0.4598915|
|6-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.2749997|  0.0072984| 0.4705102|
|6-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.1095369| -0.2560892| 0.0199166|
|6-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0868990| -0.1656747| 0.2847461|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0726254| -0.1573143| 0.2568799|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.2053140| -0.0479009| 0.3973421|
