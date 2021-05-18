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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |sex    | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |            0|    144|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Female |            1|     43|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |            0|    137|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Male   |            1|     49|   373|
|0-24 months |CMIN           |BANGLADESH   |Female |            0|    101|   272|
|0-24 months |CMIN           |BANGLADESH   |Female |            1|     18|   272|
|0-24 months |CMIN           |BANGLADESH   |Male   |            0|    129|   272|
|0-24 months |CMIN           |BANGLADESH   |Male   |            1|     24|   272|
|0-24 months |COHORTS        |INDIA        |Female |            0|   3185|  7405|
|0-24 months |COHORTS        |INDIA        |Female |            1|    366|  7405|
|0-24 months |COHORTS        |INDIA        |Male   |            0|   3444|  7405|
|0-24 months |COHORTS        |INDIA        |Male   |            1|    410|  7405|
|0-24 months |COHORTS        |GUATEMALA    |Female |            0|    599|  1349|
|0-24 months |COHORTS        |GUATEMALA    |Female |            1|     36|  1349|
|0-24 months |COHORTS        |GUATEMALA    |Male   |            0|    653|  1349|
|0-24 months |COHORTS        |GUATEMALA    |Male   |            1|     61|  1349|
|0-24 months |COHORTS        |PHILIPPINES  |Female |            0|   1274|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Female |            1|    157|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |            0|   1389|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Male   |            1|    225|  3045|
|0-24 months |CONTENT        |PERU         |Female |            0|    109|   215|
|0-24 months |CONTENT        |PERU         |Female |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |Male   |            0|    105|   215|
|0-24 months |CONTENT        |PERU         |Male   |            1|      1|   215|
|0-24 months |EE             |PAKISTAN     |Female |            0|    153|   380|
|0-24 months |EE             |PAKISTAN     |Female |            1|     32|   380|
|0-24 months |EE             |PAKISTAN     |Male   |            0|    147|   380|
|0-24 months |EE             |PAKISTAN     |Male   |            1|     48|   380|
|0-24 months |GMS-Nepal      |NEPAL        |Female |            0|    239|   686|
|0-24 months |GMS-Nepal      |NEPAL        |Female |            1|     83|   686|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |            0|    270|   686|
|0-24 months |GMS-Nepal      |NEPAL        |Male   |            1|     94|   686|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |            0|    162|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |Female |            1|      0|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |            0|    150|   315|
|0-24 months |Guatemala BSC  |GUATEMALA    |Male   |            1|      3|   315|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |            0|   1565|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Female |            1|     60|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |            0|   1536|  3266|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |            1|    105|  3266|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |            0|  12463| 26956|
|0-24 months |JiVitA-3       |BANGLADESH   |Female |            1|    771| 26956|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |            0|  12848| 26956|
|0-24 months |JiVitA-3       |BANGLADESH   |Male   |            1|    874| 26956|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |            0|   2579|  5443|
|0-24 months |JiVitA-4       |BANGLADESH   |Female |            1|    146|  5443|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |            0|   2521|  5443|
|0-24 months |JiVitA-4       |BANGLADESH   |Male   |            1|    197|  5443|
|0-24 months |Keneba         |GAMBIA       |Female |            0|   1198|  2920|
|0-24 months |Keneba         |GAMBIA       |Female |            1|    213|  2920|
|0-24 months |Keneba         |GAMBIA       |Male   |            0|   1196|  2920|
|0-24 months |Keneba         |GAMBIA       |Male   |            1|    313|  2920|
|0-24 months |LCNI-5         |MALAWI       |Female |            0|    418|   840|
|0-24 months |LCNI-5         |MALAWI       |Female |            1|      3|   840|
|0-24 months |LCNI-5         |MALAWI       |Male   |            0|    414|   840|
|0-24 months |LCNI-5         |MALAWI       |Male   |            1|      5|   840|
|0-24 months |MAL-ED         |INDIA        |Female |            0|    124|   251|
|0-24 months |MAL-ED         |INDIA        |Female |            1|     14|   251|
|0-24 months |MAL-ED         |INDIA        |Male   |            0|    101|   251|
|0-24 months |MAL-ED         |INDIA        |Male   |            1|     12|   251|
|0-24 months |MAL-ED         |BANGLADESH   |Female |            0|    121|   263|
|0-24 months |MAL-ED         |BANGLADESH   |Female |            1|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |            0|    121|   263|
|0-24 months |MAL-ED         |BANGLADESH   |Male   |            1|      8|   263|
|0-24 months |MAL-ED         |PERU         |Female |            0|    141|   302|
|0-24 months |MAL-ED         |PERU         |Female |            1|      1|   302|
|0-24 months |MAL-ED         |PERU         |Male   |            0|    157|   302|
|0-24 months |MAL-ED         |PERU         |Male   |            1|      3|   302|
|0-24 months |MAL-ED         |NEPAL        |Female |            0|    107|   240|
|0-24 months |MAL-ED         |NEPAL        |Female |            1|      3|   240|
|0-24 months |MAL-ED         |NEPAL        |Male   |            0|    124|   240|
|0-24 months |MAL-ED         |NEPAL        |Male   |            1|      6|   240|
|0-24 months |MAL-ED         |BRAZIL       |Female |            0|    112|   233|
|0-24 months |MAL-ED         |BRAZIL       |Female |            1|      1|   233|
|0-24 months |MAL-ED         |BRAZIL       |Male   |            0|    117|   233|
|0-24 months |MAL-ED         |BRAZIL       |Male   |            1|      3|   233|
|0-24 months |MAL-ED         |TANZANIA     |Female |            0|    129|   261|
|0-24 months |MAL-ED         |TANZANIA     |Female |            1|      3|   261|
|0-24 months |MAL-ED         |TANZANIA     |Male   |            0|    123|   261|
|0-24 months |MAL-ED         |TANZANIA     |Male   |            1|      6|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |            0|    152|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Female |            1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |            0|    144|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Male   |            1|     10|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |            0|    257|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Female |            1|     39|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |            0|    268|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Male   |            1|     60|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |            0|    346|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Female |            1|     35|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |            0|    346|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Male   |            1|     31|   758|
|0-24 months |PROBIT         |BELARUS      |Female |            0|   7579| 16898|
|0-24 months |PROBIT         |BELARUS      |Female |            1|    575| 16898|
|0-24 months |PROBIT         |BELARUS      |Male   |            0|   7994| 16898|
|0-24 months |PROBIT         |BELARUS      |Male   |            1|    750| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |Female |            0|    317|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Female |            1|     15|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |            0|    341|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Male   |            1|     27|   700|
|0-24 months |ResPak         |PAKISTAN     |Female |            0|    110|   284|
|0-24 months |ResPak         |PAKISTAN     |Female |            1|     26|   284|
|0-24 months |ResPak         |PAKISTAN     |Male   |            0|    105|   284|
|0-24 months |ResPak         |PAKISTAN     |Male   |            1|     43|   284|
|0-24 months |SAS-CompFeed   |INDIA        |Female |            0|    591|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |Female |            1|     95|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |            0|    699|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |Male   |            1|    128|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |            0|    187|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Female |            1|     36|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |            0|    160|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Male   |            1|     35|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |            0|   1118|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Female |            1|     66|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |            0|   1120|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Male   |            1|     92|  2396|
|0-24 months |Vellore Crypto |INDIA        |Female |            0|    123|   410|
|0-24 months |Vellore Crypto |INDIA        |Female |            1|     62|   410|
|0-24 months |Vellore Crypto |INDIA        |Male   |            0|    147|   410|
|0-24 months |Vellore Crypto |INDIA        |Male   |            1|     78|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |            0|   6170| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Female |            1|    605| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |            0|   6490| 13946|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Male   |            1|    681| 13946|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |            0|    148|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Female |            1|     37|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |            0|    153|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Male   |            1|     30|   368|
|0-6 months  |CMIN           |BANGLADESH   |Female |            0|    113|   272|
|0-6 months  |CMIN           |BANGLADESH   |Female |            1|      6|   272|
|0-6 months  |CMIN           |BANGLADESH   |Male   |            0|    145|   272|
|0-6 months  |CMIN           |BANGLADESH   |Male   |            1|      8|   272|
|0-6 months  |COHORTS        |INDIA        |Female |            0|   3197|  7128|
|0-6 months  |COHORTS        |INDIA        |Female |            1|    259|  7128|
|0-6 months  |COHORTS        |INDIA        |Male   |            0|   3400|  7128|
|0-6 months  |COHORTS        |INDIA        |Male   |            1|    272|  7128|
|0-6 months  |COHORTS        |GUATEMALA    |Female |            0|    481|  1064|
|0-6 months  |COHORTS        |GUATEMALA    |Female |            1|     26|  1064|
|0-6 months  |COHORTS        |GUATEMALA    |Male   |            0|    516|  1064|
|0-6 months  |COHORTS        |GUATEMALA    |Male   |            1|     41|  1064|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |            0|   1340|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Female |            1|     91|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |            0|   1493|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Male   |            1|    120|  3044|
|0-6 months  |CONTENT        |PERU         |Female |            0|    109|   215|
|0-6 months  |CONTENT        |PERU         |Female |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |Male   |            0|    105|   215|
|0-6 months  |CONTENT        |PERU         |Male   |            1|      1|   215|
|0-6 months  |EE             |PAKISTAN     |Female |            0|    172|   380|
|0-6 months  |EE             |PAKISTAN     |Female |            1|     13|   380|
|0-6 months  |EE             |PAKISTAN     |Male   |            0|    172|   380|
|0-6 months  |EE             |PAKISTAN     |Male   |            1|     23|   380|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |            0|    286|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |Female |            1|     36|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |            0|    321|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |Male   |            1|     43|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Female |            0|    154|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Female |            1|      0|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Male   |            0|    140|   295|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Male   |            1|      1|   295|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |            0|  12625| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH   |Female |            1|    565| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |            0|  13123| 26859|
|0-6 months  |JiVitA-3       |BANGLADESH   |Male   |            1|    546| 26859|
|0-6 months  |JiVitA-4       |BANGLADESH   |Female |            0|   2515|  5096|
|0-6 months  |JiVitA-4       |BANGLADESH   |Female |            1|     49|  5096|
|0-6 months  |JiVitA-4       |BANGLADESH   |Male   |            0|   2470|  5096|
|0-6 months  |JiVitA-4       |BANGLADESH   |Male   |            1|     62|  5096|
|0-6 months  |Keneba         |GAMBIA       |Female |            0|   1085|  2466|
|0-6 months  |Keneba         |GAMBIA       |Female |            1|    102|  2466|
|0-6 months  |Keneba         |GAMBIA       |Male   |            0|   1150|  2466|
|0-6 months  |Keneba         |GAMBIA       |Male   |            1|    129|  2466|
|0-6 months  |LCNI-5         |MALAWI       |Female |            0|    129|   272|
|0-6 months  |LCNI-5         |MALAWI       |Female |            1|      0|   272|
|0-6 months  |LCNI-5         |MALAWI       |Male   |            0|    143|   272|
|0-6 months  |LCNI-5         |MALAWI       |Male   |            1|      0|   272|
|0-6 months  |MAL-ED         |INDIA        |Female |            0|    126|   251|
|0-6 months  |MAL-ED         |INDIA        |Female |            1|     12|   251|
|0-6 months  |MAL-ED         |INDIA        |Male   |            0|    104|   251|
|0-6 months  |MAL-ED         |INDIA        |Male   |            1|      9|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |            0|    125|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |Female |            1|      9|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |            0|    122|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |Male   |            1|      7|   263|
|0-6 months  |MAL-ED         |PERU         |Female |            0|    142|   302|
|0-6 months  |MAL-ED         |PERU         |Female |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |Male   |            0|    159|   302|
|0-6 months  |MAL-ED         |PERU         |Male   |            1|      1|   302|
|0-6 months  |MAL-ED         |NEPAL        |Female |            0|    107|   240|
|0-6 months  |MAL-ED         |NEPAL        |Female |            1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL        |Male   |            0|    126|   240|
|0-6 months  |MAL-ED         |NEPAL        |Male   |            1|      4|   240|
|0-6 months  |MAL-ED         |BRAZIL       |Female |            0|    112|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Female |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |            0|    118|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Male   |            1|      2|   233|
|0-6 months  |MAL-ED         |TANZANIA     |Female |            0|    131|   261|
|0-6 months  |MAL-ED         |TANZANIA     |Female |            1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |            0|    126|   261|
|0-6 months  |MAL-ED         |TANZANIA     |Male   |            1|      3|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |            0|    157|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Female |            1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |            0|    149|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Male   |            1|      5|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |            0|    270|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Female |            1|     25|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |            0|    296|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Male   |            1|     31|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |            0|    354|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Female |            1|     27|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |            0|    354|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Male   |            1|     23|   758|
|0-6 months  |PROBIT         |BELARUS      |Female |            0|   7577| 16895|
|0-6 months  |PROBIT         |BELARUS      |Female |            1|    575| 16895|
|0-6 months  |PROBIT         |BELARUS      |Male   |            0|   8005| 16895|
|0-6 months  |PROBIT         |BELARUS      |Male   |            1|    738| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |            0|    322|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Female |            1|     10|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |            0|    349|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Male   |            1|     19|   700|
|0-6 months  |ResPak         |PAKISTAN     |Female |            0|    118|   282|
|0-6 months  |ResPak         |PAKISTAN     |Female |            1|     18|   282|
|0-6 months  |ResPak         |PAKISTAN     |Male   |            0|    121|   282|
|0-6 months  |ResPak         |PAKISTAN     |Male   |            1|     25|   282|
|0-6 months  |SAS-CompFeed   |INDIA        |Female |            0|    635|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |Female |            1|     49|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |Male   |            0|    770|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |Male   |            1|     51|  1505|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Female |            0|    214|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Female |            1|      9|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Male   |            0|    184|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Male   |            1|     11|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |            0|   1154|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Female |            1|     30|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |            0|   1163|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Male   |            1|     49|  2396|
|0-6 months  |Vellore Crypto |INDIA        |Female |            0|    130|   410|
|0-6 months  |Vellore Crypto |INDIA        |Female |            1|     55|   410|
|0-6 months  |Vellore Crypto |INDIA        |Male   |            0|    154|   410|
|0-6 months  |Vellore Crypto |INDIA        |Male   |            1|     71|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |            0|   6260| 13853|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Female |            1|    458| 13853|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |            0|   6640| 13853|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Male   |            1|    495| 13853|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |            0|    178|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Female |            1|      9|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |            0|    165|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Male   |            1|     21|   373|
|6-24 months |CMIN           |BANGLADESH   |Female |            0|     96|   252|
|6-24 months |CMIN           |BANGLADESH   |Female |            1|     12|   252|
|6-24 months |CMIN           |BANGLADESH   |Male   |            0|    127|   252|
|6-24 months |CMIN           |BANGLADESH   |Male   |            1|     17|   252|
|6-24 months |COHORTS        |INDIA        |Female |            0|   3212|  6941|
|6-24 months |COHORTS        |INDIA        |Female |            1|    111|  6941|
|6-24 months |COHORTS        |INDIA        |Male   |            0|   3474|  6941|
|6-24 months |COHORTS        |INDIA        |Male   |            1|    144|  6941|
|6-24 months |COHORTS        |GUATEMALA    |Female |            0|    573|  1220|
|6-24 months |COHORTS        |GUATEMALA    |Female |            1|     10|  1220|
|6-24 months |COHORTS        |GUATEMALA    |Male   |            0|    617|  1220|
|6-24 months |COHORTS        |GUATEMALA    |Male   |            1|     20|  1220|
|6-24 months |COHORTS        |PHILIPPINES  |Female |            0|   1255|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Female |            1|     74|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |            0|   1366|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Male   |            1|    114|  2809|
|6-24 months |CONTENT        |PERU         |Female |            0|    109|   215|
|6-24 months |CONTENT        |PERU         |Female |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |Male   |            0|    106|   215|
|6-24 months |CONTENT        |PERU         |Male   |            1|      0|   215|
|6-24 months |EE             |PAKISTAN     |Female |            0|    161|   374|
|6-24 months |EE             |PAKISTAN     |Female |            1|     21|   374|
|6-24 months |EE             |PAKISTAN     |Male   |            0|    162|   374|
|6-24 months |EE             |PAKISTAN     |Male   |            1|     30|   374|
|6-24 months |GMS-Nepal      |NEPAL        |Female |            0|    231|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Female |            1|     54|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |            0|    247|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Male   |            1|     58|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |            0|    142|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |Female |            1|      0|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |            0|    133|   277|
|6-24 months |Guatemala BSC  |GUATEMALA    |Male   |            1|      2|   277|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |            0|   1565|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Female |            1|     60|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |            0|   1536|  3266|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Male   |            1|    105|  3266|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |            0|   8252| 17298|
|6-24 months |JiVitA-3       |BANGLADESH   |Female |            1|    215| 17298|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |            0|   8493| 17298|
|6-24 months |JiVitA-3       |BANGLADESH   |Male   |            1|    338| 17298|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |            0|   2619|  5430|
|6-24 months |JiVitA-4       |BANGLADESH   |Female |            1|    100|  5430|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |            0|   2572|  5430|
|6-24 months |JiVitA-4       |BANGLADESH   |Male   |            1|    139|  5430|
|6-24 months |Keneba         |GAMBIA       |Female |            0|   1203|  2738|
|6-24 months |Keneba         |GAMBIA       |Female |            1|    122|  2738|
|6-24 months |Keneba         |GAMBIA       |Male   |            0|   1214|  2738|
|6-24 months |Keneba         |GAMBIA       |Male   |            1|    199|  2738|
|6-24 months |LCNI-5         |MALAWI       |Female |            0|    414|   826|
|6-24 months |LCNI-5         |MALAWI       |Female |            1|      3|   826|
|6-24 months |LCNI-5         |MALAWI       |Male   |            0|    404|   826|
|6-24 months |LCNI-5         |MALAWI       |Male   |            1|      5|   826|
|6-24 months |MAL-ED         |INDIA        |Female |            0|    127|   235|
|6-24 months |MAL-ED         |INDIA        |Female |            1|      2|   235|
|6-24 months |MAL-ED         |INDIA        |Male   |            0|    102|   235|
|6-24 months |MAL-ED         |INDIA        |Male   |            1|      4|   235|
|6-24 months |MAL-ED         |BANGLADESH   |Female |            0|    118|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Female |            1|      4|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |            0|    117|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Male   |            1|      1|   240|
|6-24 months |MAL-ED         |PERU         |Female |            0|    123|   270|
|6-24 months |MAL-ED         |PERU         |Female |            1|      1|   270|
|6-24 months |MAL-ED         |PERU         |Male   |            0|    144|   270|
|6-24 months |MAL-ED         |PERU         |Male   |            1|      2|   270|
|6-24 months |MAL-ED         |NEPAL        |Female |            0|    109|   235|
|6-24 months |MAL-ED         |NEPAL        |Female |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |Male   |            0|    124|   235|
|6-24 months |MAL-ED         |NEPAL        |Male   |            1|      2|   235|
|6-24 months |MAL-ED         |BRAZIL       |Female |            0|    101|   207|
|6-24 months |MAL-ED         |BRAZIL       |Female |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |Male   |            0|    105|   207|
|6-24 months |MAL-ED         |BRAZIL       |Male   |            1|      1|   207|
|6-24 months |MAL-ED         |TANZANIA     |Female |            0|    122|   245|
|6-24 months |MAL-ED         |TANZANIA     |Female |            1|      2|   245|
|6-24 months |MAL-ED         |TANZANIA     |Male   |            0|    118|   245|
|6-24 months |MAL-ED         |TANZANIA     |Male   |            1|      3|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |            0|    124|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Female |            1|      5|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |            0|    125|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Male   |            1|      5|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |            0|    231|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Female |            1|     15|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |            0|    263|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Male   |            1|     33|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |            0|    360|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Female |            1|      9|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |            0|    350|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Male   |            1|     11|   730|
|6-24 months |PROBIT         |BELARUS      |Female |            0|   8000| 16598|
|6-24 months |PROBIT         |BELARUS      |Female |            1|      0| 16598|
|6-24 months |PROBIT         |BELARUS      |Male   |            0|   8586| 16598|
|6-24 months |PROBIT         |BELARUS      |Male   |            1|     12| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |Female |            0|    289|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Female |            1|      5|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |            0|    313|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Male   |            1|      8|   615|
|6-24 months |ResPak         |PAKISTAN     |Female |            0|    100|   236|
|6-24 months |ResPak         |PAKISTAN     |Female |            1|     10|   236|
|6-24 months |ResPak         |PAKISTAN     |Male   |            0|    103|   236|
|6-24 months |ResPak         |PAKISTAN     |Male   |            1|     23|   236|
|6-24 months |SAS-CompFeed   |INDIA        |Female |            0|    573|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |Female |            1|     51|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |            0|    682|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |Male   |            1|     83|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |            0|    185|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Female |            1|     27|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |            0|    166|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Male   |            1|     24|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |            0|    960|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Female |            1|     37|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |            0|    975|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Male   |            1|     46|  2018|
|6-24 months |Vellore Crypto |INDIA        |Female |            0|    172|   410|
|6-24 months |Vellore Crypto |INDIA        |Female |            1|     13|   410|
|6-24 months |Vellore Crypto |INDIA        |Male   |            0|    212|   410|
|6-24 months |Vellore Crypto |INDIA        |Male   |            1|     13|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |            0|   5214| 10815|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Female |            1|    154| 10815|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |            0|   5245| 10815|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Male   |            1|    202| 10815|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
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


