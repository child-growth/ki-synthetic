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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |mhtcm        | swasted| n_cell|     n|
|:---------|:--------------|:------------|:------------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |>=155 cm     |       0|   4309|  6193|
|Birth     |COHORTS        |INDIA        |>=155 cm     |       1|    240|  6193|
|Birth     |COHORTS        |INDIA        |[151-155) cm |       0|    581|  6193|
|Birth     |COHORTS        |INDIA        |[151-155) cm |       1|     27|  6193|
|Birth     |COHORTS        |INDIA        |<151 cm      |       0|    983|  6193|
|Birth     |COHORTS        |INDIA        |<151 cm      |       1|     53|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |       0|     74|   735|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |       1|     10|   735|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |       0|    130|   735|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |       1|     10|   735|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |       0|    471|   735|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |       1|     40|   735|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    646|  2898|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |       1|     27|  2898|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    675|  2898|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |       1|     33|  2898|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |       0|   1456|  2898|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |       1|     61|  2898|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|   3002| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|     62| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   4327| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|     78| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |       0|  10177| 17849|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |       1|    203| 17849|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |       0|    933|  1293|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |       1|     72|  1293|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |       0|    168|  1293|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |       1|     11|  1293|
|Birth     |Keneba         |GAMBIA       |<151 cm      |       0|    102|  1293|
|Birth     |Keneba         |GAMBIA       |<151 cm      |       1|      7|  1293|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |       0|     13|    45|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |       0|     13|    45|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |<151 cm      |       0|     19|    45|
|Birth     |MAL-ED         |INDIA        |<151 cm      |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     31|   212|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |       1|      1|   212|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     43|   212|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |       1|      0|   212|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |       0|    130|   212|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |       1|      7|   212|
|Birth     |MAL-ED         |PERU         |>=155 cm     |       0|     56|   224|
|Birth     |MAL-ED         |PERU         |>=155 cm     |       1|      0|   224|
|Birth     |MAL-ED         |PERU         |[151-155) cm |       0|     44|   224|
|Birth     |MAL-ED         |PERU         |[151-155) cm |       1|      0|   224|
|Birth     |MAL-ED         |PERU         |<151 cm      |       0|    124|   224|
|Birth     |MAL-ED         |PERU         |<151 cm      |       1|      0|   224|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |       0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |       1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |       0|      6|    26|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |       0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |       0|     29|    62|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |       0|     12|    62|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |       0|     21|    62|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |       0|     67|   113|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |       1|      0|   113|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |       0|     16|   113|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |       1|      0|   113|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |       0|     30|   113|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |       1|      0|   113|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|     84|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     14|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|     11|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|      0|   109|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|    100|   575|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|      5|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|    128|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|      4|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |       0|    309|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |       1|     29|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|    130|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|     10|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|    161|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|     12|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    368|   706|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|     25|   706|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |       0|  12239| 13644|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |       1|    862| 13644|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |       0|    370| 13644|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |       1|     28| 13644|
|Birth     |PROBIT         |BELARUS      |<151 cm      |       0|    127| 13644|
|Birth     |PROBIT         |BELARUS      |<151 cm      |       1|     18| 13644|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |       0|     99|   509|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |       1|      2|   509|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    141|   509|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |       1|      1|   509|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |       0|    258|   509|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |       1|      8|   509|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |       0|    430|  1081|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |       1|     11|  1081|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |       0|    216|  1081|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |       1|      4|  1081|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |       0|    406|  1081|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |       1|     14|  1081|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|   6654|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|    410|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|   1239|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|     75|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|    486|  8890|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|     26|  8890|
|6 months  |COHORTS        |INDIA        |>=155 cm     |       0|   4901|  6850|
|6 months  |COHORTS        |INDIA        |>=155 cm     |       1|    153|  6850|
|6 months  |COHORTS        |INDIA        |[151-155) cm |       0|    623|  6850|
|6 months  |COHORTS        |INDIA        |[151-155) cm |       1|     22|  6850|
|6 months  |COHORTS        |INDIA        |<151 cm      |       0|   1109|  6850|
|6 months  |COHORTS        |INDIA        |<151 cm      |       1|     42|  6850|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |       0|    100|   929|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |       1|      0|   929|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |       0|    170|   929|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |       1|      1|   929|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |       0|    653|   929|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |       1|      5|   929|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    611|  2705|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |       1|      7|  2705|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    648|  2705|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |       1|      8|  2705|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |       0|   1411|  2705|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |       1|     20|  2705|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |       0|     49|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |       1|      0|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |       0|     43|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |       1|      0|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |       0|    147|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |       1|      0|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|   2853| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|     42| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   4100| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|     47| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |       0|   9489| 16668|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |       1|    137| 16668|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |       0|   1373|  1803|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |       1|     21|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |       0|    243|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |       1|      5|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |       0|    159|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |       1|      2|  1803|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |       0|    492|   835|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |       1|      0|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |       0|    172|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |       1|      0|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |       0|    171|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |       1|      0|   835|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |       0|     57|   233|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |       1|      3|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |       0|     55|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |       1|      0|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |       0|    115|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |       1|      3|   233|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     34|   238|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |       1|      1|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     54|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |       1|      0|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |       0|    149|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |       1|      0|   238|
|6 months  |MAL-ED         |PERU         |>=155 cm     |       0|     66|   269|
|6 months  |MAL-ED         |PERU         |>=155 cm     |       1|      0|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |       0|     53|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |       1|      0|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |       0|    150|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |       1|      0|   269|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |       0|     44|   236|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |       0|     58|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |       0|    134|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |       0|     97|   208|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |       1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |       0|     43|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |       1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |       0|     68|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |       1|      0|   208|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |       0|    143|   243|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |       1|      0|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |       0|     43|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |       1|      0|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |       0|     57|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |       1|      0|   243|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|    177|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|      3|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     35|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|      0|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|     31|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|      0|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|     92|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|      0|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|    126|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|      3|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |       0|    313|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |       1|      3|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|    143|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|      0|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|    172|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|      0|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    399|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|      0|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |       0|  12548| 13081|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |       1|      5| 13081|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |       0|    384| 13081|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |       1|      1| 13081|
|6 months  |PROBIT         |BELARUS      |<151 cm      |       0|    143| 13081|
|6 months  |PROBIT         |BELARUS      |<151 cm      |       1|      0| 13081|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |       0|    111|   586|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |       1|      2|   586|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    158|   586|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |       1|      1|   586|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |       0|    312|   586|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |       1|      2|   586|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |       0|    528|  1315|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |       1|     16|  1315|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |       0|    262|  1315|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |       1|     11|  1315|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |       0|    484|  1315|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |       1|     14|  1315|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |       0|     67|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |       1|      3|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |       0|     94|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |       1|      6|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |       0|    198|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |       1|     10|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |       0|   1277|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |       1|     10|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |       0|    429|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |       1|      1|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |       0|    291|  2009|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |       1|      1|  2009|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|   5584|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|     48|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|   1073|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|      7|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|    407|  7127|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|      8|  7127|
|24 months |COHORTS        |INDIA        |>=155 cm     |       0|   3701|  5291|
|24 months |COHORTS        |INDIA        |>=155 cm     |       1|     39|  5291|
|24 months |COHORTS        |INDIA        |[151-155) cm |       0|    555|  5291|
|24 months |COHORTS        |INDIA        |[151-155) cm |       1|      6|  5291|
|24 months |COHORTS        |INDIA        |<151 cm      |       0|    979|  5291|
|24 months |COHORTS        |INDIA        |<151 cm      |       1|     11|  5291|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |       0|    110|   991|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |       1|      0|   991|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |       0|    177|   991|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |       1|      1|   991|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |       0|    701|   991|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |       1|      2|   991|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |       0|    554|  2448|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |       1|      1|  2448|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |       0|    586|  2448|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |       1|      4|  2448|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |       0|   1283|  2448|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |       1|     20|  2448|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |       0|   1379|  8547|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |       1|     63|  8547|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |       0|   2037|  8547|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |       1|     82|  8547|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |       0|   4802|  8547|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |       1|    184|  8547|
|24 months |Keneba         |GAMBIA       |>=155 cm     |       0|   1158|  1509|
|24 months |Keneba         |GAMBIA       |>=155 cm     |       1|     18|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |       0|    207|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |       1|      4|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |       0|    120|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |       1|      2|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |       0|    333|   561|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |       1|      0|   561|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |       0|    111|   561|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |       1|      1|   561|
|24 months |LCNI-5         |MALAWI       |<151 cm      |       0|    116|   561|
|24 months |LCNI-5         |MALAWI       |<151 cm      |       1|      0|   561|
|24 months |MAL-ED         |INDIA        |>=155 cm     |       0|     56|   224|
|24 months |MAL-ED         |INDIA        |>=155 cm     |       1|      1|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |       0|     50|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |       1|      1|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |       0|    116|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |       1|      0|   224|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |       0|     31|   209|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |       1|      0|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |       0|     50|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |       1|      0|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |       0|    128|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |       1|      0|   209|
|24 months |MAL-ED         |PERU         |>=155 cm     |       0|     50|   197|
|24 months |MAL-ED         |PERU         |>=155 cm     |       1|      1|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |       0|     41|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |       1|      0|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |       0|    105|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |       1|      0|   197|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |       0|     42|   228|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |       0|     56|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |       0|    130|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |       0|     76|   168|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |       1|      0|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |       0|     36|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |       1|      0|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |       0|     55|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |       1|      1|   168|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |       0|    127|   211|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |       1|      0|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |       0|     36|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |       1|      0|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |       0|     48|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |       1|      0|   211|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |       0|    171|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |       1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |       0|     33|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |       1|      0|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |       0|     28|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |       1|      0|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |       0|     73|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |       1|      1|   428|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |       0|     95|   428|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |       1|      2|   428|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |       0|    250|   428|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |       1|      7|   428|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |       0|    103|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |       1|      0|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |       0|    128|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |       1|      2|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |       0|    278|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |       1|      2|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |       0|   3770|  3935|
|24 months |PROBIT         |BELARUS      |>=155 cm     |       1|      6|  3935|
|24 months |PROBIT         |BELARUS      |[151-155) cm |       0|    115|  3935|
|24 months |PROBIT         |BELARUS      |[151-155) cm |       1|      1|  3935|
|24 months |PROBIT         |BELARUS      |<151 cm      |       0|     43|  3935|
|24 months |PROBIT         |BELARUS      |<151 cm      |       1|      0|  3935|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |       0|    102|   563|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |       1|      4|   563|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |       0|    151|   563|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |       1|      4|   563|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |       0|    301|   563|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |       1|      1|   563|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |       0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       0|    257|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |       1|     17|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       0|     63|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |       1|      7|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |       0|     19|   367|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |       1|      4|   367|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


