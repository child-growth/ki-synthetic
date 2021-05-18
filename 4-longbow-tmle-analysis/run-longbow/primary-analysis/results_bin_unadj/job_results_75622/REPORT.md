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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mhtcm        | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:------------|-----------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |           0|   3704|  7405|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |           1|   1790|  7405|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |           0|    448|  7405|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |           1|    244|  7405|
|0-24 months |COHORTS        |INDIA        |<151 cm      |           0|    808|  7405|
|0-24 months |COHORTS        |INDIA        |<151 cm      |           1|    411|  7405|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           0|    102|  1255|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           1|     35|  1255|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           0|    182|  1255|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           1|     53|  1255|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |           0|    641|  1255|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |           1|    242|  1255|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           0|    425|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    267|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           0|    470|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           1|    268|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           0|    921|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           1|    693|  3044|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|     51|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      1|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|     38|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      7|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|    140|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|     13|   250|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           0|   2188|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           1|    640|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           0|    214|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           1|     69|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           0|     83|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           1|     32|  3226|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|   3339| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|   1193| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|   4850| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|   1660| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           0|  11627| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           1|   4039| 26708|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |           0|   1103|  2520|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |           1|    845|  2520|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |           0|    201|  2520|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |           1|    156|  2520|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |           0|    114|  2520|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |           1|    101|  2520|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |           0|    452|   836|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |           1|     40|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |           0|    159|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |           1|     13|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |           0|    158|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |           1|     14|   836|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |           0|     36|   247|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |           1|     27|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |           0|     32|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |           1|     27|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |           0|     61|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |           1|     64|   247|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           0|     25|   260|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           1|     14|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           0|     40|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           1|     18|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           0|    111|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           1|     52|   260|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |           0|     61|   298|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |           1|      9|   298|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |           0|     56|   298|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |           1|      2|   298|
|0-24 months |MAL-ED         |PERU         |<151 cm      |           0|    156|   298|
|0-24 months |MAL-ED         |PERU         |<151 cm      |           1|     14|   298|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |           0|     33|   240|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |           1|     11|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |           0|     41|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |           1|     19|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |           0|     92|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |           1|     44|   240|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           0|    100|   231|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           1|     10|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           0|     45|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           1|      4|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |           0|     66|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |           1|      6|   231|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           0|    129|   256|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           1|     20|   256|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           0|     39|   256|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           1|      5|   256|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |           0|     52|   256|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |           1|     11|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|    172|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     42|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|     29|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      9|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|     29|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|      7|   288|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     61|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     53|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     80|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     64|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           0|    185|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           1|    181|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|    103|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|     47|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|    121|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|     65|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|    283|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|    138|   757|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |           0|   9546| 13803|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |           1|   3710| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |           0|    287| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |           1|    114| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |           0|     99| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |           1|     47| 13803|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           0|     91|   668|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           1|     43|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           0|    115|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           1|     65|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           0|    228|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           1|    126|   668|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           0|    378|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           1|    242|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           0|    158|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           1|    145|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           0|    334|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           1|    233|  1490|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     43|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|     41|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     63|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|     51|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|    113|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|    105|   416|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|   1172|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    348|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|    376|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|    119|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|    268|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     94|  2377|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|   5778|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|   1872|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|   1086|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|    335|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|    415|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|    148|  9634|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |           0|   3949|  7128|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |           1|   1320|  7128|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |           0|    495|  7128|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |           1|    180|  7128|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |           0|    888|  7128|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |           1|    296|  7128|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |           0|     88|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |           1|     26|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |           0|    165|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |           1|     32|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |           0|    571|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |           1|    148|  1030|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |           0|    525|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    167|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |           0|    573|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |           1|    165|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |           0|   1228|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |           1|    385|  3043|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|     47|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      0|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|     40|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      2|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|    135|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|      6|   230|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|   3680| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|    830| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|   5384| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|   1108| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |           0|  12865| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |           1|   2745| 26612|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |           0|   1203|  2130|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |           1|    448|  2130|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |           0|    209|  2130|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |           1|     84|  2130|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |           0|    132|  2130|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |           1|     54|  2130|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |           0|    151|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |           1|      2|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |           0|     57|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |           1|      1|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |           0|     59|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |           1|      1|   271|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |           0|     42|   247|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |           1|     21|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |           0|     40|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |           1|     19|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |           0|     85|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |           1|     40|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |           0|     30|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |           1|      9|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |           0|     44|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |           1|     14|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |           0|    128|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |           1|     35|   260|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |           0|     65|   298|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |           1|      5|   298|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |           0|     57|   298|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |           1|      1|   298|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |           0|    165|   298|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |           1|      5|   298|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |           0|     37|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |           1|      7|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |           0|     48|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |           1|     12|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |           0|    107|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |           1|     29|   240|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |           0|    103|   231|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |           1|      7|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |           0|     45|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |           1|      4|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |           0|     68|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |           1|      4|   231|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |           0|    138|   256|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |           1|     11|   256|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |           0|     44|   256|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |           1|      0|   256|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |           0|     61|   256|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |           1|      2|   256|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|    192|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     22|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|     33|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      5|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|     32|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|      4|   288|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     77|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     36|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     98|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     46|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |           0|    225|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |           1|    140|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|    114|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|     36|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|    138|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|     48|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|    310|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|    111|   757|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |           0|   9623| 13803|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |           1|   3633| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |           0|    290| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |           1|    111| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |           0|     99| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |           1|     47| 13803|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |           0|     98|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |           1|     36|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |           0|    134|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |           1|     46|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |           0|    263|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |           1|     91|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |           0|    493|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |           1|    122|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |           0|    216|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |           1|     87|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |           0|    448|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |           1|    116|  1482|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     68|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     94|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|     20|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|    176|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|     42|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|   1310|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    210|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|    434|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|     61|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|    304|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     58|  2377|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|   6244|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|   1375|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|   1164|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|    251|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|    452|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|    110|  9596|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |           0|   4507|  6941|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |           1|    615|  6941|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |           0|    573|  6941|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |           1|     80|  6941|
|6-24 months |COHORTS        |INDIA        |<151 cm      |           0|   1010|  6941|
|6-24 months |COHORTS        |INDIA        |<151 cm      |           1|    156|  6941|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           0|    109|  1135|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |           1|     12|  1135|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           0|    184|  1135|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |           1|     25|  1135|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |           0|    693|  1135|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |           1|    112|  1135|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           0|    488|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |           1|    151|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           0|    531|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |           1|    149|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           0|   1041|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |           1|    448|  2808|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           0|     45|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |           1|      1|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           0|     35|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |           1|      5|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           0|    124|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |           1|      9|   219|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           0|   2188|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |           1|    640|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           0|    214|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |           1|     69|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           0|     83|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |           1|     32|  3226|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           0|   2501| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |           1|    472| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           0|   3559| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |           1|    707| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           0|   8304| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |           1|   1635| 17178|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |           0|   1264|  2365|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |           1|    564|  2365|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |           0|    241|  2365|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |           1|     93|  2365|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |           0|    128|  2365|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |           1|     75|  2365|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |           0|    443|   823|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |           1|     38|   823|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |           0|    160|   823|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |           1|     12|   823|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |           0|    156|   823|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |           1|     14|   823|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |           0|     48|   232|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |           1|     12|   232|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |           0|     39|   232|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |           1|     15|   232|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |           0|     82|   232|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |           1|     36|   232|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           0|     29|   237|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |           1|      6|   237|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           0|     47|   237|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |           1|      6|   237|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           0|    120|   237|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |           1|     29|   237|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |           0|     61|   266|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |           1|      5|   266|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |           0|     51|   266|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |           1|      1|   266|
|6-24 months |MAL-ED         |PERU         |<151 cm      |           0|    138|   266|
|6-24 months |MAL-ED         |PERU         |<151 cm      |           1|     10|   266|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |           0|     35|   235|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |           1|      8|   235|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |           0|     50|   235|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |           1|      8|   235|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |           0|    114|   235|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |           1|     20|   235|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           0|     93|   206|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |           1|      3|   206|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           0|     41|   206|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |           1|      1|   206|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |           0|     66|   206|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |           1|      2|   206|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           0|    131|   241|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |           1|     13|   241|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           0|     36|   241|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |           1|      5|   241|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |           0|     46|   241|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |           1|     10|   241|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           0|    161|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |           1|     23|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           0|     29|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |           1|      6|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           0|     25|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |           1|      6|   250|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           0|     64|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |           1|     30|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           0|     95|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |           1|     33|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           0|    224|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |           1|     96|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           0|    130|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |           1|     17|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           0|    147|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |           1|     28|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           0|    356|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |           1|     51|   729|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |           0|  13119| 13786|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |           1|    120| 13786|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |           0|    396| 13786|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |           1|      5| 13786|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |           0|    146| 13786|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |           1|      0| 13786|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           0|    102|   598|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |           1|     14|   598|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           0|    131|   598|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |           1|     31|   598|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           0|    271|   598|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |           1|     49|   598|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           0|    399|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |           1|    167|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           0|    181|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |           1|     98|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           0|    367|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |           1|    157|  1369|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           0|     53|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |           1|     28|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           0|     72|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |           1|     37|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           0|    132|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |           1|     78|   400|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           0|   1095|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |           1|    191|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           0|    347|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |           1|     80|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           0|    236|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |           1|     51|  2000|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           0|   6052|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |           1|    657|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           0|   1154|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |           1|    119|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           0|    458|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |           1|     47|  8487|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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


