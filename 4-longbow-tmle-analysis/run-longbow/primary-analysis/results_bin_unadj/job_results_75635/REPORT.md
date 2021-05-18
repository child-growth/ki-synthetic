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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |feducyrs | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|-----------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |Low      |           0|    415|  1829|
|0-24 months |COHORTS        |INDIA        |Low      |           1|    206|  1829|
|0-24 months |COHORTS        |INDIA        |Medium   |           0|    346|  1829|
|0-24 months |COHORTS        |INDIA        |Medium   |           1|    176|  1829|
|0-24 months |COHORTS        |INDIA        |High     |           0|    451|  1829|
|0-24 months |COHORTS        |INDIA        |High     |           1|    235|  1829|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           0|    457|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           1|    154|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           0|    340|  1281|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           1|    111|  1281|
|0-24 months |COHORTS        |GUATEMALA    |High     |           0|    159|  1281|
|0-24 months |COHORTS        |GUATEMALA    |High     |           1|     60|  1281|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    578|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    417|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    426|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    287|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           0|    743|  2927|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           1|    476|  2927|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    125|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    178|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     97|   685|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|    139|   685|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           0|     59|   685|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           1|     87|   685|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   7868| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   2752| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   6596| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|   2333| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           0|   4797| 25954|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           1|   1608| 25954|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|   1327|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    614|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|   1399|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    655|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    842|  5180|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    343|  5180|
|0-24 months |LCNI-5         |MALAWI       |Low      |           0|    260|   828|
|0-24 months |LCNI-5         |MALAWI       |Low      |           1|     21|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           0|    271|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           1|     25|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |           0|    231|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |           1|     20|   828|
|0-24 months |MAL-ED         |INDIA        |Low      |           0|     17|   126|
|0-24 months |MAL-ED         |INDIA        |Low      |           1|     18|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |           0|     17|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |           1|     19|   126|
|0-24 months |MAL-ED         |INDIA        |High     |           0|     32|   126|
|0-24 months |MAL-ED         |INDIA        |High     |           1|     23|   126|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     28|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     13|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|     24|   149|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|     13|   149|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           0|     51|   149|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           1|     20|   149|
|0-24 months |MAL-ED         |PERU         |Low      |           0|     80|   291|
|0-24 months |MAL-ED         |PERU         |Low      |           1|      6|   291|
|0-24 months |MAL-ED         |PERU         |Medium   |           0|     87|   291|
|0-24 months |MAL-ED         |PERU         |Medium   |           1|      8|   291|
|0-24 months |MAL-ED         |PERU         |High     |           0|     99|   291|
|0-24 months |MAL-ED         |PERU         |High     |           1|     11|   291|
|0-24 months |MAL-ED         |NEPAL        |Low      |           0|     17|    81|
|0-24 months |MAL-ED         |NEPAL        |Low      |           1|      5|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           0|     14|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           1|     10|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |           0|     23|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |           1|     12|    81|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           0|     54|   245|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           1|     10|   245|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           0|     41|   245|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           1|     11|   245|
|0-24 months |MAL-ED         |TANZANIA     |High     |           0|    117|   245|
|0-24 months |MAL-ED         |TANZANIA     |High     |           1|     12|   245|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|     52|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     11|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|     29|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      3|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|     37|   139|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|      7|   139|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|    139|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     69|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|    123|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     69|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|    246|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|    112|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |           0|   4769| 16335|
|0-24 months |PROBIT         |BELARUS      |Low      |           1|   1650| 16335|
|0-24 months |PROBIT         |BELARUS      |Medium   |           0|   5385| 16335|
|0-24 months |PROBIT         |BELARUS      |Medium   |           1|   1784| 16335|
|0-24 months |PROBIT         |BELARUS      |High     |           0|   2008| 16335|
|0-24 months |PROBIT         |BELARUS      |High     |           1|    739| 16335|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           0|    135|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     92|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|    156|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     78|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           0|    163|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           1|     76|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    378|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    245|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    272|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|    222|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           0|    235|  1512|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           1|    160|  1512|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|     81|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|     72|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     82|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|     72|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     58|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|     53|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|    942|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|    306|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|    521|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    150|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|    367|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|    110|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|   1502| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    511| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   7928| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|   2414| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|    793| 13402|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|    254| 13402|
|0-6 months  |COHORTS        |INDIA        |Low      |           0|    452|  1760|
|0-6 months  |COHORTS        |INDIA        |Low      |           1|    145|  1760|
|0-6 months  |COHORTS        |INDIA        |Medium   |           0|    366|  1760|
|0-6 months  |COHORTS        |INDIA        |Medium   |           1|    134|  1760|
|0-6 months  |COHORTS        |INDIA        |High     |           0|    490|  1760|
|0-6 months  |COHORTS        |INDIA        |High     |           1|    173|  1760|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           0|    391|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           1|     93|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           0|    288|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           1|     73|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           0|    141|  1022|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           1|     36|  1022|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           0|    761|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           1|    233|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           0|    566|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           1|    147|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           0|    912|  2926|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           1|    307|  2926|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           0|    188|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           1|    115|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           0|    152|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           1|     84|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           0|     87|   685|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           1|     59|   685|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           0|   8694| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           1|   1890| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           0|   7323| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           1|   1568| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           0|   5281| 25861|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           1|   1105| 25861|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           0|   1621|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           1|    187|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           0|   1703|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           1|    220|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           0|    994|  4844|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           1|    119|  4844|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           0|     93|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           1|      1|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           0|     87|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           1|      3|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |           0|     81|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |           1|      0|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |           0|     21|   126|
|0-6 months  |MAL-ED         |INDIA        |Low      |           1|     14|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           0|     24|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           1|     12|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |           0|     36|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |           1|     19|   126|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           0|     33|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           1|      8|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           0|     27|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           1|     10|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           0|     56|   149|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           1|     15|   149|
|0-6 months  |MAL-ED         |PERU         |Low      |           0|     85|   291|
|0-6 months  |MAL-ED         |PERU         |Low      |           1|      1|   291|
|0-6 months  |MAL-ED         |PERU         |Medium   |           0|     93|   291|
|0-6 months  |MAL-ED         |PERU         |Medium   |           1|      2|   291|
|0-6 months  |MAL-ED         |PERU         |High     |           0|    103|   291|
|0-6 months  |MAL-ED         |PERU         |High     |           1|      7|   291|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           0|     19|    81|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           1|      3|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           0|     17|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           1|      7|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |           0|     26|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |           1|      9|    81|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           0|     61|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           1|      3|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           0|     48|   245|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           1|      4|   245|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           0|    126|   245|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           1|      3|   245|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           0|     58|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           1|      5|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           0|     30|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           1|      2|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           0|     39|   139|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           1|      5|   139|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           0|    154|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           1|     54|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           0|    140|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           1|     52|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           0|    269|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           1|     89|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |           0|   4803| 16332|
|0-6 months  |PROBIT         |BELARUS      |Low      |           1|   1615| 16332|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           0|   5421| 16332|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           1|   1746| 16332|
|0-6 months  |PROBIT         |BELARUS      |High     |           0|   2026| 16332|
|0-6 months  |PROBIT         |BELARUS      |High     |           1|    721| 16332|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           0|    159|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           1|     68|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           0|    179|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           1|     55|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           0|    181|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           1|     58|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           0|    489|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           1|    130|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           0|    386|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           1|    107|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           0|    299|  1504|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           1|     93|  1504|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           0|    125|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           1|     28|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           0|    123|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           1|     31|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           0|     92|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           1|     19|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           0|   1060|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           1|    188|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           0|    591|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           1|     80|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           0|    412|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           1|     65|  2396|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           0|   1618| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           1|    386| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   8445| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           1|   1828| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           0|    844| 13317|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           1|    196| 13317|
|6-24 months |COHORTS        |INDIA        |Low      |           0|    499|  1708|
|6-24 months |COHORTS        |INDIA        |Low      |           1|     85|  1708|
|6-24 months |COHORTS        |INDIA        |Medium   |           0|    430|  1708|
|6-24 months |COHORTS        |INDIA        |Medium   |           1|     55|  1708|
|6-24 months |COHORTS        |INDIA        |High     |           0|    556|  1708|
|6-24 months |COHORTS        |INDIA        |High     |           1|     83|  1708|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           0|    486|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           1|     74|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           0|    356|  1156|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           1|     42|  1156|
|6-24 months |COHORTS        |GUATEMALA    |High     |           0|    166|  1156|
|6-24 months |COHORTS        |GUATEMALA    |High     |           1|     32|  1156|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    644|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    281|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    485|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    191|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           0|    852|  2701|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           1|    248|  2701|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    140|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    120|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|    114|   589|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     97|   589|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           0|     57|   589|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           1|     61|   589|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   5485| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   1112| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   4797| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|    976| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           0|   3584| 16586|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           1|    632| 16586|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|   1441|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    497|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|   1531|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    516|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    918|  5168|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    265|  5168|
|6-24 months |LCNI-5         |MALAWI       |Low      |           0|    258|   814|
|6-24 months |LCNI-5         |MALAWI       |Low      |           1|     20|   814|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           0|    270|   814|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           1|     23|   814|
|6-24 months |LCNI-5         |MALAWI       |High     |           0|    223|   814|
|6-24 months |LCNI-5         |MALAWI       |High     |           1|     20|   814|
|6-24 months |MAL-ED         |INDIA        |Low      |           0|     24|   119|
|6-24 months |MAL-ED         |INDIA        |Low      |           1|     10|   119|
|6-24 months |MAL-ED         |INDIA        |Medium   |           0|     24|   119|
|6-24 months |MAL-ED         |INDIA        |Medium   |           1|     10|   119|
|6-24 months |MAL-ED         |INDIA        |High     |           0|     40|   119|
|6-24 months |MAL-ED         |INDIA        |High     |           1|     11|   119|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     30|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           1|      7|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|     31|   135|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|      4|   135|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           0|     53|   135|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           1|     10|   135|
|6-24 months |MAL-ED         |PERU         |Low      |           0|     75|   259|
|6-24 months |MAL-ED         |PERU         |Low      |           1|      5|   259|
|6-24 months |MAL-ED         |PERU         |Medium   |           0|     70|   259|
|6-24 months |MAL-ED         |PERU         |Medium   |           1|      7|   259|
|6-24 months |MAL-ED         |PERU         |High     |           0|     97|   259|
|6-24 months |MAL-ED         |PERU         |High     |           1|      5|   259|
|6-24 months |MAL-ED         |NEPAL        |Low      |           0|     19|    79|
|6-24 months |MAL-ED         |NEPAL        |Low      |           1|      2|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           0|     20|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           1|      4|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |           0|     29|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |           1|      5|    79|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           0|     53|   231|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           1|      7|   231|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           0|     40|   231|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           1|      9|   231|
|6-24 months |MAL-ED         |TANZANIA     |High     |           0|    110|   231|
|6-24 months |MAL-ED         |TANZANIA     |High     |           1|     12|   231|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|     50|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|      7|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|     24|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      2|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|     32|   119|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|      4|   119|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|    173|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     24|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|    157|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     32|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|    304|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|     40|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |           0|   6261| 16048|
|6-24 months |PROBIT         |BELARUS      |Low      |           1|     54| 16048|
|6-24 months |PROBIT         |BELARUS      |Medium   |           0|   6992| 16048|
|6-24 months |PROBIT         |BELARUS      |Medium   |           1|     60| 16048|
|6-24 months |PROBIT         |BELARUS      |High     |           0|   2658| 16048|
|6-24 months |PROBIT         |BELARUS      |High     |           1|     23| 16048|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           0|    170|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     36|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|    167|   615|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     34|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           0|    179|   615|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           1|     29|   615|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    403|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    170|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    304|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|    152|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           0|    256|  1388|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           1|    103|  1388|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|     98|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|     51|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     99|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|     49|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     62|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|     43|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|    865|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|    176|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|    488|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|     88|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|    341|  2018|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|     60|  2018|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|   1421| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    154| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   7302| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    771| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|    715| 10439|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|     76| 10439|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
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
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
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
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


