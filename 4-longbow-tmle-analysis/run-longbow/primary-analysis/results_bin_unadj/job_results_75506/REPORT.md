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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |mhtcm        | wasted| n_cell|     n|
|:---------|:--------------|:------------|:------------|------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |>=155 cm     |      0|   3730|  6193|
|Birth     |COHORTS        |INDIA        |>=155 cm     |      1|    819|  6193|
|Birth     |COHORTS        |INDIA        |[151-155) cm |      0|    511|  6193|
|Birth     |COHORTS        |INDIA        |[151-155) cm |      1|     97|  6193|
|Birth     |COHORTS        |INDIA        |<151 cm      |      0|    856|  6193|
|Birth     |COHORTS        |INDIA        |<151 cm      |      1|    180|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |      0|     58|   735|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |      1|     26|   735|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |      0|    109|   735|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |      1|     31|   735|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |      0|    382|   735|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |      1|    129|   735|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |      0|    565|  2898|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |      1|    108|  2898|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |      0|    603|  2898|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |      1|    105|  2898|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |      0|   1279|  2898|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |      1|    238|  2898|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |      0|   2726| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |      1|    338| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |      0|   3941| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |      1|    464| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |      0|   9225| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |      1|   1155| 17849|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |      0|    753|  1293|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |      1|    252|  1293|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |      0|    133|  1293|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |      1|     46|  1293|
|Birth     |Keneba         |GAMBIA       |<151 cm      |      0|     79|  1293|
|Birth     |Keneba         |GAMBIA       |<151 cm      |      1|     30|  1293|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |      0|     12|    45|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |      0|     12|    45|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |      1|      1|    45|
|Birth     |MAL-ED         |INDIA        |<151 cm      |      0|     16|    45|
|Birth     |MAL-ED         |INDIA        |<151 cm      |      1|      3|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |      0|     26|   212|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |      1|      6|   212|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |      0|     34|   212|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |      1|      9|   212|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |      0|    117|   212|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |      1|     20|   212|
|Birth     |MAL-ED         |PERU         |>=155 cm     |      0|     54|   224|
|Birth     |MAL-ED         |PERU         |>=155 cm     |      1|      2|   224|
|Birth     |MAL-ED         |PERU         |[151-155) cm |      0|     43|   224|
|Birth     |MAL-ED         |PERU         |[151-155) cm |      1|      1|   224|
|Birth     |MAL-ED         |PERU         |<151 cm      |      0|    122|   224|
|Birth     |MAL-ED         |PERU         |<151 cm      |      1|      2|   224|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |      0|      5|    26|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |      1|      2|    26|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |      0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |      0|     28|    62|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |      1|      1|    62|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |      0|     12|    62|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |      1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |      0|     20|    62|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |      1|      1|    62|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |      0|     66|   113|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |      1|      1|   113|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |      0|     16|   113|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |      1|      0|   113|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |      0|     30|   113|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |      1|      0|   113|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |      0|     76|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |      1|      8|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |      0|     11|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |      1|      3|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |      0|     11|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |      1|      0|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |      0|     78|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |      1|     27|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |      0|     98|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |      1|     34|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |      0|    231|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |      1|    107|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |      0|    110|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |      1|     30|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |      0|    130|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |      1|     43|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |      0|    294|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |      1|     99|   706|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |      0|  10357| 13644|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |      1|   2744| 13644|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |      0|    315| 13644|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |      1|     83| 13644|
|Birth     |PROBIT         |BELARUS      |<151 cm      |      0|    103| 13644|
|Birth     |PROBIT         |BELARUS      |<151 cm      |      1|     42| 13644|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |      0|     79|   509|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |      1|     22|   509|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |      0|    115|   509|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |      1|     27|   509|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |      0|    204|   509|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |      1|     62|   509|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |      0|    405|  1081|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |      1|     36|  1081|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |      0|    186|  1081|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |      1|     34|  1081|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |      0|    374|  1081|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |      1|     46|  1081|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      0|   5994|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      1|   1070|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      0|   1113|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      1|    201|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |      0|    425|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |      1|     87|  8890|
|6 months  |COHORTS        |INDIA        |>=155 cm     |      0|   4421|  6850|
|6 months  |COHORTS        |INDIA        |>=155 cm     |      1|    633|  6850|
|6 months  |COHORTS        |INDIA        |[151-155) cm |      0|    563|  6850|
|6 months  |COHORTS        |INDIA        |[151-155) cm |      1|     82|  6850|
|6 months  |COHORTS        |INDIA        |<151 cm      |      0|   1001|  6850|
|6 months  |COHORTS        |INDIA        |<151 cm      |      1|    150|  6850|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |      0|     97|   929|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |      1|      3|   929|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |      0|    169|   929|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |      1|      2|   929|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |      0|    634|   929|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |      1|     24|   929|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |      0|    583|  2705|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |      1|     35|  2705|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |      0|    621|  2705|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |      1|     35|  2705|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |      0|   1340|  2705|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |      1|     91|  2705|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |      0|     49|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |      1|      0|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |      0|     42|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |      1|      1|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |      0|    144|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |      1|      3|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |      0|   2643| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |      1|    252| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |      0|   3802| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |      1|    345| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |      0|   8813| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |      1|    813| 16668|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |      0|   1313|  1803|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |      1|     81|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |      0|    237|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |      1|     11|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |      0|    148|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |      1|     13|  1803|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |      0|    485|   835|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |      1|      7|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |      0|    168|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |      1|      4|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |      0|    168|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |      1|      3|   835|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |      0|     53|   233|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |      1|      7|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |      0|     51|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |      1|      4|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |      0|    110|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |      1|      8|   233|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |      0|     33|   238|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |      1|      2|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |      0|     51|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |      1|      3|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |      0|    147|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |      1|      2|   238|
|6 months  |MAL-ED         |PERU         |>=155 cm     |      0|     66|   269|
|6 months  |MAL-ED         |PERU         |>=155 cm     |      1|      0|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |      0|     53|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |      1|      0|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |      0|    150|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |      1|      0|   269|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |      0|     42|   236|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |      1|      2|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |      0|     58|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |      1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |      0|    132|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |      1|      2|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |      0|     97|   208|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |      1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |      0|     43|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |      1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |      0|     67|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |      1|      1|   208|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |      0|    143|   243|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |      1|      0|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |      0|     43|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |      1|      0|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |      0|     56|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |      1|      1|   243|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |      0|    175|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |      1|      5|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |      0|     34|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |      1|      1|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |      0|     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |      1|      1|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |      0|     86|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |      1|      6|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |      0|    122|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |      1|      7|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |      0|    294|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |      1|     22|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |      0|    141|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |      1|      2|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |      0|    165|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |      1|      7|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |      0|    387|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |      1|     12|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |      0|  12468| 13081|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |      1|     85| 13081|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |      0|    382| 13081|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |      1|      3| 13081|
|6 months  |PROBIT         |BELARUS      |<151 cm      |      0|    143| 13081|
|6 months  |PROBIT         |BELARUS      |<151 cm      |      1|      0| 13081|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |      0|    107|   586|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |      1|      6|   586|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |      0|    152|   586|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |      1|      7|   586|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |      0|    303|   586|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |      1|     11|   586|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |      0|    477|  1315|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |      1|     67|  1315|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |      0|    237|  1315|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |      1|     36|  1315|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |      0|    438|  1315|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |      1|     60|  1315|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |      0|     54|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |      1|     16|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |      0|     83|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |      1|     17|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |      0|    172|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |      1|     36|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |      0|   1237|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |      1|     50|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|    411|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |      1|     19|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |      0|    275|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|     17|  2009|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      0|   5460|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      1|    172|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      0|   1057|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      1|     23|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |      0|    396|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |      1|     19|  7127|
|24 months |COHORTS        |INDIA        |>=155 cm     |      0|   3407|  5291|
|24 months |COHORTS        |INDIA        |>=155 cm     |      1|    333|  5291|
|24 months |COHORTS        |INDIA        |[151-155) cm |      0|    508|  5291|
|24 months |COHORTS        |INDIA        |[151-155) cm |      1|     53|  5291|
|24 months |COHORTS        |INDIA        |<151 cm      |      0|    891|  5291|
|24 months |COHORTS        |INDIA        |<151 cm      |      1|     99|  5291|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |      0|    106|   991|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |      1|      4|   991|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |      0|    171|   991|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |      1|      7|   991|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |      0|    671|   991|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |      1|     32|   991|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |      0|    523|  2448|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |      1|     32|  2448|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |      0|    558|  2448|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |      1|     32|  2448|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |      0|   1200|  2448|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |      1|    103|  2448|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |      0|   1138|  8547|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |      1|    304|  8547|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |      0|   1632|  8547|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |      1|    487|  8547|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |      0|   3917|  8547|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |      1|   1069|  8547|
|24 months |Keneba         |GAMBIA       |>=155 cm     |      0|   1052|  1509|
|24 months |Keneba         |GAMBIA       |>=155 cm     |      1|    124|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |      0|    189|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |      1|     22|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |      0|    104|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |      1|     18|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |      0|    327|   561|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |      1|      6|   561|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |      0|    109|   561|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |      1|      3|   561|
|24 months |LCNI-5         |MALAWI       |<151 cm      |      0|    115|   561|
|24 months |LCNI-5         |MALAWI       |<151 cm      |      1|      1|   561|
|24 months |MAL-ED         |INDIA        |>=155 cm     |      0|     49|   224|
|24 months |MAL-ED         |INDIA        |>=155 cm     |      1|      8|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |      0|     45|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |      1|      6|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |      0|    103|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |      1|     13|   224|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |      0|     27|   209|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |      1|      4|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |      0|     47|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |      1|      3|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |      0|    115|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |      1|     13|   209|
|24 months |MAL-ED         |PERU         |>=155 cm     |      0|     50|   197|
|24 months |MAL-ED         |PERU         |>=155 cm     |      1|      1|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |      0|     41|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |      1|      0|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |      0|    103|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |      1|      2|   197|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |      0|     41|   228|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |      1|      1|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |      0|     56|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |      1|      0|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |      0|    126|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |      1|      4|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |      0|     75|   168|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |      1|      1|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |      0|     36|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |      1|      0|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |      0|     54|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |      1|      2|   168|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |      0|    125|   211|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |      1|      2|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |      0|     36|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |      1|      0|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |      0|     46|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |      1|      2|   211|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |      0|    171|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |      1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |      0|     32|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |      1|      1|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |      0|     28|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |      1|      0|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |      0|     65|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |      1|      9|   428|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |      0|     83|   428|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |      1|     14|   428|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |      0|    227|   428|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |      1|     30|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |      0|     96|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |      1|      7|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |      0|    118|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |      1|     12|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |      0|    254|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |      1|     26|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |      0|   3745|  3935|
|24 months |PROBIT         |BELARUS      |>=155 cm     |      1|     31|  3935|
|24 months |PROBIT         |BELARUS      |[151-155) cm |      0|    115|  3935|
|24 months |PROBIT         |BELARUS      |[151-155) cm |      1|      1|  3935|
|24 months |PROBIT         |BELARUS      |<151 cm      |      0|     43|  3935|
|24 months |PROBIT         |BELARUS      |<151 cm      |      1|      0|  3935|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |      0|     94|   563|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |      1|     12|   563|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |      0|    134|   563|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |      1|     21|   563|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |      0|    274|   563|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |      1|     28|   563|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      0|    231|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |      1|     43|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      0|     56|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |      1|     14|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |      0|     15|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |      1|      8|   367|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


