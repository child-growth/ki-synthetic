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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |fage    | ever_wasted| n_cell|     n|
|:-----------|:-------------|:------------|:-------|-----------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |           0|    314|  1316|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |           1|     92|  1316|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |           0|    247|  1316|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |           1|     76|  1316|
|0-24 months |COHORTS       |GUATEMALA    |<32     |           0|    420|  1316|
|0-24 months |COHORTS       |GUATEMALA    |<32     |           1|    167|  1316|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |           0|    247|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |           1|    162|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |           0|    316|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |           1|    220|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |           0|   1187|  2926|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |           1|    794|  2926|
|0-24 months |LCNI-5        |MALAWI       |>=38    |           0|     19|    50|
|0-24 months |LCNI-5        |MALAWI       |>=38    |           1|      0|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |           0|      8|    50|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |           1|      0|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |           0|     23|    50|
|0-24 months |LCNI-5        |MALAWI       |<32     |           1|      0|    50|
|0-24 months |MAL-ED        |INDIA        |>=38    |           0|     37|   160|
|0-24 months |MAL-ED        |INDIA        |>=38    |           1|     24|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |           0|     23|   160|
|0-24 months |MAL-ED        |INDIA        |[32-38) |           1|     30|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |           0|     23|   160|
|0-24 months |MAL-ED        |INDIA        |<32     |           1|     23|   160|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |           0|     59|   133|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |           1|     25|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |           0|     22|   133|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |           1|      8|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |           0|     12|   133|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |           1|      7|   133|
|0-24 months |MAL-ED        |PERU         |>=38    |           0|     43|   107|
|0-24 months |MAL-ED        |PERU         |>=38    |           1|      4|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |           0|     25|   107|
|0-24 months |MAL-ED        |PERU         |[32-38) |           1|      2|   107|
|0-24 months |MAL-ED        |PERU         |<32     |           0|     30|   107|
|0-24 months |MAL-ED        |PERU         |<32     |           1|      3|   107|
|0-24 months |MAL-ED        |NEPAL        |>=38    |           0|     25|    87|
|0-24 months |MAL-ED        |NEPAL        |>=38    |           1|     14|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |           0|     17|    87|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |           1|     14|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |           0|     12|    87|
|0-24 months |MAL-ED        |NEPAL        |<32     |           1|      5|    87|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |           0|     35|    69|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |           1|      1|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |           0|     13|    69|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |           1|      2|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |           0|     13|    69|
|0-24 months |MAL-ED        |BRAZIL       |<32     |           1|      5|    69|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |           0|     45|    97|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |           1|      8|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |           0|     20|    97|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |           1|      6|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |           0|     16|    97|
|0-24 months |MAL-ED        |TANZANIA     |<32     |           1|      2|    97|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           0|     66|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           1|     12|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           0|     23|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      5|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |           0|      4|   115|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |           1|      5|   115|
|0-24 months |PROBIT        |BELARUS      |>=38    |           0|    587| 16269|
|0-24 months |PROBIT        |BELARUS      |>=38    |           1|    192| 16269|
|0-24 months |PROBIT        |BELARUS      |[32-38) |           0|   1898| 16269|
|0-24 months |PROBIT        |BELARUS      |[32-38) |           1|    647| 16269|
|0-24 months |PROBIT        |BELARUS      |<32     |           0|   9620| 16269|
|0-24 months |PROBIT        |BELARUS      |<32     |           1|   3325| 16269|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |           0|     45|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |           1|     18|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |           0|    110|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |           1|     89|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |           0|    730|  1513|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |           1|    521|  1513|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |           0|     41|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |           1|     34|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           0|     52|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           1|     44|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |           0|    128|   418|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |           1|    119|   418|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |           0|    256|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |>=38    |           1|     59|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |           0|    206|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |[32-38) |           1|     48|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |           0|    365|  1038|
|0-6 months  |COHORTS       |GUATEMALA    |<32     |           1|    104|  1038|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |           0|    313|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |           1|     96|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |           0|    403|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |           1|    133|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |           0|   1522|  2925|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |           1|    458|  2925|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |           0|      9|    19|
|0-6 months  |LCNI-5        |MALAWI       |>=38    |           1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |           0|      2|    19|
|0-6 months  |LCNI-5        |MALAWI       |[32-38) |           1|      0|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |           0|      8|    19|
|0-6 months  |LCNI-5        |MALAWI       |<32     |           1|      0|    19|
|0-6 months  |MAL-ED        |INDIA        |>=38    |           0|     44|   160|
|0-6 months  |MAL-ED        |INDIA        |>=38    |           1|     17|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |           0|     33|   160|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |           1|     20|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |           0|     31|   160|
|0-6 months  |MAL-ED        |INDIA        |<32     |           1|     15|   160|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |           0|     68|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |           1|     16|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |           0|     25|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |           1|      5|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |           0|     14|   133|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |           1|      5|   133|
|0-6 months  |MAL-ED        |PERU         |>=38    |           0|     46|   107|
|0-6 months  |MAL-ED        |PERU         |>=38    |           1|      1|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |           0|     26|   107|
|0-6 months  |MAL-ED        |PERU         |[32-38) |           1|      1|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |           0|     30|   107|
|0-6 months  |MAL-ED        |PERU         |<32     |           1|      3|   107|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |           0|     29|    87|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |           1|     10|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |           0|     22|    87|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |           1|      9|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |           0|     14|    87|
|0-6 months  |MAL-ED        |NEPAL        |<32     |           1|      3|    87|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |           0|     35|    69|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |           1|      1|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |           0|     14|    69|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |           1|      1|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |           0|     14|    69|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |           1|      4|    69|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |           0|     52|    97|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |           1|      1|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |           0|     23|    97|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |           1|      3|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |           0|     18|    97|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |           1|      0|    97|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |           0|     72|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |           1|      6|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |           0|     26|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      2|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |           0|      5|   115|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |           1|      4|   115|
|0-6 months  |PROBIT        |BELARUS      |>=38    |           0|    592| 16266|
|0-6 months  |PROBIT        |BELARUS      |>=38    |           1|    187| 16266|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |           0|   1917| 16266|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |           1|    628| 16266|
|0-6 months  |PROBIT        |BELARUS      |<32     |           0|   9685| 16266|
|0-6 months  |PROBIT        |BELARUS      |<32     |           1|   3257| 16266|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |           0|     53|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |>=38    |           1|     10|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |           0|    154|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |[32-38) |           1|     45|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |           0|    967|  1505|
|0-6 months  |SAS-CompFeed  |INDIA        |<32     |           1|    276|  1505|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |           0|     64|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |>=38    |           1|     11|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |           0|     78|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |[32-38) |           1|     18|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |           0|    198|   418|
|0-6 months  |SAS-FoodSuppl |INDIA        |<32     |           1|     49|   418|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |           0|    321|  1191|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |           1|     39|  1191|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |           0|    260|  1191|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |           1|     36|  1191|
|6-24 months |COHORTS       |GUATEMALA    |<32     |           0|    461|  1191|
|6-24 months |COHORTS       |GUATEMALA    |<32     |           1|     74|  1191|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |           0|    277|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |           1|     96|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |           0|    354|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |           1|    130|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |           0|   1354|  2699|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |           1|    488|  2699|
|6-24 months |LCNI-5        |MALAWI       |>=38    |           0|     19|    49|
|6-24 months |LCNI-5        |MALAWI       |>=38    |           1|      0|    49|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |           0|      8|    49|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |           1|      0|    49|
|6-24 months |LCNI-5        |MALAWI       |<32     |           0|     22|    49|
|6-24 months |LCNI-5        |MALAWI       |<32     |           1|      0|    49|
|6-24 months |MAL-ED        |INDIA        |>=38    |           0|     45|   153|
|6-24 months |MAL-ED        |INDIA        |>=38    |           1|     13|   153|
|6-24 months |MAL-ED        |INDIA        |[32-38) |           0|     31|   153|
|6-24 months |MAL-ED        |INDIA        |[32-38) |           1|     20|   153|
|6-24 months |MAL-ED        |INDIA        |<32     |           0|     29|   153|
|6-24 months |MAL-ED        |INDIA        |<32     |           1|     15|   153|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |           0|     61|   122|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |           1|     16|   122|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |           0|     26|   122|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |           1|      3|   122|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |           0|     14|   122|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |           1|      2|   122|
|6-24 months |MAL-ED        |PERU         |>=38    |           0|     38|    97|
|6-24 months |MAL-ED        |PERU         |>=38    |           1|      3|    97|
|6-24 months |MAL-ED        |PERU         |[32-38) |           0|     25|    97|
|6-24 months |MAL-ED        |PERU         |[32-38) |           1|      2|    97|
|6-24 months |MAL-ED        |PERU         |<32     |           0|     29|    97|
|6-24 months |MAL-ED        |PERU         |<32     |           1|      0|    97|
|6-24 months |MAL-ED        |NEPAL        |>=38    |           0|     31|    85|
|6-24 months |MAL-ED        |NEPAL        |>=38    |           1|      6|    85|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |           0|     24|    85|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |           1|      7|    85|
|6-24 months |MAL-ED        |NEPAL        |<32     |           0|     13|    85|
|6-24 months |MAL-ED        |NEPAL        |<32     |           1|      4|    85|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |           0|     34|    64|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |           1|      0|    64|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |           0|     13|    64|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |           1|      1|    64|
|6-24 months |MAL-ED        |BRAZIL       |<32     |           0|     15|    64|
|6-24 months |MAL-ED        |BRAZIL       |<32     |           1|      1|    64|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |           0|     44|    93|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |           1|      7|    93|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |           0|     19|    93|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |           1|      6|    93|
|6-24 months |MAL-ED        |TANZANIA     |<32     |           0|     15|    93|
|6-24 months |MAL-ED        |TANZANIA     |<32     |           1|      2|    93|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           0|     67|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |           1|      6|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           0|     21|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |           1|      4|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |           0|      4|   105|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |           1|      3|   105|
|6-24 months |PROBIT        |BELARUS      |>=38    |           0|    761| 15985|
|6-24 months |PROBIT        |BELARUS      |>=38    |           1|      5| 15985|
|6-24 months |PROBIT        |BELARUS      |[32-38) |           0|   2476| 15985|
|6-24 months |PROBIT        |BELARUS      |[32-38) |           1|     26| 15985|
|6-24 months |PROBIT        |BELARUS      |<32     |           0|  12610| 15985|
|6-24 months |PROBIT        |BELARUS      |<32     |           1|    107| 15985|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |           0|     43|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |           1|     13|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |           0|    121|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |           1|     62|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |           0|    800|  1389|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |           1|    350|  1389|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |           0|     47|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |           1|     26|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           0|     62|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |           1|     30|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |           0|    150|   402|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |           1|     87|   402|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


