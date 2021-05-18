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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mhtcm        | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:------------|---------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |         0|   3729|  5705|
|0-24 months |COHORTS        |INDIA        |>=155 cm     |         1|    412|  5705|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |         0|    514|  5705|
|0-24 months |COHORTS        |INDIA        |[151-155) cm |         1|     43|  5705|
|0-24 months |COHORTS        |INDIA        |<151 cm      |         0|    912|  5705|
|0-24 months |COHORTS        |INDIA        |<151 cm      |         1|     95|  5705|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |         0|    107|  1007|
|0-24 months |COHORTS        |GUATEMALA    |>=155 cm     |         1|      3|  1007|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |         0|    180|  1007|
|0-24 months |COHORTS        |GUATEMALA    |[151-155) cm |         1|      5|  1007|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |         0|    686|  1007|
|0-24 months |COHORTS        |GUATEMALA    |<151 cm      |         1|     26|  1007|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |         0|    613|  2810|
|0-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |         1|     29|  2810|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |         0|    648|  2810|
|0-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |         1|     31|  2810|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |         0|   1405|  2810|
|0-24 months |COHORTS        |PHILIPPINES  |<151 cm      |         1|     84|  2810|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |         0|     40|   200|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |         1|      0|   200|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |         0|     39|   200|
|0-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |         1|      0|   200|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |         0|    119|   200|
|0-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |         1|      2|   200|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |         0|   1291|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |         1|    161|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |         0|    113|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |         1|     25|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |         0|     46|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |         1|      9|  1645|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |         0|   2562| 15693|
|0-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |         1|    148| 15693|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |         0|   3710| 15693|
|0-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |         1|    235| 15693|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |         0|   8533| 15693|
|0-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |         1|    505| 15693|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |         0|   1549|  2121|
|0-24 months |Keneba         |GAMBIA       |>=155 cm     |         1|    101|  2121|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |         0|    275|  2121|
|0-24 months |Keneba         |GAMBIA       |[151-155) cm |         1|     15|  2121|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |         0|    171|  2121|
|0-24 months |Keneba         |GAMBIA       |<151 cm      |         1|     10|  2121|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |         0|    415|   717|
|0-24 months |LCNI-5         |MALAWI       |>=155 cm     |         1|      5|   717|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |         0|    147|   717|
|0-24 months |LCNI-5         |MALAWI       |[151-155) cm |         1|      1|   717|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |         0|    149|   717|
|0-24 months |LCNI-5         |MALAWI       |<151 cm      |         1|      0|   717|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |         0|     55|   237|
|0-24 months |MAL-ED         |INDIA        |>=155 cm     |         1|      6|   237|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |         0|     51|   237|
|0-24 months |MAL-ED         |INDIA        |[151-155) cm |         1|      5|   237|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |         0|    110|   237|
|0-24 months |MAL-ED         |INDIA        |<151 cm      |         1|     10|   237|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |         0|     34|   245|
|0-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |         1|      3|   245|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |         0|     52|   245|
|0-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |         1|      4|   245|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |         0|    147|   245|
|0-24 months |MAL-ED         |BANGLADESH   |<151 cm      |         1|      5|   245|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |         0|     66|   280|
|0-24 months |MAL-ED         |PERU         |>=155 cm     |         1|      1|   280|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |         0|     56|   280|
|0-24 months |MAL-ED         |PERU         |[151-155) cm |         1|      0|   280|
|0-24 months |MAL-ED         |PERU         |<151 cm      |         0|    157|   280|
|0-24 months |MAL-ED         |PERU         |<151 cm      |         1|      0|   280|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |         0|     42|   238|
|0-24 months |MAL-ED         |NEPAL        |>=155 cm     |         1|      2|   238|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |         0|     58|   238|
|0-24 months |MAL-ED         |NEPAL        |[151-155) cm |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |         0|    134|   238|
|0-24 months |MAL-ED         |NEPAL        |<151 cm      |         1|      1|   238|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |         0|    102|   217|
|0-24 months |MAL-ED         |BRAZIL       |>=155 cm     |         1|      0|   217|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |         0|     45|   217|
|0-24 months |MAL-ED         |BRAZIL       |[151-155) cm |         1|      0|   217|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |         0|     68|   217|
|0-24 months |MAL-ED         |BRAZIL       |<151 cm      |         1|      2|   217|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |         0|    146|   249|
|0-24 months |MAL-ED         |TANZANIA     |>=155 cm     |         1|      0|   249|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |         0|     43|   249|
|0-24 months |MAL-ED         |TANZANIA     |[151-155) cm |         1|      0|   249|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |         0|     60|   249|
|0-24 months |MAL-ED         |TANZANIA     |<151 cm      |         1|      0|   249|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |         0|    198|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |         0|     34|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |         0|     32|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |         1|      0|   266|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |         0|     84|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |         1|      9|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |         0|    112|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |         1|     14|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |         0|    291|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |         1|     24|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |         0|    144|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |         1|      3|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |         0|    166|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |         1|      9|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |         0|    393|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |         1|     14|   729|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |         0|  13140| 13779|
|0-24 months |PROBIT         |BELARUS      |>=155 cm     |         1|     92| 13779|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |         0|    398| 13779|
|0-24 months |PROBIT         |BELARUS      |[151-155) cm |         1|      3| 13779|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |         0|    145| 13779|
|0-24 months |PROBIT         |BELARUS      |<151 cm      |         1|      1| 13779|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |         0|    121|   622|
|0-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |         1|      4|   622|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |         0|    163|   622|
|0-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |         1|      6|   622|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |         0|    323|   622|
|0-24 months |PROVIDE        |BANGLADESH   |<151 cm      |         1|      5|   622|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |         0|    518|  1346|
|0-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |         1|     38|  1346|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |         0|    243|  1346|
|0-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |         1|     31|  1346|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |         0|    473|  1346|
|0-24 months |SAS-CompFeed   |INDIA        |<151 cm      |         1|     43|  1346|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |         0|     62|   374|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |         1|     12|   374|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |         0|     88|   374|
|0-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |         1|     17|   374|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |         0|    159|   374|
|0-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |         1|     36|   374|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |         0|   1341|  2147|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |         1|     37|  2147|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |         0|    441|  2147|
|0-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |         1|     10|  2147|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |         0|    308|  2147|
|0-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |         1|     10|  2147|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         0|   6223|  8038|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         1|    110|  8038|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         0|   1205|  8038|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         1|     20|  8038|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |         0|    473|  8038|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |         1|      7|  8038|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |         0|    182|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |         1|     14|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |         0|    194|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |         1|     15|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |         0|    425|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<151 cm      |         1|     23|   853|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |         0|      9|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |         1|      0|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |         0|     15|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |         1|      1|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |         0|     23|    49|
|0-6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |         1|      1|    49|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |         0|   1335|  1763|
|0-6 months  |Keneba         |GAMBIA       |>=155 cm     |         1|     36|  1763|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |         0|    234|  1763|
|0-6 months  |Keneba         |GAMBIA       |[151-155) cm |         1|      7|  1763|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |         0|    145|  1763|
|0-6 months  |Keneba         |GAMBIA       |<151 cm      |         1|      6|  1763|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |         0|     54|   236|
|0-6 months  |MAL-ED         |INDIA        |>=155 cm     |         1|      7|   236|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |         0|     51|   236|
|0-6 months  |MAL-ED         |INDIA        |[151-155) cm |         1|      4|   236|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |         0|    112|   236|
|0-6 months  |MAL-ED         |INDIA        |<151 cm      |         1|      8|   236|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |         0|     35|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |         1|      2|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |         0|     56|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |         1|      0|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |         0|    148|   245|
|0-6 months  |MAL-ED         |BANGLADESH   |<151 cm      |         1|      4|   245|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |         0|     67|   280|
|0-6 months  |MAL-ED         |PERU         |>=155 cm     |         1|      0|   280|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |         0|     56|   280|
|0-6 months  |MAL-ED         |PERU         |[151-155) cm |         1|      0|   280|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |         0|    157|   280|
|0-6 months  |MAL-ED         |PERU         |<151 cm      |         1|      0|   280|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |         0|     42|   238|
|0-6 months  |MAL-ED         |NEPAL        |>=155 cm     |         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |         0|     57|   238|
|0-6 months  |MAL-ED         |NEPAL        |[151-155) cm |         1|      2|   238|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |         0|    132|   238|
|0-6 months  |MAL-ED         |NEPAL        |<151 cm      |         1|      3|   238|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |         0|    102|   217|
|0-6 months  |MAL-ED         |BRAZIL       |>=155 cm     |         1|      0|   217|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |         0|     45|   217|
|0-6 months  |MAL-ED         |BRAZIL       |[151-155) cm |         1|      0|   217|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |         0|     69|   217|
|0-6 months  |MAL-ED         |BRAZIL       |<151 cm      |         1|      1|   217|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |         0|    146|   249|
|0-6 months  |MAL-ED         |TANZANIA     |>=155 cm     |         1|      0|   249|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |         0|     43|   249|
|0-6 months  |MAL-ED         |TANZANIA     |[151-155) cm |         1|      0|   249|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |         0|     60|   249|
|0-6 months  |MAL-ED         |TANZANIA     |<151 cm      |         1|      0|   249|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |         0|    197|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |         1|      1|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |         0|     34|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |         1|      1|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |         0|     32|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |         1|      0|   265|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |         0|     16|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |         1|      3|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |         0|     32|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |         1|      3|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |         0|    110|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |         1|      5|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |         0|     53|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |         1|      1|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |         0|     55|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |         0|    137|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |         0|  11587| 13149|
|0-6 months  |PROBIT         |BELARUS      |>=155 cm     |         1|   1031| 13149|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |         0|    356| 13149|
|0-6 months  |PROBIT         |BELARUS      |[151-155) cm |         1|     31| 13149|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |         0|    134| 13149|
|0-6 months  |PROBIT         |BELARUS      |<151 cm      |         1|     10| 13149|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |         0|    119|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |         1|      5|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |         0|    165|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |         1|      4|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |         0|    322|   619|
|0-6 months  |PROVIDE        |BANGLADESH   |<151 cm      |         1|      4|   619|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |         0|   1283|  2044|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |         1|     28|  2044|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |         0|    415|  2044|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |         1|     13|  2044|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |         0|    294|  2044|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |         1|     11|  2044|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         0|    449|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         1|     10|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         0|     83|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         1|      2|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |         0|     31|   575|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |         1|      0|   575|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |         0|   3729|  5705|
|6-24 months |COHORTS        |INDIA        |>=155 cm     |         1|    412|  5705|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |         0|    514|  5705|
|6-24 months |COHORTS        |INDIA        |[151-155) cm |         1|     43|  5705|
|6-24 months |COHORTS        |INDIA        |<151 cm      |         0|    912|  5705|
|6-24 months |COHORTS        |INDIA        |<151 cm      |         1|     95|  5705|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |         0|    107|  1007|
|6-24 months |COHORTS        |GUATEMALA    |>=155 cm     |         1|      3|  1007|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |         0|    180|  1007|
|6-24 months |COHORTS        |GUATEMALA    |[151-155) cm |         1|      5|  1007|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |         0|    686|  1007|
|6-24 months |COHORTS        |GUATEMALA    |<151 cm      |         1|     26|  1007|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |         0|    613|  2810|
|6-24 months |COHORTS        |PHILIPPINES  |>=155 cm     |         1|     29|  2810|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |         0|    648|  2810|
|6-24 months |COHORTS        |PHILIPPINES  |[151-155) cm |         1|     31|  2810|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |         0|   1405|  2810|
|6-24 months |COHORTS        |PHILIPPINES  |<151 cm      |         1|     84|  2810|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |         0|     40|   200|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |         1|      0|   200|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |         0|     39|   200|
|6-24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |         1|      0|   200|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |         0|    119|   200|
|6-24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |         1|      2|   200|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |         0|   1291|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |         1|    161|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |         0|    113|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |         1|     25|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |         0|     46|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |         1|      9|  1645|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |         0|   2562| 15693|
|6-24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |         1|    148| 15693|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |         0|   3710| 15693|
|6-24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |         1|    235| 15693|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |         0|   8533| 15693|
|6-24 months |JiVitA-3       |BANGLADESH   |<151 cm      |         1|    505| 15693|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |         0|   1549|  2121|
|6-24 months |Keneba         |GAMBIA       |>=155 cm     |         1|    101|  2121|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |         0|    275|  2121|
|6-24 months |Keneba         |GAMBIA       |[151-155) cm |         1|     15|  2121|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |         0|    171|  2121|
|6-24 months |Keneba         |GAMBIA       |<151 cm      |         1|     10|  2121|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |         0|    415|   717|
|6-24 months |LCNI-5         |MALAWI       |>=155 cm     |         1|      5|   717|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |         0|    147|   717|
|6-24 months |LCNI-5         |MALAWI       |[151-155) cm |         1|      1|   717|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |         0|    149|   717|
|6-24 months |LCNI-5         |MALAWI       |<151 cm      |         1|      0|   717|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |         0|     55|   237|
|6-24 months |MAL-ED         |INDIA        |>=155 cm     |         1|      6|   237|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |         0|     51|   237|
|6-24 months |MAL-ED         |INDIA        |[151-155) cm |         1|      5|   237|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |         0|    110|   237|
|6-24 months |MAL-ED         |INDIA        |<151 cm      |         1|     10|   237|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |         0|     34|   245|
|6-24 months |MAL-ED         |BANGLADESH   |>=155 cm     |         1|      3|   245|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |         0|     52|   245|
|6-24 months |MAL-ED         |BANGLADESH   |[151-155) cm |         1|      4|   245|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |         0|    147|   245|
|6-24 months |MAL-ED         |BANGLADESH   |<151 cm      |         1|      5|   245|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |         0|     66|   280|
|6-24 months |MAL-ED         |PERU         |>=155 cm     |         1|      1|   280|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |         0|     56|   280|
|6-24 months |MAL-ED         |PERU         |[151-155) cm |         1|      0|   280|
|6-24 months |MAL-ED         |PERU         |<151 cm      |         0|    157|   280|
|6-24 months |MAL-ED         |PERU         |<151 cm      |         1|      0|   280|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |         0|     42|   238|
|6-24 months |MAL-ED         |NEPAL        |>=155 cm     |         1|      2|   238|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |         0|     58|   238|
|6-24 months |MAL-ED         |NEPAL        |[151-155) cm |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |         0|    134|   238|
|6-24 months |MAL-ED         |NEPAL        |<151 cm      |         1|      1|   238|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |         0|    102|   217|
|6-24 months |MAL-ED         |BRAZIL       |>=155 cm     |         1|      0|   217|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |         0|     45|   217|
|6-24 months |MAL-ED         |BRAZIL       |[151-155) cm |         1|      0|   217|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |         0|     68|   217|
|6-24 months |MAL-ED         |BRAZIL       |<151 cm      |         1|      2|   217|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |         0|    146|   249|
|6-24 months |MAL-ED         |TANZANIA     |>=155 cm     |         1|      0|   249|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |         0|     43|   249|
|6-24 months |MAL-ED         |TANZANIA     |[151-155) cm |         1|      0|   249|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |         0|     60|   249|
|6-24 months |MAL-ED         |TANZANIA     |<151 cm      |         1|      0|   249|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |         0|    198|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |         1|      1|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |         0|     34|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |         1|      1|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |         0|     32|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |         1|      0|   266|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |         0|     84|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |         1|      9|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |         0|    112|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |         1|     14|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |         0|    291|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |<151 cm      |         1|     24|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |         0|    144|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |         1|      3|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |         0|    166|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |         1|      9|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |         0|    393|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |         1|     14|   729|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |         0|  13140| 13779|
|6-24 months |PROBIT         |BELARUS      |>=155 cm     |         1|     92| 13779|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |         0|    398| 13779|
|6-24 months |PROBIT         |BELARUS      |[151-155) cm |         1|      3| 13779|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |         0|    145| 13779|
|6-24 months |PROBIT         |BELARUS      |<151 cm      |         1|      1| 13779|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |         0|    121|   622|
|6-24 months |PROVIDE        |BANGLADESH   |>=155 cm     |         1|      4|   622|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |         0|    163|   622|
|6-24 months |PROVIDE        |BANGLADESH   |[151-155) cm |         1|      6|   622|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |         0|    323|   622|
|6-24 months |PROVIDE        |BANGLADESH   |<151 cm      |         1|      5|   622|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |         0|    518|  1346|
|6-24 months |SAS-CompFeed   |INDIA        |>=155 cm     |         1|     38|  1346|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |         0|    243|  1346|
|6-24 months |SAS-CompFeed   |INDIA        |[151-155) cm |         1|     31|  1346|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |         0|    473|  1346|
|6-24 months |SAS-CompFeed   |INDIA        |<151 cm      |         1|     43|  1346|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |         0|     62|   374|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |         1|     12|   374|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |         0|     88|   374|
|6-24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |         1|     17|   374|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |         0|    159|   374|
|6-24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |         1|     36|   374|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |         0|   1341|  2147|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |         1|     37|  2147|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |         0|    441|  2147|
|6-24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |         1|     10|  2147|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |         0|    308|  2147|
|6-24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |         1|     10|  2147|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         0|   6223|  8038|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |         1|    110|  8038|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         0|   1205|  8038|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |         1|     20|  8038|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |         0|    473|  8038|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |         1|      7|  8038|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
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

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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


