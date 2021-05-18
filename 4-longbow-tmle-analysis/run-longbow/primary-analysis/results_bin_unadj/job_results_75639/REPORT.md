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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mhtcm        | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |            0|   4924|  7405|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |            1|    570|  7405|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |            0|    614|  7405|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |            1|     78|  7405|
|0-24 months |COHORTS        |INDIA        |<151 cm      |            0|   1091|  7405|
|0-24 months |COHORTS        |INDIA        |<151 cm      |            1|    128|  7405|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            0|    126|  1255|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            1|     11|  1255|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            0|    218|  1255|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            1|     17|  1255|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |            0|    815|  1255|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |            1|     68|  1255|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    601|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            1|     91|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    650|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            1|     88|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            0|   1411|  3044|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            1|    203|  3044|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     52|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|      0|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     45|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|      0|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|    152|   250|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|      1|   250|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            0|   2695|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            1|    133|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            0|    264|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            1|     19|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            0|    107|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            1|      8|  3226|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   4239| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|    293| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   6139| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|    371| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            0|  14704| 26708|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            1|    962| 26708|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |            0|   1604|  2520|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |            1|    344|  2520|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |            0|    291|  2520|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |            1|     66|  2520|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |            0|    177|  2520|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |            1|     38|  2520|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |            0|    486|   836|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |            1|      6|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |            0|    170|   836|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |            1|      2|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |            0|    172|   836|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |            1|      0|   836|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |            0|     57|   247|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |            1|      6|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |            0|     49|   247|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |            1|     10|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |            0|    115|   247|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |            1|     10|   247|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     36|   260|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            1|      3|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     54|   260|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            1|      4|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            0|    151|   260|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            1|     12|   260|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |            0|     67|   298|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |            1|      3|   298|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |            0|     58|   298|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |            1|      0|   298|
|0-24 months |MAL-ED         |PERU         |<151 cm      |            0|    169|   298|
|0-24 months |MAL-ED         |PERU         |<151 cm      |            1|      1|   298|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |            0|     42|   240|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |            0|     58|   240|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |            1|      2|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |            0|    131|   240|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |            1|      5|   240|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            0|    109|   231|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            1|      1|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            0|     48|   231|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            1|      1|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |            0|     70|   231|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |            1|      2|   231|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            0|    144|   256|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            1|      5|   256|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            0|     44|   256|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            1|      0|   256|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |            0|     59|   256|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |            1|      4|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|    202|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|     12|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     37|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|      1|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|     35|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|      1|   288|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|     96|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|     18|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|    125|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|     19|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            0|    304|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            1|     62|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|    138|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|     12|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|    169|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|     17|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    384|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|     37|   757|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |            0|  12102| 13803|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |            1|   1154| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |            0|    365| 13803|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |            1|     36| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |            0|    126| 13803|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |            1|     20| 13803|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            0|    125|   668|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            1|      9|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            0|    169|   668|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            1|     11|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            0|    334|   668|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            1|     20|   668|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    535|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            1|     85|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            0|    257|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            1|     46|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            0|    478|  1490|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            1|     89|  1490|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     71|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|     13|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|     97|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|     17|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|    177|   416|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|     41|   416|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|   1417|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|    103|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    463|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|     32|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    339|  2377|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|     23|  2377|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   6930|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|    720|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|   1286|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|    135|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    507|  9634|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|     56|  9634|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |            0|   4883|  7128|
|0-6 months  |COHORTS        |INDIA        |>=155 cm     |            1|    386|  7128|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |            0|    621|  7128|
|0-6 months  |COHORTS        |INDIA        |[151-155) cm |            1|     54|  7128|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |            0|   1093|  7128|
|0-6 months  |COHORTS        |INDIA        |<151 cm      |            1|     91|  7128|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |            0|    103|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |>=155 cm     |            1|     11|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |            0|    184|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |[151-155) cm |            1|     13|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |            0|    676|  1030|
|0-6 months  |COHORTS        |GUATEMALA    |<151 cm      |            1|     43|  1030|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    636|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |            1|     56|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    682|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |            1|     56|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |            0|   1514|  3043|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |            1|     99|  3043|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     47|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|      0|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     42|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|      0|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|    140|   230|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|      1|   230|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   4316| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|    194| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   6241| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|    251| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |            0|  14958| 26612|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |            1|    652| 26612|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |            0|   1498|  2130|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |            1|    153|  2130|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |            0|    266|  2130|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |            1|     27|  2130|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |            0|    171|  2130|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |            1|     15|  2130|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |            0|    153|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=155 cm     |            1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |            0|     58|   271|
|0-6 months  |LCNI-5         |MALAWI       |[151-155) cm |            1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |            0|     60|   271|
|0-6 months  |LCNI-5         |MALAWI       |<151 cm      |            1|      0|   271|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |            0|     57|   247|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |            1|      6|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |            0|     52|   247|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |            1|      7|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |            0|    117|   247|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |            1|      8|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     36|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |            1|      3|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     56|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |            1|      2|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |            0|    154|   260|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |            1|      9|   260|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |            0|     69|   298|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |            1|      1|   298|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |            0|     58|   298|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |            1|      0|   298|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |            0|    170|   298|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |            1|      0|   298|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |            0|     42|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |            1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |            0|     58|   240|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |            1|      2|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |            0|    133|   240|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |            1|      3|   240|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |            0|    109|   231|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |            1|      1|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |            0|     49|   231|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |            1|      0|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |            0|     70|   231|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |            1|      2|   231|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |            0|    145|   256|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |            1|      4|   256|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |            0|     44|   256|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |            1|      0|   256|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |            0|     63|   256|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |            1|      0|   256|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|    210|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|      4|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     38|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|      0|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|     35|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|      1|   288|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|    105|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|      8|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|    137|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|      7|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |            0|    324|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |            1|     41|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|    139|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|     11|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|    174|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|     12|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    394|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|     27|   757|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |            0|  12111| 13803|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |            1|   1145| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |            0|    366| 13803|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |            1|     35| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |            0|    126| 13803|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |            1|     20| 13803|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |            0|    127|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |            1|      7|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |            0|    174|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |            1|      6|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |            0|    340|   668|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |            1|     14|   668|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    576|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |            1|     39|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |            0|    278|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |            1|     25|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |            0|    530|  1482|
|0-6 months  |SAS-CompFeed   |INDIA        |<151 cm      |            1|     34|  1482|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     80|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|      4|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|    106|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|      8|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|    210|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|      8|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|   1465|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|     55|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    482|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|     13|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    351|  2377|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|     11|  2377|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   7100|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|    519|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|   1323|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|     92|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    528|  9596|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|     34|  9596|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |            0|   4931|  6941|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |            1|    191|  6941|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |            0|    629|  6941|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |            1|     24|  6941|
|6-24 months |COHORTS        |INDIA        |<151 cm      |            0|   1126|  6941|
|6-24 months |COHORTS        |INDIA        |<151 cm      |            1|     40|  6941|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            0|    121|  1135|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |            1|      0|  1135|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            0|    205|  1135|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |            1|      4|  1135|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |            0|    780|  1135|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |            1|     25|  1135|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            0|    599|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |            1|     40|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            0|    645|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |            1|     35|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            0|   1376|  2808|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |            1|    113|  2808|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            0|     46|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |            1|      0|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            0|     40|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |            1|      0|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            0|    133|   219|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |            1|      0|   219|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            0|   2695|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |            1|    133|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            0|    264|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |            1|     19|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            0|    107|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |            1|      8|  3226|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            0|   2868| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |            1|    105| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            0|   4143| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |            1|    123| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            0|   9619| 17178|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |            1|    320| 17178|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |            0|   1621|  2365|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |            1|    207|  2365|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |            0|    295|  2365|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |            1|     39|  2365|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |            0|    180|  2365|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |            1|     23|  2365|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |            0|    475|   823|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |            1|      6|   823|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |            0|    170|   823|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |            1|      2|   823|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |            0|    170|   823|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |            1|      0|   823|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |            0|     59|   232|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |            1|      1|   232|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |            0|     51|   232|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |            1|      3|   232|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |            0|    116|   232|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |            1|      2|   232|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            0|     35|   237|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |            1|      0|   237|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            0|     51|   237|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |            1|      2|   237|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            0|    146|   237|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |            1|      3|   237|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |            0|     64|   266|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |            1|      2|   266|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |            0|     52|   266|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |            1|      0|   266|
|6-24 months |MAL-ED         |PERU         |<151 cm      |            0|    147|   266|
|6-24 months |MAL-ED         |PERU         |<151 cm      |            1|      1|   266|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |            0|     43|   235|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |            0|     58|   235|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |            0|    132|   235|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |            1|      2|   235|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            0|     96|   206|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |            1|      0|   206|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            0|     41|   206|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |            1|      1|   206|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |            0|     68|   206|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |            1|      0|   206|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            0|    143|   241|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |            1|      1|   241|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            0|     41|   241|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |            1|      0|   241|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |            0|     52|   241|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |            1|      4|   241|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            0|    176|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |            1|      8|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            0|     34|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |            1|      1|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            0|     31|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |            1|      0|   250|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            0|     83|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |            1|     11|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            0|    116|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |            1|     12|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            0|    295|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |            1|     25|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            0|    145|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |            1|      2|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            0|    168|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |            1|      7|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            0|    396|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |            1|     11|   729|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |            0|  13230| 13786|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |            1|      9| 13786|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |            0|    400| 13786|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |            1|      1| 13786|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |            0|    146| 13786|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |            1|      0| 13786|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            0|    114|   598|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |            1|      2|   598|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            0|    157|   598|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |            1|      5|   598|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            0|    314|   598|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |            1|      6|   598|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            0|    516|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |            1|     50|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            0|    256|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |            1|     23|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            0|    464|  1369|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |            1|     60|  1369|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            0|     72|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |            1|      9|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            0|    100|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |            1|      9|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            0|    177|   400|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |            1|     33|   400|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            0|   1235|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |            1|     51|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            0|    407|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |            1|     20|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            0|    275|  2000|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |            1|     12|  2000|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            0|   6494|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |            1|    215|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            0|   1227|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |            1|     46|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            0|    482|  8487|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |            1|     23|  8487|


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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


