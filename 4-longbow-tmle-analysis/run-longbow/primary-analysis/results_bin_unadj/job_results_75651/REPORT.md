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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |meducyrs | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |            0|     75|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |            1|     36|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |            0|     82|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |            1|     19|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |            0|    124|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |            1|     37|   373|
|0-24 months |COHORTS        |INDIA        |Low      |            0|   1466|  6679|
|0-24 months |COHORTS        |INDIA        |Low      |            1|    186|  6679|
|0-24 months |COHORTS        |INDIA        |Medium   |            0|   3375|  6679|
|0-24 months |COHORTS        |INDIA        |Medium   |            1|    379|  6679|
|0-24 months |COHORTS        |INDIA        |High     |            0|   1144|  6679|
|0-24 months |COHORTS        |INDIA        |High     |            1|    129|  6679|
|0-24 months |COHORTS        |GUATEMALA    |Low      |            0|    588|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Low      |            1|     42|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |            0|    403|  1333|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |            1|     36|  1333|
|0-24 months |COHORTS        |GUATEMALA    |High     |            0|    245|  1333|
|0-24 months |COHORTS        |GUATEMALA    |High     |            1|     19|  1333|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |            0|    982|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |            1|    144|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |            0|    467|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |            1|     86|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |High     |            0|   1214|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |High     |            1|    152|  3045|
|0-24 months |EE             |PAKISTAN     |Low      |            0|    255|   376|
|0-24 months |EE             |PAKISTAN     |Low      |            1|     64|   376|
|0-24 months |EE             |PAKISTAN     |Medium   |            0|     25|   376|
|0-24 months |EE             |PAKISTAN     |Medium   |            1|     10|   376|
|0-24 months |EE             |PAKISTAN     |High     |            0|     16|   376|
|0-24 months |EE             |PAKISTAN     |High     |            1|      6|   376|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |            0|    349|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |            1|    128|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |            0|     95|   684|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |            1|     33|   684|
|0-24 months |GMS-Nepal      |NEPAL        |High     |            0|     63|   684|
|0-24 months |GMS-Nepal      |NEPAL        |High     |            1|     16|   684|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |            0|    103|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |            1|      2|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |            0|     83|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |            1|      0|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |            0|    112|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |            1|      1|   301|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |            0|   9201| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |            1|    624| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |            0|   7686| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |            1|    471| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |            0|   8407| 26937|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |            1|    548| 26937|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |            0|   1675|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |            1|    106|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |            0|   1586|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |            1|    119|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |            0|   1830|  5434|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |            1|    118|  5434|
|0-24 months |LCNI-5         |MALAWI       |Low      |            0|    267|   825|
|0-24 months |LCNI-5         |MALAWI       |Low      |            1|      2|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |            0|    266|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |            1|      1|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |            0|    284|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |            1|      5|   825|
|0-24 months |MAL-ED         |INDIA        |Low      |            0|     75|   210|
|0-24 months |MAL-ED         |INDIA        |Low      |            1|      9|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |            0|     46|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |            1|      4|   210|
|0-24 months |MAL-ED         |INDIA        |High     |            0|     71|   210|
|0-24 months |MAL-ED         |INDIA        |High     |            1|      5|   210|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |            0|     72|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |            1|      6|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |            0|     55|   254|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |            1|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH   |High     |            0|    108|   254|
|0-24 months |MAL-ED         |BANGLADESH   |High     |            1|     10|   254|
|0-24 months |MAL-ED         |PERU         |Low      |            0|    120|   301|
|0-24 months |MAL-ED         |PERU         |Low      |            1|      0|   301|
|0-24 months |MAL-ED         |PERU         |Medium   |            0|     92|   301|
|0-24 months |MAL-ED         |PERU         |Medium   |            1|      2|   301|
|0-24 months |MAL-ED         |PERU         |High     |            0|     85|   301|
|0-24 months |MAL-ED         |PERU         |High     |            1|      2|   301|
|0-24 months |MAL-ED         |NEPAL        |Low      |            0|    106|   229|
|0-24 months |MAL-ED         |NEPAL        |Low      |            1|      5|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |            0|     52|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |            1|      4|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |            0|     62|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |            1|      0|   229|
|0-24 months |MAL-ED         |BRAZIL       |Low      |            0|    101|   233|
|0-24 months |MAL-ED         |BRAZIL       |Low      |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |            0|     94|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |            0|     34|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |            1|      2|   233|
|0-24 months |MAL-ED         |TANZANIA     |Low      |            0|     62|   211|
|0-24 months |MAL-ED         |TANZANIA     |Low      |            1|      2|   211|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |            0|     76|   211|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |            1|      4|   211|
|0-24 months |MAL-ED         |TANZANIA     |High     |            0|     65|   211|
|0-24 months |MAL-ED         |TANZANIA     |High     |            1|      2|   211|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |            0|    168|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |            1|      4|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            0|     38|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            1|      3|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |            0|     90|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |            1|      9|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |            0|    223|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |            1|     44|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |            0|    165|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |            1|     31|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |            0|    137|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |            1|     24|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |            0|    224|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |            1|     17|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            0|    148|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            1|     19|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |            0|    320|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |            1|     30|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |            0|   5071| 16898|
|0-24 months |PROBIT         |BELARUS      |Low      |            1|    409| 16898|
|0-24 months |PROBIT         |BELARUS      |Medium   |            0|   7831| 16898|
|0-24 months |PROBIT         |BELARUS      |Medium   |            1|    691| 16898|
|0-24 months |PROBIT         |BELARUS      |High     |            0|   2671| 16898|
|0-24 months |PROBIT         |BELARUS      |High     |            1|    225| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |            0|    187|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |            1|     16|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |            0|    254|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |            1|     17|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |            0|    217|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |            1|      9|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |            0|    549|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |            1|    117|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |            0|    435|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |            1|     73|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |High     |            0|    305|  1510|
|0-24 months |SAS-CompFeed   |INDIA        |High     |            1|     31|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |            0|    279|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |            1|     58|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            0|     32|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            1|      8|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |            0|     36|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |            1|      5|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |            0|     97|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |            1|      7|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            0|   1551|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            1|    115|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |            0|    590|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |            1|     36|  2396|
|0-24 months |Vellore Crypto |INDIA        |Low      |            0|     99|   410|
|0-24 months |Vellore Crypto |INDIA        |Low      |            1|     48|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |            0|    105|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |            1|     47|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |            0|     66|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |            1|     45|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            0|   2310| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            1|    226| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   3246| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            1|    327| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |            0|   7094| 13936|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |            1|    733| 13936|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |            0|     82|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |            1|     27|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |            0|     83|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |            1|     17|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |            0|    136|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |            1|     23|   368|
|0-6 months  |COHORTS        |INDIA        |Low      |            0|   1460|  6427|
|0-6 months  |COHORTS        |INDIA        |Low      |            1|    130|  6427|
|0-6 months  |COHORTS        |INDIA        |Medium   |            0|   3351|  6427|
|0-6 months  |COHORTS        |INDIA        |Medium   |            1|    259|  6427|
|0-6 months  |COHORTS        |INDIA        |High     |            0|   1137|  6427|
|0-6 months  |COHORTS        |INDIA        |High     |            1|     90|  6427|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |            0|    478|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |            1|     27|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |            0|    320|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |            1|     27|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |High     |            0|    191|  1056|
|0-6 months  |COHORTS        |GUATEMALA    |High     |            1|     13|  1056|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |            0|   1059|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |            1|     67|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |            0|    507|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |            1|     46|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |            0|   1267|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |            1|     98|  3044|
|0-6 months  |EE             |PAKISTAN     |Low      |            0|    291|   376|
|0-6 months  |EE             |PAKISTAN     |Low      |            1|     28|   376|
|0-6 months  |EE             |PAKISTAN     |Medium   |            0|     29|   376|
|0-6 months  |EE             |PAKISTAN     |Medium   |            1|      6|   376|
|0-6 months  |EE             |PAKISTAN     |High     |            0|     20|   376|
|0-6 months  |EE             |PAKISTAN     |High     |            1|      2|   376|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |            0|    417|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |            1|     60|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |            0|    115|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |            1|     13|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |            0|     73|   684|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |            1|      6|   684|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |            0|     98|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |            1|      1|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |            0|     77|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |            1|      0|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |            0|    105|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |            1|      0|   281|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |            0|   9372| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |            1|    417| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |            0|   7815| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |            1|    311| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |            0|   8544| 26840|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |            1|    381| 26840|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |            0|   1624|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |            1|     31|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |            0|   1560|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |            1|     39|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |            0|   1792|  5087|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |            1|     41|  5087|
|0-6 months  |LCNI-5         |MALAWI       |Low      |            0|     89|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |            1|      0|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |            0|     92|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |            1|      0|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |            0|     84|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |            1|      0|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |            0|     76|   210|
|0-6 months  |MAL-ED         |INDIA        |Low      |            1|      8|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |            0|     48|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |            1|      2|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |            0|     71|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |            1|      5|   210|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |            0|     74|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |            1|      4|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |            0|     56|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |            1|      2|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |            0|    109|   254|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |            1|      9|   254|
|0-6 months  |MAL-ED         |PERU         |Low      |            0|    120|   301|
|0-6 months  |MAL-ED         |PERU         |Low      |            1|      0|   301|
|0-6 months  |MAL-ED         |PERU         |Medium   |            0|     93|   301|
|0-6 months  |MAL-ED         |PERU         |Medium   |            1|      1|   301|
|0-6 months  |MAL-ED         |PERU         |High     |            0|     87|   301|
|0-6 months  |MAL-ED         |PERU         |High     |            1|      0|   301|
|0-6 months  |MAL-ED         |NEPAL        |Low      |            0|    107|   229|
|0-6 months  |MAL-ED         |NEPAL        |Low      |            1|      4|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |            0|     53|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |            1|      3|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |            0|     62|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |            1|      0|   229|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |            0|    101|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |            0|     94|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |            1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |            0|     35|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |            1|      1|   233|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |            0|     63|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |            1|      1|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |            0|     77|   211|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |            1|      3|   211|
|0-6 months  |MAL-ED         |TANZANIA     |High     |            0|     67|   211|
|0-6 months  |MAL-ED         |TANZANIA     |High     |            1|      0|   211|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |            0|    171|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |            1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |            0|     40|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |            1|      1|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |            0|     95|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |            1|      4|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |            0|    241|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |            1|     24|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |            0|    176|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |            1|     20|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |            0|    149|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |            1|     12|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |            0|    230|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |            1|     11|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |            0|    152|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |            1|     15|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |            0|    326|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |            1|     24|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |            0|   5075| 16895|
|0-6 months  |PROBIT         |BELARUS      |Low      |            1|    404| 16895|
|0-6 months  |PROBIT         |BELARUS      |Medium   |            0|   7835| 16895|
|0-6 months  |PROBIT         |BELARUS      |Medium   |            1|    685| 16895|
|0-6 months  |PROBIT         |BELARUS      |High     |            0|   2672| 16895|
|0-6 months  |PROBIT         |BELARUS      |High     |            1|    224| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |            0|    193|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |            1|     10|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |            0|    258|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |            1|     13|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |            0|    220|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |            1|      6|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |            0|    612|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |            1|     50|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |            0|    475|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |            1|     31|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |            0|    317|  1502|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |            1|     17|  1502|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |            0|    324|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |            1|     13|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |            0|     35|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |            1|      5|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |            0|     39|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |            1|      2|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |            0|    100|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |            1|      4|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |            0|   1607|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |            1|     59|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |            0|    610|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |            1|     16|  2396|
|0-6 months  |Vellore Crypto |INDIA        |Low      |            0|    103|   410|
|0-6 months  |Vellore Crypto |INDIA        |Low      |            1|     44|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |            0|    109|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |            1|     43|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |            0|     72|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |            1|     39|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |            0|   2351| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |            1|    171| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   3304| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |            1|    241| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |            0|   7235| 13843|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |            1|    541| 13843|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |            0|    100|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |            1|     11|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |            0|     99|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |            1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |            0|    144|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |            1|     17|   373|
|6-24 months |COHORTS        |INDIA        |Low      |            0|   1498|  6254|
|6-24 months |COHORTS        |INDIA        |Low      |            1|     61|  6254|
|6-24 months |COHORTS        |INDIA        |Medium   |            0|   3380|  6254|
|6-24 months |COHORTS        |INDIA        |Medium   |            1|    123|  6254|
|6-24 months |COHORTS        |INDIA        |High     |            0|   1152|  6254|
|6-24 months |COHORTS        |INDIA        |High     |            1|     40|  6254|
|6-24 months |COHORTS        |GUATEMALA    |Low      |            0|    562|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Low      |            1|     15|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |            0|    381|  1207|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |            1|      9|  1207|
|6-24 months |COHORTS        |GUATEMALA    |High     |            0|    234|  1207|
|6-24 months |COHORTS        |GUATEMALA    |High     |            1|      6|  1207|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |            0|    972|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |            1|     88|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |            0|    467|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |            1|     44|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |High     |            0|   1182|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |High     |            1|     56|  2809|
|6-24 months |EE             |PAKISTAN     |Low      |            0|    274|   370|
|6-24 months |EE             |PAKISTAN     |Low      |            1|     40|   370|
|6-24 months |EE             |PAKISTAN     |Medium   |            0|     30|   370|
|6-24 months |EE             |PAKISTAN     |Medium   |            1|      5|   370|
|6-24 months |EE             |PAKISTAN     |High     |            0|     15|   370|
|6-24 months |EE             |PAKISTAN     |High     |            1|      6|   370|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |            0|    328|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |            1|     81|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |            0|     93|   590|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |            1|     20|   590|
|6-24 months |GMS-Nepal      |NEPAL        |High     |            0|     57|   590|
|6-24 months |GMS-Nepal      |NEPAL        |High     |            1|     11|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |            0|     91|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |            1|      1|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |            0|     76|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |            1|      0|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |            0|     98|   267|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |            1|      1|   267|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |            0|   5813| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |            1|    213| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |            0|   5150| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |            1|    168| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |            0|   5773| 17289|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |            1|    172| 17289|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |            0|   1701|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |            1|     77|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |            0|   1619|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |            1|     83|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |            0|   1862|  5421|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |            1|     79|  5421|
|6-24 months |LCNI-5         |MALAWI       |Low      |            0|    262|   811|
|6-24 months |LCNI-5         |MALAWI       |Low      |            1|      2|   811|
|6-24 months |LCNI-5         |MALAWI       |Medium   |            0|    264|   811|
|6-24 months |LCNI-5         |MALAWI       |Medium   |            1|      1|   811|
|6-24 months |LCNI-5         |MALAWI       |High     |            0|    277|   811|
|6-24 months |LCNI-5         |MALAWI       |High     |            1|      5|   811|
|6-24 months |MAL-ED         |INDIA        |Low      |            0|     79|   198|
|6-24 months |MAL-ED         |INDIA        |Low      |            1|      2|   198|
|6-24 months |MAL-ED         |INDIA        |Medium   |            0|     43|   198|
|6-24 months |MAL-ED         |INDIA        |Medium   |            1|      2|   198|
|6-24 months |MAL-ED         |INDIA        |High     |            0|     72|   198|
|6-24 months |MAL-ED         |INDIA        |High     |            1|      0|   198|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |            0|     68|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |            1|      2|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |            0|     53|   232|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |            1|      1|   232|
|6-24 months |MAL-ED         |BANGLADESH   |High     |            0|    107|   232|
|6-24 months |MAL-ED         |BANGLADESH   |High     |            1|      1|   232|
|6-24 months |MAL-ED         |PERU         |Low      |            0|    107|   269|
|6-24 months |MAL-ED         |PERU         |Low      |            1|      0|   269|
|6-24 months |MAL-ED         |PERU         |Medium   |            0|     82|   269|
|6-24 months |MAL-ED         |PERU         |Medium   |            1|      1|   269|
|6-24 months |MAL-ED         |PERU         |High     |            0|     77|   269|
|6-24 months |MAL-ED         |PERU         |High     |            1|      2|   269|
|6-24 months |MAL-ED         |NEPAL        |Low      |            0|    107|   225|
|6-24 months |MAL-ED         |NEPAL        |Low      |            1|      1|   225|
|6-24 months |MAL-ED         |NEPAL        |Medium   |            0|     55|   225|
|6-24 months |MAL-ED         |NEPAL        |Medium   |            1|      1|   225|
|6-24 months |MAL-ED         |NEPAL        |High     |            0|     61|   225|
|6-24 months |MAL-ED         |NEPAL        |High     |            1|      0|   225|
|6-24 months |MAL-ED         |BRAZIL       |Low      |            0|     86|   207|
|6-24 months |MAL-ED         |BRAZIL       |Low      |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |            0|     88|   207|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |High     |            0|     32|   207|
|6-24 months |MAL-ED         |BRAZIL       |High     |            1|      1|   207|
|6-24 months |MAL-ED         |TANZANIA     |Low      |            0|     59|   200|
|6-24 months |MAL-ED         |TANZANIA     |Low      |            1|      1|   200|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |            0|     74|   200|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |            1|      1|   200|
|6-24 months |MAL-ED         |TANZANIA     |High     |            0|     63|   200|
|6-24 months |MAL-ED         |TANZANIA     |High     |            1|      2|   200|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |            0|    140|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |            1|      3|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            0|     32|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |            1|      2|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |            0|     77|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |            1|      5|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |            0|    200|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |            1|     23|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |            0|    166|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |            1|     13|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |            0|    128|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |            1|     12|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |            0|    224|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |            1|      9|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            0|    157|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |            1|      4|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |            0|    329|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |            1|      7|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |            0|   5375| 16598|
|6-24 months |PROBIT         |BELARUS      |Low      |            1|      5| 16598|
|6-24 months |PROBIT         |BELARUS      |Medium   |            0|   8370| 16598|
|6-24 months |PROBIT         |BELARUS      |Medium   |            1|      6| 16598|
|6-24 months |PROBIT         |BELARUS      |High     |            0|   2841| 16598|
|6-24 months |PROBIT         |BELARUS      |High     |            1|      1| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |            0|    181|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |            1|      6|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |            0|    231|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |            1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |            0|    190|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |            1|      3|   615|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |            0|    543|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |            1|     73|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |            0|    419|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |            1|     46|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |            0|    292|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |            1|     15|  1388|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |            0|    277|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |            1|     45|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            0|     37|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |            1|      3|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |            0|     37|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |            1|      3|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |            0|     78|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |            1|      3|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            0|   1338|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |            1|     60|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |            0|    519|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |            1|     20|  2018|
|6-24 months |Vellore Crypto |INDIA        |Low      |            0|    139|   410|
|6-24 months |Vellore Crypto |INDIA        |Low      |            1|      8|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |            0|    141|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |            1|     11|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |            0|    104|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |            1|      7|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            0|   1875| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |            1|     59| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            0|   2692| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |            1|     92| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |            0|   5886| 10809|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |            1|    205| 10809|


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

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


