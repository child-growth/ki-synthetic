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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |meducyrs | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           1|     74|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     42|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     59|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |           0|     66|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |           1|     95|   373|
|0-24 months |COHORTS        |INDIA        |Low      |           0|   1066|  6679|
|0-24 months |COHORTS        |INDIA        |Low      |           1|    586|  6679|
|0-24 months |COHORTS        |INDIA        |Medium   |           0|   2553|  6679|
|0-24 months |COHORTS        |INDIA        |Medium   |           1|   1201|  6679|
|0-24 months |COHORTS        |INDIA        |High     |           0|    871|  6679|
|0-24 months |COHORTS        |INDIA        |High     |           1|    402|  6679|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           0|    460|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           1|    170|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           0|    322|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           1|    117|  1333|
|0-24 months |COHORTS        |GUATEMALA    |High     |           0|    209|  1333|
|0-24 months |COHORTS        |GUATEMALA    |High     |           1|     55|  1333|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    641|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    485|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    327|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    226|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           0|    848|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           1|    518|  3045|
|0-24 months |EE             |PAKISTAN     |Low      |           0|    129|   376|
|0-24 months |EE             |PAKISTAN     |Low      |           1|    190|   376|
|0-24 months |EE             |PAKISTAN     |Medium   |           0|     12|   376|
|0-24 months |EE             |PAKISTAN     |Medium   |           1|     23|   376|
|0-24 months |EE             |PAKISTAN     |High     |           0|     10|   376|
|0-24 months |EE             |PAKISTAN     |High     |           1|     12|   376|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    191|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    286|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     54|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     74|   684|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           0|     34|   684|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           1|     45|   684|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |           0|     99|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |           1|      6|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           0|     74|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           1|      9|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |           0|     99|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |           1|     14|   301|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   7278| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   2547| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   6098| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|   2059| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           0|   6611| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           1|   2344| 26937|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|   1227|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    554|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|   1172|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    533|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           0|   1350|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    598|  5434|
|0-24 months |LCNI-5         |MALAWI       |Low      |           0|    248|   825|
|0-24 months |LCNI-5         |MALAWI       |Low      |           1|     21|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           0|    247|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           1|     20|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |           0|    264|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |           1|     25|   825|
|0-24 months |MAL-ED         |INDIA        |Low      |           0|     47|   210|
|0-24 months |MAL-ED         |INDIA        |Low      |           1|     37|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |           0|     25|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |           1|     25|   210|
|0-24 months |MAL-ED         |INDIA        |High     |           0|     39|   210|
|0-24 months |MAL-ED         |INDIA        |High     |           1|     37|   210|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     48|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     30|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|     42|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|     16|   254|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           0|     79|   254|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           1|     39|   254|
|0-24 months |MAL-ED         |PERU         |Low      |           0|    112|   301|
|0-24 months |MAL-ED         |PERU         |Low      |           1|      8|   301|
|0-24 months |MAL-ED         |PERU         |Medium   |           0|     82|   301|
|0-24 months |MAL-ED         |PERU         |Medium   |           1|     12|   301|
|0-24 months |MAL-ED         |PERU         |High     |           0|     80|   301|
|0-24 months |MAL-ED         |PERU         |High     |           1|      7|   301|
|0-24 months |MAL-ED         |NEPAL        |Low      |           0|     78|   229|
|0-24 months |MAL-ED         |NEPAL        |Low      |           1|     33|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           0|     34|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           1|     22|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |           0|     46|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |           1|     16|   229|
|0-24 months |MAL-ED         |BRAZIL       |Low      |           0|     93|   233|
|0-24 months |MAL-ED         |BRAZIL       |Low      |           1|      8|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |           0|     88|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |           1|      8|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |           0|     32|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |           1|      4|   233|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           0|     55|   211|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           1|      9|   211|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           0|     67|   211|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           1|     13|   211|
|0-24 months |MAL-ED         |TANZANIA     |High     |           0|     57|   211|
|0-24 months |MAL-ED         |TANZANIA     |High     |           1|     10|   211|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|    141|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     31|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|     31|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|     10|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|     76|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|     23|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |           0|    132|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |           1|    135|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |           0|    104|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |           1|     92|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |           0|     90|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |           1|     71|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|    155|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     86|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|    120|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     47|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|    233|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|    117|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |           0|   4124| 16898|
|0-24 months |PROBIT         |BELARUS      |Low      |           1|   1356| 16898|
|0-24 months |PROBIT         |BELARUS      |Medium   |           0|   6297| 16898|
|0-24 months |PROBIT         |BELARUS      |Medium   |           1|   2225| 16898|
|0-24 months |PROBIT         |BELARUS      |High     |           0|   2161| 16898|
|0-24 months |PROBIT         |BELARUS      |High     |           1|    735| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           0|    127|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     76|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|    175|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     96|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           0|    152|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           1|     74|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    377|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    289|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    302|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|    206|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           0|    206|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           1|    130|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|    184|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|    153|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     15|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|     25|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|     19|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|     75|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|     29|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|   1266|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    400|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|    489|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|    137|  2396|
|0-24 months |Vellore Crypto |INDIA        |Low      |           0|     52|   410|
|0-24 months |Vellore Crypto |INDIA        |Low      |           1|     95|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |           0|     52|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |           1|    100|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |           0|     37|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |           1|     74|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|   1933| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    603| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   2742| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    831| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|   5961| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|   1866| 13936|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |           0|     45|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |           1|     64|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     50|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     50|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |           0|     83|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |           1|     76|   368|
|0-6 months  |COHORTS        |INDIA        |Low      |           0|   1172|  6427|
|0-6 months  |COHORTS        |INDIA        |Low      |           1|    418|  6427|
|0-6 months  |COHORTS        |INDIA        |Medium   |           0|   2710|  6427|
|0-6 months  |COHORTS        |INDIA        |Medium   |           1|    900|  6427|
|0-6 months  |COHORTS        |INDIA        |High     |           0|    935|  6427|
|0-6 months  |COHORTS        |INDIA        |High     |           1|    292|  6427|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           0|    398|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           1|    107|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           0|    273|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           1|     74|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           0|    172|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           1|     32|  1056|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           0|    879|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           1|    247|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           0|    429|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           1|    124|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           0|   1019|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           1|    346|  3044|
|0-6 months  |EE             |PAKISTAN     |Low      |           0|    219|   376|
|0-6 months  |EE             |PAKISTAN     |Low      |           1|    100|   376|
|0-6 months  |EE             |PAKISTAN     |Medium   |           0|     21|   376|
|0-6 months  |EE             |PAKISTAN     |Medium   |           1|     14|   376|
|0-6 months  |EE             |PAKISTAN     |High     |           0|     13|   376|
|0-6 months  |EE             |PAKISTAN     |High     |           1|      9|   376|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           0|    294|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           1|    183|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           0|     82|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           1|     46|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           0|     50|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           1|     29|   684|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |           0|     95|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |           1|      4|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |           0|     75|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |           1|      2|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |           0|    101|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |           1|      4|   281|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           0|   8030| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           1|   1759| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           0|   6757| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           1|   1369| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           0|   7325| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           1|   1600| 26840|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           0|   1487|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           1|    168|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           0|   1427|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           1|    172|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           0|   1622|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           1|    211|  5087|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           0|     87|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           1|      2|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           0|     91|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           1|      1|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |           0|     83|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |           1|      1|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |           0|     58|   210|
|0-6 months  |MAL-ED         |INDIA        |Low      |           1|     26|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           0|     36|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           1|     14|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |           0|     49|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |           1|     27|   210|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           0|     58|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           1|     20|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           0|     46|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           1|     12|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           0|     92|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           1|     26|   254|
|0-6 months  |MAL-ED         |PERU         |Low      |           0|    118|   301|
|0-6 months  |MAL-ED         |PERU         |Low      |           1|      2|   301|
|0-6 months  |MAL-ED         |PERU         |Medium   |           0|     87|   301|
|0-6 months  |MAL-ED         |PERU         |Medium   |           1|      7|   301|
|0-6 months  |MAL-ED         |PERU         |High     |           0|     85|   301|
|0-6 months  |MAL-ED         |PERU         |High     |           1|      2|   301|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           0|     88|   229|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           1|     23|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           0|     41|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           1|     15|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |           0|     54|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |           1|      8|   229|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |           0|     94|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |           1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |           0|     91|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |           1|      5|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |           0|     33|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |           1|      3|   233|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           0|     62|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           1|      2|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           0|     76|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           1|      4|   211|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           0|     63|   211|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           1|      4|   211|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           0|    156|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           1|     16|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           0|     34|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           1|      7|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           0|     87|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           1|     12|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |           0|    166|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |           1|     99|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |           0|    124|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |           1|     72|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |           0|    110|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |           1|     51|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           0|    177|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           1|     64|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           0|    128|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           1|     39|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           0|    258|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           1|     92|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |           0|   4162| 16895|
|0-6 months  |PROBIT         |BELARUS      |Low      |           1|   1317| 16895|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           0|   6335| 16895|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           1|   2185| 16895|
|0-6 months  |PROBIT         |BELARUS      |High     |           0|   2174| 16895|
|0-6 months  |PROBIT         |BELARUS      |High     |           1|    722| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           0|    151|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           1|     52|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           0|    197|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           1|     74|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           0|    171|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           1|     55|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           0|    509|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           1|    153|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           0|    397|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           1|    109|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           0|    267|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           1|     67|  1502|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           0|    280|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           1|     57|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           0|     27|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           1|     13|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           0|     33|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           1|      8|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           0|     83|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           1|     21|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           0|   1433|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           1|    233|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           0|    547|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           1|     79|  2396|
|0-6 months  |Vellore Crypto |INDIA        |Low      |           0|     68|   410|
|0-6 months  |Vellore Crypto |INDIA        |Low      |           1|     79|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |           0|     71|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |           1|     81|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |           0|     48|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |           1|     63|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           0|   2067| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           1|    455| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   2915| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    630| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           0|   6352| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           1|   1424| 13843|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           0|     81|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           1|     30|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     77|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     24|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |           0|    116|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |           1|     45|   373|
|6-24 months |COHORTS        |INDIA        |Low      |           0|   1337|  6254|
|6-24 months |COHORTS        |INDIA        |Low      |           1|    222|  6254|
|6-24 months |COHORTS        |INDIA        |Medium   |           0|   3108|  6254|
|6-24 months |COHORTS        |INDIA        |Medium   |           1|    395|  6254|
|6-24 months |COHORTS        |INDIA        |High     |           0|   1054|  6254|
|6-24 months |COHORTS        |INDIA        |High     |           1|    138|  6254|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           0|    502|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           1|     75|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           0|    339|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           1|     51|  1207|
|6-24 months |COHORTS        |GUATEMALA    |High     |           0|    212|  1207|
|6-24 months |COHORTS        |GUATEMALA    |High     |           1|     28|  1207|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    717|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    343|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    367|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    144|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           0|    976|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           1|    262|  2809|
|6-24 months |EE             |PAKISTAN     |Low      |           0|    181|   370|
|6-24 months |EE             |PAKISTAN     |Low      |           1|    133|   370|
|6-24 months |EE             |PAKISTAN     |Medium   |           0|     20|   370|
|6-24 months |EE             |PAKISTAN     |Medium   |           1|     15|   370|
|6-24 months |EE             |PAKISTAN     |High     |           0|      9|   370|
|6-24 months |EE             |PAKISTAN     |High     |           1|     12|   370|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    212|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    197|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     61|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     52|   590|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           0|     38|   590|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           1|     30|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |           0|     90|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |           1|      2|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           0|     68|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           1|      8|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |           0|     88|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |           1|     11|   267|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   5012| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   1014| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   4453| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|    865| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           0|   4988| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           1|    957| 17289|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|   1323|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    455|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|   1280|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    422|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           0|   1479|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    462|  5421|
|6-24 months |LCNI-5         |MALAWI       |Low      |           0|    244|   811|
|6-24 months |LCNI-5         |MALAWI       |Low      |           1|     20|   811|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           0|    246|   811|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           1|     19|   811|
|6-24 months |LCNI-5         |MALAWI       |High     |           0|    258|   811|
|6-24 months |LCNI-5         |MALAWI       |High     |           1|     24|   811|
|6-24 months |MAL-ED         |INDIA        |Low      |           0|     60|   198|
|6-24 months |MAL-ED         |INDIA        |Low      |           1|     21|   198|
|6-24 months |MAL-ED         |INDIA        |Medium   |           0|     31|   198|
|6-24 months |MAL-ED         |INDIA        |Medium   |           1|     14|   198|
|6-24 months |MAL-ED         |INDIA        |High     |           0|     55|   198|
|6-24 months |MAL-ED         |INDIA        |High     |           1|     17|   198|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     56|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     14|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|     47|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|      7|   232|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           0|     86|   232|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           1|     22|   232|
|6-24 months |MAL-ED         |PERU         |Low      |           0|    101|   269|
|6-24 months |MAL-ED         |PERU         |Low      |           1|      6|   269|
|6-24 months |MAL-ED         |PERU         |Medium   |           0|     76|   269|
|6-24 months |MAL-ED         |PERU         |Medium   |           1|      7|   269|
|6-24 months |MAL-ED         |PERU         |High     |           0|     74|   269|
|6-24 months |MAL-ED         |PERU         |High     |           1|      5|   269|
|6-24 months |MAL-ED         |NEPAL        |Low      |           0|     94|   225|
|6-24 months |MAL-ED         |NEPAL        |Low      |           1|     14|   225|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           0|     46|   225|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           1|     10|   225|
|6-24 months |MAL-ED         |NEPAL        |High     |           0|     51|   225|
|6-24 months |MAL-ED         |NEPAL        |High     |           1|     10|   225|
|6-24 months |MAL-ED         |BRAZIL       |Low      |           0|     85|   207|
|6-24 months |MAL-ED         |BRAZIL       |Low      |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |           0|     85|   207|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |           1|      3|   207|
|6-24 months |MAL-ED         |BRAZIL       |High     |           0|     31|   207|
|6-24 months |MAL-ED         |BRAZIL       |High     |           1|      2|   207|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           0|     52|   200|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           1|      8|   200|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           0|     65|   200|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           1|     10|   200|
|6-24 months |MAL-ED         |TANZANIA     |High     |           0|     57|   200|
|6-24 months |MAL-ED         |TANZANIA     |High     |           1|      8|   200|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|    125|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     18|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|     29|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      5|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|     68|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|     14|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |           0|    151|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |           1|     72|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |           0|    130|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |           1|     49|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |           0|    102|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |           1|     38|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|    200|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     33|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|    142|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     19|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|    292|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|     44|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |           0|   5330| 16598|
|6-24 months |PROBIT         |BELARUS      |Low      |           1|     50| 16598|
|6-24 months |PROBIT         |BELARUS      |Medium   |           0|   8304| 16598|
|6-24 months |PROBIT         |BELARUS      |Medium   |           1|     72| 16598|
|6-24 months |PROBIT         |BELARUS      |High     |           0|   2825| 16598|
|6-24 months |PROBIT         |BELARUS      |High     |           1|     17| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           0|    153|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     34|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|    200|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     35|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           0|    163|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           1|     30|   615|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    413|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    203|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    328|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|    137|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           0|    223|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           1|     84|  1388|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|    209|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|    113|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     25|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|     15|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     25|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|     15|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|     68|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|     13|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|   1165|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    233|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|    461|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|     78|  2018|
|6-24 months |Vellore Crypto |INDIA        |Low      |           0|    105|   410|
|6-24 months |Vellore Crypto |INDIA        |Low      |           1|     42|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |           0|    104|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |           1|     48|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |           0|     74|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |           1|     37|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|   1748| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    186| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   2508| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    276| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|   5517| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|    574| 10809|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


