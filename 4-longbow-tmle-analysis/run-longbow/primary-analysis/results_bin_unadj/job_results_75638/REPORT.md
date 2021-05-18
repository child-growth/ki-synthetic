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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mage    | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|    203|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|     63|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            0|     49|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            1|     18|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            0|     29|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            1|     11|   373|
|0-24 months |COHORTS        |INDIA        |[20-30) |            0|   3330|  6156|
|0-24 months |COHORTS        |INDIA        |[20-30) |            1|    399|  6156|
|0-24 months |COHORTS        |INDIA        |<20     |            0|    888|  6156|
|0-24 months |COHORTS        |INDIA        |<20     |            1|     98|  6156|
|0-24 months |COHORTS        |INDIA        |>=30    |            0|   1291|  6156|
|0-24 months |COHORTS        |INDIA        |>=30    |            1|    150|  6156|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |            0|    547|  1339|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |            1|     45|  1339|
|0-24 months |COHORTS        |GUATEMALA    |<20     |            0|    240|  1339|
|0-24 months |COHORTS        |GUATEMALA    |<20     |            1|     26|  1339|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |            0|    455|  1339|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |            1|     26|  1339|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |            0|   1371|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |            1|    209|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |            0|    466|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |            1|     57|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |            0|    826|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |            1|    116|  3045|
|0-24 months |EE             |PAKISTAN     |[20-30) |            0|    126|   379|
|0-24 months |EE             |PAKISTAN     |[20-30) |            1|     32|   379|
|0-24 months |EE             |PAKISTAN     |<20     |            0|      2|   379|
|0-24 months |EE             |PAKISTAN     |<20     |            1|      0|   379|
|0-24 months |EE             |PAKISTAN     |>=30    |            0|    171|   379|
|0-24 months |EE             |PAKISTAN     |>=30    |            1|     48|   379|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |            0|    297|   686|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |            1|    114|   686|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |            0|    132|   686|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |            1|     39|   686|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |            0|     80|   686|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |            1|     24|   686|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            0|    151|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            1|      3|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |            0|     61|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |            1|      0|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            0|     84|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            1|      0|   299|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            0|   1412|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            1|     73|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            0|    546|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            1|     26|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            0|   1113|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            1|     60|  3230|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            0|  11631| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            1|    779| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |            0|  11439| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |            1|    725| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |            0|   2233| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |            1|    141| 26948|
|0-24 months |Keneba         |GAMBIA       |[20-30) |            0|    761|  2915|
|0-24 months |Keneba         |GAMBIA       |[20-30) |            1|    158|  2915|
|0-24 months |Keneba         |GAMBIA       |<20     |            0|    222|  2915|
|0-24 months |Keneba         |GAMBIA       |<20     |            1|     41|  2915|
|0-24 months |Keneba         |GAMBIA       |>=30    |            0|   1407|  2915|
|0-24 months |Keneba         |GAMBIA       |>=30    |            1|    326|  2915|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |            0|    397|   761|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |            1|      4|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |            0|    150|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |            1|      4|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |            0|    206|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |            1|      0|   761|
|0-24 months |MAL-ED         |INDIA        |[20-30) |            0|    146|   251|
|0-24 months |MAL-ED         |INDIA        |[20-30) |            1|     15|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |            0|     36|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |            1|      3|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |            0|     43|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |            1|      8|   251|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |            0|    141|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |            1|     13|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |            0|     36|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |            1|      2|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |            0|     65|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |            1|      6|   263|
|0-24 months |MAL-ED         |PERU         |[20-30) |            0|    152|   302|
|0-24 months |MAL-ED         |PERU         |[20-30) |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |<20     |            0|     45|   302|
|0-24 months |MAL-ED         |PERU         |<20     |            1|      2|   302|
|0-24 months |MAL-ED         |PERU         |>=30    |            0|    101|   302|
|0-24 months |MAL-ED         |PERU         |>=30    |            1|      2|   302|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |            0|    142|   240|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |            1|      5|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |            0|      9|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |            0|     80|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |            1|      4|   240|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |            0|    124|   233|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |            0|     27|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |            0|     78|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |            1|      0|   233|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |            0|    107|   261|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |            1|      4|   261|
|0-24 months |MAL-ED         |TANZANIA     |<20     |            0|     14|   261|
|0-24 months |MAL-ED         |TANZANIA     |<20     |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |            0|    131|   261|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |            1|      5|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            0|    129|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            1|      6|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |            0|     41|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |            1|      3|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            0|    126|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            1|      7|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            0|    315|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            1|     59|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |            0|    103|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |            1|     13|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |            0|    107|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |            1|     26|   623|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    467|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            1|     49|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |            0|     63|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |            1|      4|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            0|    162|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            1|     13|   758|
|0-24 months |PROBIT         |BELARUS      |[20-30) |            0|  11132| 16898|
|0-24 months |PROBIT         |BELARUS      |[20-30) |            1|    958| 16898|
|0-24 months |PROBIT         |BELARUS      |<20     |            0|   1672| 16898|
|0-24 months |PROBIT         |BELARUS      |<20     |            1|    141| 16898|
|0-24 months |PROBIT         |BELARUS      |>=30    |            0|   2769| 16898|
|0-24 months |PROBIT         |BELARUS      |>=30    |            1|    226| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |            0|    429|   700|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |            1|     28|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |            0|     67|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |            1|      3|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |            0|    162|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |            1|     11|   700|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |            0|    954|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |            1|    161|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |            0|    191|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |            1|     36|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |            0|    143|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |            1|     26|  1511|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            0|    222|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            1|     42|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |            0|     21|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |            1|      5|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            0|    104|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            1|     24|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            0|   1198|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            1|     98|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |            0|    360|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |            1|     23|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            0|    677|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            1|     37|  2393|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |            0|    185|   410|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |            1|     96|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |            0|     37|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |            1|     17|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |            0|     48|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |            1|     27|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   8710| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|    882| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            0|   2352| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            1|    240| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            0|   1576| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            1|    164| 13924|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|    217|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|     46|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |            0|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |            1|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |            0|     31|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |            1|      8|   368|
|0-6 months  |COHORTS        |INDIA        |[20-30) |            0|   3318|  5920|
|0-6 months  |COHORTS        |INDIA        |[20-30) |            1|    273|  5920|
|0-6 months  |COHORTS        |INDIA        |<20     |            0|    881|  5920|
|0-6 months  |COHORTS        |INDIA        |<20     |            1|     73|  5920|
|0-6 months  |COHORTS        |INDIA        |>=30    |            0|   1270|  5920|
|0-6 months  |COHORTS        |INDIA        |>=30    |            1|    105|  5920|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |            0|    434|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |            1|     30|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |            0|    198|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |            1|     19|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |            0|    361|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |            1|     18|  1060|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |            0|   1461|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |            1|    119|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |            0|    492|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |            1|     31|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |            0|    880|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |            1|     61|  3044|
|0-6 months  |EE             |PAKISTAN     |[20-30) |            0|    141|   379|
|0-6 months  |EE             |PAKISTAN     |[20-30) |            1|     17|   379|
|0-6 months  |EE             |PAKISTAN     |<20     |            0|      2|   379|
|0-6 months  |EE             |PAKISTAN     |<20     |            1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |>=30    |            0|    200|   379|
|0-6 months  |EE             |PAKISTAN     |>=30    |            1|     19|   379|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |            0|    364|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |            1|     47|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |            0|    148|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |            1|     23|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |            0|     95|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |            1|      9|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |            0|    140|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |            1|      1|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |            0|     56|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |            1|      0|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |            0|     82|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |            1|      0|   279|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |            0|  11823| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |            1|    545| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |            0|  11647| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |            1|    469| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |            0|   2270| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |            1|     97| 26851|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |            0|    722|  2463|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |            1|     63|  2463|
|0-6 months  |Keneba         |GAMBIA       |<20     |            0|    205|  2463|
|0-6 months  |Keneba         |GAMBIA       |<20     |            1|     16|  2463|
|0-6 months  |Keneba         |GAMBIA       |>=30    |            0|   1306|  2463|
|0-6 months  |Keneba         |GAMBIA       |>=30    |            1|    151|  2463|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |            0|    114|   244|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |            1|      0|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |            0|     59|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |            1|      0|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |            0|     71|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |            1|      0|   244|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |            0|    148|   251|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |            1|     13|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |            0|     36|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |            1|      3|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |            0|     46|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |            1|      5|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |            0|    145|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |            1|      9|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |            0|     36|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |            1|      2|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |            0|     66|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |            1|      5|   263|
|0-6 months  |MAL-ED         |PERU         |[20-30) |            0|    152|   302|
|0-6 months  |MAL-ED         |PERU         |[20-30) |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |<20     |            0|     47|   302|
|0-6 months  |MAL-ED         |PERU         |<20     |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |>=30    |            0|    102|   302|
|0-6 months  |MAL-ED         |PERU         |>=30    |            1|      1|   302|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |            0|    144|   240|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |            1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |            0|      9|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |            0|     80|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |            1|      4|   240|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |            0|    124|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |            1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |            0|     28|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |            0|     78|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |            1|      0|   233|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |            0|    110|   261|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |            1|      1|   261|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |            0|     14|   261|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |            0|    133|   261|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |            1|      3|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |            0|    133|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |            1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |            0|     42|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |            1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |            0|    131|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |            1|      2|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |            0|    339|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |            1|     34|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |            0|    111|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |            1|      5|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |            0|    115|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |            1|     17|   621|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    481|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |            1|     35|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |            0|     63|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |            1|      4|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |            0|    164|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |            1|     11|   758|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |            0|  11139| 16895|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |            1|    949| 16895|
|0-6 months  |PROBIT         |BELARUS      |<20     |            0|   1674| 16895|
|0-6 months  |PROBIT         |BELARUS      |<20     |            1|    139| 16895|
|0-6 months  |PROBIT         |BELARUS      |>=30    |            0|   2769| 16895|
|0-6 months  |PROBIT         |BELARUS      |>=30    |            1|    225| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |            0|    438|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |            1|     19|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |            0|     69|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |            1|      1|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |            0|    164|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |            1|      9|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |            0|   1036|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |            1|     72|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |            0|    208|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |            1|     18|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |            0|    159|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |            1|     10|  1503|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |            0|    252|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |            1|     12|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |            0|     24|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |            1|      2|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |            0|    122|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |            1|      6|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |            0|   1245|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |            1|     51|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |            0|    376|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |            1|      7|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |            0|    693|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |            1|     21|  2393|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |            0|    195|   410|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |            1|     86|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |            0|     40|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |            1|     14|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |            0|     49|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |            1|     26|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   8872| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|    659| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |            0|   2400| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |            1|    174| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |            0|   1607| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |            1|    120| 13832|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            0|    247|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |            1|     19|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            0|     60|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |            1|      7|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            0|     36|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |            1|      4|   373|
|6-24 months |COHORTS        |INDIA        |[20-30) |            0|   3354|  5767|
|6-24 months |COHORTS        |INDIA        |[20-30) |            1|    127|  5767|
|6-24 months |COHORTS        |INDIA        |<20     |            0|    898|  5767|
|6-24 months |COHORTS        |INDIA        |<20     |            1|     28|  5767|
|6-24 months |COHORTS        |INDIA        |>=30    |            0|   1311|  5767|
|6-24 months |COHORTS        |INDIA        |>=30    |            1|     49|  5767|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |            0|    520|  1212|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |            1|     15|  1212|
|6-24 months |COHORTS        |GUATEMALA    |<20     |            0|    233|  1212|
|6-24 months |COHORTS        |GUATEMALA    |<20     |            1|      7|  1212|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |            0|    429|  1212|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |            1|      8|  1212|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |            0|   1365|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |            1|    101|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |            0|    459|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |            1|     27|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |            0|    797|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |            1|     60|  2809|
|6-24 months |EE             |PAKISTAN     |[20-30) |            0|    136|   373|
|6-24 months |EE             |PAKISTAN     |[20-30) |            1|     21|   373|
|6-24 months |EE             |PAKISTAN     |<20     |            0|      2|   373|
|6-24 months |EE             |PAKISTAN     |<20     |            1|      0|   373|
|6-24 months |EE             |PAKISTAN     |>=30    |            0|    184|   373|
|6-24 months |EE             |PAKISTAN     |>=30    |            1|     30|   373|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |            0|    275|   590|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |            1|     76|   590|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |            0|    128|   590|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |            1|     19|   590|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |            0|     75|   590|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |            1|     17|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            0|    133|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |            1|      2|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |            0|     52|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |            1|      0|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            0|     78|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |            1|      0|   265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            0|   1412|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |            1|     73|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            0|    546|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |            1|     26|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            0|   1113|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |            1|     60|  3230|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            0|   7470| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |            1|    241| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |            0|   7995| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |            1|    267| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |            0|   1277| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |            1|     45| 17295|
|6-24 months |Keneba         |GAMBIA       |[20-30) |            0|    771|  2733|
|6-24 months |Keneba         |GAMBIA       |[20-30) |            1|     98|  2733|
|6-24 months |Keneba         |GAMBIA       |<20     |            0|    217|  2733|
|6-24 months |Keneba         |GAMBIA       |<20     |            1|     30|  2733|
|6-24 months |Keneba         |GAMBIA       |>=30    |            0|   1425|  2733|
|6-24 months |Keneba         |GAMBIA       |>=30    |            1|    192|  2733|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |            0|    391|   750|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |            1|      4|   750|
|6-24 months |LCNI-5         |MALAWI       |<20     |            0|    147|   750|
|6-24 months |LCNI-5         |MALAWI       |<20     |            1|      4|   750|
|6-24 months |LCNI-5         |MALAWI       |>=30    |            0|    204|   750|
|6-24 months |LCNI-5         |MALAWI       |>=30    |            1|      0|   750|
|6-24 months |MAL-ED         |INDIA        |[20-30) |            0|    148|   235|
|6-24 months |MAL-ED         |INDIA        |[20-30) |            1|      2|   235|
|6-24 months |MAL-ED         |INDIA        |<20     |            0|     36|   235|
|6-24 months |MAL-ED         |INDIA        |<20     |            1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |>=30    |            0|     45|   235|
|6-24 months |MAL-ED         |INDIA        |>=30    |            1|      4|   235|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |            0|    135|   240|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |            1|      4|   240|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |            0|     35|   240|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |            0|     65|   240|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |            1|      1|   240|
|6-24 months |MAL-ED         |PERU         |[20-30) |            0|    134|   270|
|6-24 months |MAL-ED         |PERU         |[20-30) |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |<20     |            0|     42|   270|
|6-24 months |MAL-ED         |PERU         |<20     |            1|      2|   270|
|6-24 months |MAL-ED         |PERU         |>=30    |            0|     91|   270|
|6-24 months |MAL-ED         |PERU         |>=30    |            1|      1|   270|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |            0|    143|   235|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |            1|      2|   235|
|6-24 months |MAL-ED         |NEPAL        |<20     |            0|      9|   235|
|6-24 months |MAL-ED         |NEPAL        |<20     |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |>=30    |            0|     81|   235|
|6-24 months |MAL-ED         |NEPAL        |>=30    |            1|      0|   235|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |            0|    109|   207|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |<20     |            0|     22|   207|
|6-24 months |MAL-ED         |BRAZIL       |<20     |            1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |            0|     75|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |            1|      0|   207|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |            0|    101|   245|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |            1|      3|   245|
|6-24 months |MAL-ED         |TANZANIA     |<20     |            0|     11|   245|
|6-24 months |MAL-ED         |TANZANIA     |<20     |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |            0|    128|   245|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |            1|      2|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            0|    112|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |            1|      4|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |            0|     32|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |            1|      1|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            0|    105|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |            1|      5|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            0|    295|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |            1|     29|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |            0|     94|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |            1|      8|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |            0|    105|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |            1|     10|   541|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            0|    479|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |            1|     18|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |            0|     62|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |            1|      0|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            0|    169|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |            1|      2|   730|
|6-24 months |PROBIT         |BELARUS      |[20-30) |            0|  11853| 16598|
|6-24 months |PROBIT         |BELARUS      |[20-30) |            1|      9| 16598|
|6-24 months |PROBIT         |BELARUS      |<20     |            0|   1786| 16598|
|6-24 months |PROBIT         |BELARUS      |<20     |            1|      2| 16598|
|6-24 months |PROBIT         |BELARUS      |>=30    |            0|   2947| 16598|
|6-24 months |PROBIT         |BELARUS      |>=30    |            1|      1| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |            0|    390|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |            1|      9|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |            0|     59|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |            1|      2|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |            0|    153|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |            1|      2|   615|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |            0|    926|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |            1|     98|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |            0|    191|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |            1|     18|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |            0|    138|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |            1|     18|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            0|    225|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |            1|     30|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |            0|     22|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |            1|      3|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            0|    104|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |            1|     18|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            0|   1030|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |            1|     51|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |            0|    313|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |            1|     16|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            0|    590|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |            1|     16|  2016|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |            0|    265|   410|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |            1|     16|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |            0|     46|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |            1|      8|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |            0|     73|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |            1|      2|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            0|   7215| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |            1|    238| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            0|   1887| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |            1|     74| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            0|   1342| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |            1|     44| 10800|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


