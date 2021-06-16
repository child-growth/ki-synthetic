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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_arm
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |meducyrs | n_cell|     n|
|:-------|:---------|:--------------|:------------|:--------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |High     |     37|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     27|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     22|    86|
|BC      |Birth     |COHORTS        |INDIA        |High     |   1057|  5577|
|BC      |Birth     |COHORTS        |INDIA        |Low      |   1388|  5577|
|BC      |Birth     |COHORTS        |INDIA        |Medium   |   3132|  5577|
|BC      |Birth     |COHORTS        |GUATEMALA    |High     |    149|   751|
|BC      |Birth     |COHORTS        |GUATEMALA    |Low      |    348|   751|
|BC      |Birth     |COHORTS        |GUATEMALA    |Medium   |    254|   751|
|BC      |Birth     |COHORTS        |PHILIPPINES  |High     |   1313|  2899|
|BC      |Birth     |COHORTS        |PHILIPPINES  |Low      |   1053|  2899|
|BC      |Birth     |COHORTS        |PHILIPPINES  |Medium   |    533|  2899|
|BC      |Birth     |EE             |PAKISTAN     |High     |     11|   175|
|BC      |Birth     |EE             |PAKISTAN     |Low      |    148|   175|
|BC      |Birth     |EE             |PAKISTAN     |Medium   |     16|   175|
|BC      |Birth     |GMS-Nepal      |NEPAL        |High     |     74|   639|
|BC      |Birth     |GMS-Nepal      |NEPAL        |Low      |    449|   639|
|BC      |Birth     |GMS-Nepal      |NEPAL        |Medium   |    116|   639|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |High     |   5962| 17998|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Low      |   6601| 17998|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   5435| 17998|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |High     |    862|  2393|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |Low      |    800|  2393|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |Medium   |    731|  2393|
|BC      |Birth     |MAL-ED         |INDIA        |High     |     16|    38|
|BC      |Birth     |MAL-ED         |INDIA        |Low      |     14|    38|
|BC      |Birth     |MAL-ED         |INDIA        |Medium   |      8|    38|
|BC      |Birth     |MAL-ED         |BANGLADESH   |High     |    101|   207|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Low      |     58|   207|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Medium   |     48|   207|
|BC      |Birth     |MAL-ED         |PERU         |High     |     66|   227|
|BC      |Birth     |MAL-ED         |PERU         |Low      |     88|   227|
|BC      |Birth     |MAL-ED         |PERU         |Medium   |     73|   227|
|BC      |Birth     |MAL-ED         |NEPAL        |High     |      8|    24|
|BC      |Birth     |MAL-ED         |NEPAL        |Low      |     12|    24|
|BC      |Birth     |MAL-ED         |NEPAL        |Medium   |      4|    24|
|BC      |Birth     |MAL-ED         |BRAZIL       |High     |      7|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |Low      |     29|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |Medium   |     26|    62|
|BC      |Birth     |MAL-ED         |TANZANIA     |High     |     29|    91|
|BC      |Birth     |MAL-ED         |TANZANIA     |Low      |     29|    91|
|BC      |Birth     |MAL-ED         |TANZANIA     |Medium   |     33|    91|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |High     |     39|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Low      |     64|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     17|   120|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |High     |    147|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |Low      |    245|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |Medium   |    183|   575|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |High     |    329|   707|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    221|   707|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    157|   707|
|BC      |Birth     |PROBIT         |BELARUS      |High     |   2323| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |Low      |   4420| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |Medium   |   7074| 13817|
|BC      |Birth     |PROVIDE        |BANGLADESH   |High     |    174|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Low      |    159|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Medium   |    199|   532|
|BC      |Birth     |SAS-CompFeed   |INDIA        |High     |    254|  1101|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Low      |    479|  1101|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Medium   |    368|  1101|
|BC      |Birth     |Vellore Crypto |INDIA        |High     |     90|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |Low      |    125|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |Medium   |    128|   343|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |High     |   7281| 12909|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2343| 12909|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3285| 12909|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |High     |    159|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    109|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    100|   368|
|BC      |6 months  |COHORTS        |INDIA        |High     |   1174|  6172|
|BC      |6 months  |COHORTS        |INDIA        |Low      |   1538|  6172|
|BC      |6 months  |COHORTS        |INDIA        |Medium   |   3460|  6172|
|BC      |6 months  |COHORTS        |GUATEMALA    |High     |    182|   957|
|BC      |6 months  |COHORTS        |GUATEMALA    |Low      |    454|   957|
|BC      |6 months  |COHORTS        |GUATEMALA    |Medium   |    321|   957|
|BC      |6 months  |COHORTS        |PHILIPPINES  |High     |   1190|  2706|
|BC      |6 months  |COHORTS        |PHILIPPINES  |Low      |   1024|  2706|
|BC      |6 months  |COHORTS        |PHILIPPINES  |Medium   |    492|  2706|
|BC      |6 months  |EE             |PAKISTAN     |High     |     21|   371|
|BC      |6 months  |EE             |PAKISTAN     |Low      |    316|   371|
|BC      |6 months  |EE             |PAKISTAN     |Medium   |     34|   371|
|BC      |6 months  |GMS-Nepal      |NEPAL        |High     |     64|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |Low      |    393|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |Medium   |    107|   564|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |High     |    105|   288|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |Low      |    102|   288|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     81|   288|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |High     |   5771| 16775|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Low      |   5855| 16775|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5149| 16775|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |High     |   1736|  4824|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |Low      |   1592|  4824|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1496|  4824|
|BC      |6 months  |LCNI-5         |MALAWI       |High     |    289|   824|
|BC      |6 months  |LCNI-5         |MALAWI       |Low      |    268|   824|
|BC      |6 months  |LCNI-5         |MALAWI       |Medium   |    267|   824|
|BC      |6 months  |MAL-ED         |INDIA        |High     |     72|   199|
|BC      |6 months  |MAL-ED         |INDIA        |Low      |     81|   199|
|BC      |6 months  |MAL-ED         |INDIA        |Medium   |     46|   199|
|BC      |6 months  |MAL-ED         |BANGLADESH   |High     |    107|   233|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Low      |     73|   233|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Medium   |     53|   233|
|BC      |6 months  |MAL-ED         |PERU         |High     |     80|   272|
|BC      |6 months  |MAL-ED         |PERU         |Low      |    108|   272|
|BC      |6 months  |MAL-ED         |PERU         |Medium   |     84|   272|
|BC      |6 months  |MAL-ED         |NEPAL        |High     |     62|   226|
|BC      |6 months  |MAL-ED         |NEPAL        |Low      |    108|   226|
|BC      |6 months  |MAL-ED         |NEPAL        |Medium   |     56|   226|
|BC      |6 months  |MAL-ED         |BRAZIL       |High     |     33|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |Low      |     88|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |Medium   |     88|   209|
|BC      |6 months  |MAL-ED         |TANZANIA     |High     |     65|   200|
|BC      |6 months  |MAL-ED         |TANZANIA     |Low      |     60|   200|
|BC      |6 months  |MAL-ED         |TANZANIA     |Medium   |     75|   200|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |High     |     81|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Low      |    138|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     35|   254|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |High     |    140|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |Low      |    222|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |Medium   |    175|   537|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |High     |    329|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    228|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    158|   715|
|BC      |6 months  |PROBIT         |BELARUS      |High     |   2699| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |Low      |   5135| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |Medium   |   7923| 15757|
|BC      |6 months  |PROVIDE        |BANGLADESH   |High     |    192|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Low      |    182|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Medium   |    229|   603|
|BC      |6 months  |SAS-CompFeed   |INDIA        |High     |    292|  1333|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Low      |    600|  1333|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Medium   |    441|  1333|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |High     |     37|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |Low      |    307|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     36|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |High     |    536|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Low      |     85|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1407|  2028|
|BC      |6 months  |Vellore Crypto |INDIA        |High     |    110|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |Low      |    146|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |Medium   |    152|   408|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4793|  8502|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1528|  8502|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2181|  8502|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |High     |    161|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |Low      |    111|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    100|   372|
|BC      |24 months |COHORTS        |INDIA        |High     |    898|  4751|
|BC      |24 months |COHORTS        |INDIA        |Low      |   1173|  4751|
|BC      |24 months |COHORTS        |INDIA        |Medium   |   2680|  4751|
|BC      |24 months |COHORTS        |GUATEMALA    |High     |    217|  1074|
|BC      |24 months |COHORTS        |GUATEMALA    |Low      |    503|  1074|
|BC      |24 months |COHORTS        |GUATEMALA    |Medium   |    354|  1074|
|BC      |24 months |COHORTS        |PHILIPPINES  |High     |   1077|  2449|
|BC      |24 months |COHORTS        |PHILIPPINES  |Low      |    920|  2449|
|BC      |24 months |COHORTS        |PHILIPPINES  |Medium   |    452|  2449|
|BC      |24 months |EE             |PAKISTAN     |High     |      5|   165|
|BC      |24 months |EE             |PAKISTAN     |Low      |    139|   165|
|BC      |24 months |EE             |PAKISTAN     |Medium   |     21|   165|
|BC      |24 months |GMS-Nepal      |NEPAL        |High     |     50|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |Low      |    343|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |Medium   |     94|   487|
|BC      |24 months |JiVitA-3       |BANGLADESH   |High     |   2924|  8599|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Low      |   3037|  8599|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Medium   |   2638|  8599|
|BC      |24 months |JiVitA-4       |BANGLADESH   |High     |   1724|  4727|
|BC      |24 months |JiVitA-4       |BANGLADESH   |Low      |   1527|  4727|
|BC      |24 months |JiVitA-4       |BANGLADESH   |Medium   |   1476|  4727|
|BC      |24 months |LCNI-5         |MALAWI       |High     |    187|   555|
|BC      |24 months |LCNI-5         |MALAWI       |Low      |    176|   555|
|BC      |24 months |LCNI-5         |MALAWI       |Medium   |    192|   555|
|BC      |24 months |MAL-ED         |INDIA        |High     |     69|   192|
|BC      |24 months |MAL-ED         |INDIA        |Low      |     80|   192|
|BC      |24 months |MAL-ED         |INDIA        |Medium   |     43|   192|
|BC      |24 months |MAL-ED         |BANGLADESH   |High     |     95|   204|
|BC      |24 months |MAL-ED         |BANGLADESH   |Low      |     60|   204|
|BC      |24 months |MAL-ED         |BANGLADESH   |Medium   |     49|   204|
|BC      |24 months |MAL-ED         |PERU         |High     |     61|   200|
|BC      |24 months |MAL-ED         |PERU         |Low      |     73|   200|
|BC      |24 months |MAL-ED         |PERU         |Medium   |     66|   200|
|BC      |24 months |MAL-ED         |NEPAL        |High     |     58|   218|
|BC      |24 months |MAL-ED         |NEPAL        |Low      |    107|   218|
|BC      |24 months |MAL-ED         |NEPAL        |Medium   |     53|   218|
|BC      |24 months |MAL-ED         |BRAZIL       |High     |     27|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |Low      |     72|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |Medium   |     70|   169|
|BC      |24 months |MAL-ED         |TANZANIA     |High     |     55|   174|
|BC      |24 months |MAL-ED         |TANZANIA     |Low      |     54|   174|
|BC      |24 months |MAL-ED         |TANZANIA     |Medium   |     65|   174|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |High     |     75|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Low      |    132|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Medium   |     31|   238|
|BC      |24 months |NIH-Birth      |BANGLADESH   |High     |    113|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |Low      |    177|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |Medium   |    138|   428|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |High     |    247|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Low      |    156|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Medium   |    111|   514|
|BC      |24 months |PROBIT         |BELARUS      |High     |    652|  3970|
|BC      |24 months |PROBIT         |BELARUS      |Low      |   1253|  3970|
|BC      |24 months |PROBIT         |BELARUS      |Medium   |   2065|  3970|
|BC      |24 months |PROVIDE        |BANGLADESH   |High     |    187|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |Low      |    175|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |Medium   |    217|   579|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |High     |      4|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Medium   |      2|     6|
|BC      |24 months |Vellore Crypto |INDIA        |High     |    111|   409|
|BC      |24 months |Vellore Crypto |INDIA        |Low      |    147|   409|
|BC      |24 months |Vellore Crypto |INDIA        |Medium   |    151|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |High     |    247|   432|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Low      |     86|   432|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |     99|   432|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |High     |     42|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     17|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     27|    86|
|FULL    |Birth     |COHORTS        |INDIA        |High     |   1086|  5652|
|FULL    |Birth     |COHORTS        |INDIA        |Low      |   1160|  5652|
|FULL    |Birth     |COHORTS        |INDIA        |Medium   |   3406|  5652|
|FULL    |Birth     |COHORTS        |GUATEMALA    |High     |    184|   743|
|FULL    |Birth     |COHORTS        |GUATEMALA    |Low      |    316|   743|
|FULL    |Birth     |COHORTS        |GUATEMALA    |Medium   |    243|   743|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |High     |   1305|  2899|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |Low      |   1027|  2899|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |Medium   |    567|  2899|
|FULL    |Birth     |EE             |PAKISTAN     |High     |      8|   175|
|FULL    |Birth     |EE             |PAKISTAN     |Low      |    150|   175|
|FULL    |Birth     |EE             |PAKISTAN     |Medium   |     17|   175|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |High     |     76|   635|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |Low      |    446|   635|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |Medium   |    113|   635|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |High     |   5719| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Low      |   6913| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   5382| 18014|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |High     |    865|  2395|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |Low      |    776|  2395|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |Medium   |    754|  2395|
|FULL    |Birth     |MAL-ED         |INDIA        |High     |     18|    43|
|FULL    |Birth     |MAL-ED         |INDIA        |Low      |     16|    43|
|FULL    |Birth     |MAL-ED         |INDIA        |Medium   |      9|    43|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |High     |    103|   201|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Low      |     52|   201|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Medium   |     46|   201|
|FULL    |Birth     |MAL-ED         |PERU         |High     |     67|   225|
|FULL    |Birth     |MAL-ED         |PERU         |Low      |     82|   225|
|FULL    |Birth     |MAL-ED         |PERU         |Medium   |     76|   225|
|FULL    |Birth     |MAL-ED         |NEPAL        |High     |      8|    25|
|FULL    |Birth     |MAL-ED         |NEPAL        |Low      |     15|    25|
|FULL    |Birth     |MAL-ED         |NEPAL        |Medium   |      2|    25|
|FULL    |Birth     |MAL-ED         |BRAZIL       |High     |     11|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |Low      |     28|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |Medium   |     23|    62|
|FULL    |Birth     |MAL-ED         |TANZANIA     |High     |      2|    92|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Low      |     26|    92|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Medium   |     64|    92|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |High     |     42|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Low      |     59|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     19|   120|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |High     |    156|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |Low      |    216|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |Medium   |    203|   575|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |High     |    317|   707|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    240|   707|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    150|   707|
|FULL    |Birth     |PROBIT         |BELARUS      |High     |   2356| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |Low      |   4383| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |Medium   |   7078| 13817|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |High     |    166|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Low      |    165|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Medium   |    201|   532|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |High     |    244|  1101|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Low      |    488|  1101|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Medium   |    369|  1101|
|FULL    |Birth     |Vellore Crypto |INDIA        |High     |     79|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |Low      |    148|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |Medium   |    116|   343|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |High     |   6907| 12904|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2795| 12904|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3202| 12904|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |High     |    143|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    107|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    118|   368|
|FULL    |6 months  |COHORTS        |INDIA        |High     |   1209|  6265|
|FULL    |6 months  |COHORTS        |INDIA        |Low      |   1290|  6265|
|FULL    |6 months  |COHORTS        |INDIA        |Medium   |   3766|  6265|
|FULL    |6 months  |COHORTS        |GUATEMALA    |High     |    226|   948|
|FULL    |6 months  |COHORTS        |GUATEMALA    |Low      |    398|   948|
|FULL    |6 months  |COHORTS        |GUATEMALA    |Medium   |    324|   948|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |High     |   1182|  2706|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |Low      |    990|  2706|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |Medium   |    534|  2706|
|FULL    |6 months  |EE             |PAKISTAN     |High     |     24|   370|
|FULL    |6 months  |EE             |PAKISTAN     |Low      |    313|   370|
|FULL    |6 months  |EE             |PAKISTAN     |Medium   |     33|   370|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |High     |     63|   561|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |Low      |    398|   561|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |Medium   |    100|   561|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |High     |     97|   251|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |Low      |     84|   251|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     70|   251|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |High     |   5919| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Low      |   5676| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5189| 16784|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |High     |   1831|  4825|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |Low      |   1477|  4825|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1517|  4825|
|FULL    |6 months  |LCNI-5         |MALAWI       |High     |    312|   831|
|FULL    |6 months  |LCNI-5         |MALAWI       |Low      |    242|   831|
|FULL    |6 months  |LCNI-5         |MALAWI       |Medium   |    277|   831|
|FULL    |6 months  |MAL-ED         |INDIA        |High     |     72|   213|
|FULL    |6 months  |MAL-ED         |INDIA        |Low      |     91|   213|
|FULL    |6 months  |MAL-ED         |INDIA        |Medium   |     50|   213|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |High     |    113|   226|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Low      |     61|   226|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Medium   |     52|   226|
|FULL    |6 months  |MAL-ED         |PERU         |High     |     91|   270|
|FULL    |6 months  |MAL-ED         |PERU         |Low      |     98|   270|
|FULL    |6 months  |MAL-ED         |PERU         |Medium   |     81|   270|
|FULL    |6 months  |MAL-ED         |NEPAL        |High     |     75|   220|
|FULL    |6 months  |MAL-ED         |NEPAL        |Low      |    111|   220|
|FULL    |6 months  |MAL-ED         |NEPAL        |Medium   |     34|   220|
|FULL    |6 months  |MAL-ED         |BRAZIL       |High     |     45|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |Low      |     90|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |Medium   |     74|   209|
|FULL    |6 months  |MAL-ED         |TANZANIA     |High     |      8|   206|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Low      |     61|   206|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Medium   |    137|   206|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |High     |     74|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Low      |    140|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     40|   254|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |High     |    146|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |Low      |    201|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |Medium   |    190|   537|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |High     |    316|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    242|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    157|   715|
|FULL    |6 months  |PROBIT         |BELARUS      |High     |   2740| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |Low      |   4989| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |Medium   |   8028| 15757|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |High     |    195|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Low      |    183|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Medium   |    225|   603|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |High     |    290|  1331|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Low      |    589|  1331|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Medium   |    452|  1331|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |High     |     39|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |Low      |    301|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     40|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |High     |    540|  2026|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Low      |     88|  2026|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1398|  2026|
|FULL    |6 months  |Vellore Crypto |INDIA        |High     |     97|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |Low      |    173|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |Medium   |    138|   408|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4568|  8497|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1803|  8497|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2126|  8497|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |High     |    145|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |Low      |    107|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    120|   372|
|FULL    |24 months |COHORTS        |INDIA        |High     |    907|  4789|
|FULL    |24 months |COHORTS        |INDIA        |Low      |   1012|  4789|
|FULL    |24 months |COHORTS        |INDIA        |Medium   |   2870|  4789|
|FULL    |24 months |COHORTS        |GUATEMALA    |High     |    254|  1069|
|FULL    |24 months |COHORTS        |GUATEMALA    |Low      |    439|  1069|
|FULL    |24 months |COHORTS        |GUATEMALA    |Medium   |    376|  1069|
|FULL    |24 months |COHORTS        |PHILIPPINES  |High     |   1048|  2449|
|FULL    |24 months |COHORTS        |PHILIPPINES  |Low      |    918|  2449|
|FULL    |24 months |COHORTS        |PHILIPPINES  |Medium   |    483|  2449|
|FULL    |24 months |EE             |PAKISTAN     |High     |      9|   166|
|FULL    |24 months |EE             |PAKISTAN     |Low      |    143|   166|
|FULL    |24 months |EE             |PAKISTAN     |Medium   |     14|   166|
|FULL    |24 months |GMS-Nepal      |NEPAL        |High     |     54|   485|
|FULL    |24 months |GMS-Nepal      |NEPAL        |Low      |    347|   485|
|FULL    |24 months |GMS-Nepal      |NEPAL        |Medium   |     84|   485|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |High     |   2931|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Low      |   3006|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Medium   |   2666|  8603|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |High     |   1787|  4729|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |Low      |   1433|  4729|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |Medium   |   1509|  4729|
|FULL    |24 months |LCNI-5         |MALAWI       |High     |    212|   558|
|FULL    |24 months |LCNI-5         |MALAWI       |Low      |    168|   558|
|FULL    |24 months |LCNI-5         |MALAWI       |Medium   |    178|   558|
|FULL    |24 months |MAL-ED         |INDIA        |High     |     71|   205|
|FULL    |24 months |MAL-ED         |INDIA        |Low      |     86|   205|
|FULL    |24 months |MAL-ED         |INDIA        |Medium   |     48|   205|
|FULL    |24 months |MAL-ED         |BANGLADESH   |High     |     98|   198|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Low      |     53|   198|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Medium   |     47|   198|
|FULL    |24 months |MAL-ED         |PERU         |High     |     69|   198|
|FULL    |24 months |MAL-ED         |PERU         |Low      |     74|   198|
|FULL    |24 months |MAL-ED         |PERU         |Medium   |     55|   198|
|FULL    |24 months |MAL-ED         |NEPAL        |High     |     74|   212|
|FULL    |24 months |MAL-ED         |NEPAL        |Low      |    107|   212|
|FULL    |24 months |MAL-ED         |NEPAL        |Medium   |     31|   212|
|FULL    |24 months |MAL-ED         |BRAZIL       |High     |     36|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |Low      |     71|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |Medium   |     62|   169|
|FULL    |24 months |MAL-ED         |TANZANIA     |High     |      5|   179|
|FULL    |24 months |MAL-ED         |TANZANIA     |Low      |     49|   179|
|FULL    |24 months |MAL-ED         |TANZANIA     |Medium   |    125|   179|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |High     |     67|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Low      |    134|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Medium   |     37|   238|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |High     |    118|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |Low      |    155|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |Medium   |    155|   428|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |High     |    233|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Low      |    174|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Medium   |    107|   514|
|FULL    |24 months |PROBIT         |BELARUS      |High     |    669|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |Low      |   1239|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |Medium   |   2062|  3970|
|FULL    |24 months |PROVIDE        |BANGLADESH   |High     |    193|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Low      |    170|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Medium   |    216|   579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |High     |     97|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |Low      |    174|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |Medium   |    138|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |High     |    206|   432|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Low      |    108|   432|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    118|   432|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |High     |    137|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |Low      |    112|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |    114|   363|
|QI      |Birth     |COHORTS        |INDIA        |High     |    639|  5285|
|QI      |Birth     |COHORTS        |INDIA        |Low      |   1806|  5285|
|QI      |Birth     |COHORTS        |INDIA        |Medium   |   2840|  5285|
|QI      |Birth     |COHORTS        |GUATEMALA    |High     |    137|   560|
|QI      |Birth     |COHORTS        |GUATEMALA    |Low      |    230|   560|
|QI      |Birth     |COHORTS        |GUATEMALA    |Medium   |    193|   560|
|QI      |Birth     |COHORTS        |PHILIPPINES  |High     |   1334|  3045|
|QI      |Birth     |COHORTS        |PHILIPPINES  |Low      |   1163|  3045|
|QI      |Birth     |COHORTS        |PHILIPPINES  |Medium   |    548|  3045|
|QI      |Birth     |EE             |PAKISTAN     |High     |     17|   375|
|QI      |Birth     |EE             |PAKISTAN     |Low      |    324|   375|
|QI      |Birth     |EE             |PAKISTAN     |Medium   |     34|   375|
|QI      |Birth     |GMS-Nepal      |NEPAL        |High     |     81|   687|
|QI      |Birth     |GMS-Nepal      |NEPAL        |Low      |    485|   687|
|QI      |Birth     |GMS-Nepal      |NEPAL        |Medium   |    121|   687|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |High     |   3324| 11302|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Low      |   4518| 11302|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   3460| 11302|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |High     |    238|   733|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |Low      |    265|   733|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |Medium   |    230|   733|
|QI      |Birth     |MAL-ED         |INDIA        |High     |     80|   214|
|QI      |Birth     |MAL-ED         |INDIA        |Low      |     79|   214|
|QI      |Birth     |MAL-ED         |INDIA        |Medium   |     55|   214|
|QI      |Birth     |MAL-ED         |BANGLADESH   |High     |    111|   243|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Low      |     83|   243|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Medium   |     49|   243|
|QI      |Birth     |MAL-ED         |PERU         |High     |    109|   300|
|QI      |Birth     |MAL-ED         |PERU         |Low      |    103|   300|
|QI      |Birth     |MAL-ED         |PERU         |Medium   |     88|   300|
|QI      |Birth     |MAL-ED         |NEPAL        |High     |     66|   218|
|QI      |Birth     |MAL-ED         |NEPAL        |Low      |    104|   218|
|QI      |Birth     |MAL-ED         |NEPAL        |Medium   |     48|   218|
|QI      |Birth     |MAL-ED         |BRAZIL       |High     |     55|   232|
|QI      |Birth     |MAL-ED         |BRAZIL       |Low      |     77|   232|
|QI      |Birth     |MAL-ED         |BRAZIL       |Medium   |    100|   232|
|QI      |Birth     |MAL-ED         |TANZANIA     |High     |      3|   172|
|QI      |Birth     |MAL-ED         |TANZANIA     |Low      |     52|   172|
|QI      |Birth     |MAL-ED         |TANZANIA     |Medium   |    117|   172|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |High     |     95|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Low      |    172|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     47|   314|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |High     |    175|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |Low      |    217|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |Medium   |    214|   606|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |High     |    315|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    251|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    190|   756|
|QI      |Birth     |PROBIT         |BELARUS      |High     |   1051|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |Low      |   2541|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |Medium   |   3095|  6687|
|QI      |Birth     |PROVIDE        |BANGLADESH   |High     |    174|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Low      |    176|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Medium   |    181|   531|
|QI      |Birth     |SAS-CompFeed   |INDIA        |High     |     76|   396|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Low      |    184|   396|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Medium   |    136|   396|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |High     |    619|  2369|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Low      |     97|  2369|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Medium   |   1653|  2369|
|QI      |Birth     |Vellore Crypto |INDIA        |High     |    106|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |Low      |    140|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |Medium   |    133|   379|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |High     |   7049| 12851|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2710| 12851|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3092| 12851|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |High     |    132|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    108|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    107|   347|
|QI      |6 months  |COHORTS        |INDIA        |High     |    420|  3395|
|QI      |6 months  |COHORTS        |INDIA        |Low      |   1122|  3395|
|QI      |6 months  |COHORTS        |INDIA        |Medium   |   1853|  3395|
|QI      |6 months  |COHORTS        |GUATEMALA    |High     |    105|   402|
|QI      |6 months  |COHORTS        |GUATEMALA    |Low      |    165|   402|
|QI      |6 months  |COHORTS        |GUATEMALA    |Medium   |    132|   402|
|QI      |6 months  |COHORTS        |PHILIPPINES  |High     |   1067|  2408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |Low      |    918|  2408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |Medium   |    423|  2408|
|QI      |6 months  |EE             |PAKISTAN     |High     |     15|   341|
|QI      |6 months  |EE             |PAKISTAN     |Low      |    293|   341|
|QI      |6 months  |EE             |PAKISTAN     |Medium   |     33|   341|
|QI      |6 months  |GMS-Nepal      |NEPAL        |High     |     59|   548|
|QI      |6 months  |GMS-Nepal      |NEPAL        |Low      |    388|   548|
|QI      |6 months  |GMS-Nepal      |NEPAL        |Medium   |    101|   548|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |High     |    101|   249|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |Low      |     71|   249|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     77|   249|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |High     |   1648|  4853|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Low      |   1707|  4853|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   1498|  4853|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |High     |    300|   842|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |Low      |    277|   842|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |Medium   |    265|   842|
|QI      |6 months  |LCNI-5         |MALAWI       |High     |    325|   829|
|QI      |6 months  |LCNI-5         |MALAWI       |Low      |    257|   829|
|QI      |6 months  |LCNI-5         |MALAWI       |Medium   |    247|   829|
|QI      |6 months  |MAL-ED         |INDIA        |High     |     80|   207|
|QI      |6 months  |MAL-ED         |INDIA        |Low      |     72|   207|
|QI      |6 months  |MAL-ED         |INDIA        |Medium   |     55|   207|
|QI      |6 months  |MAL-ED         |BANGLADESH   |High     |    101|   228|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Low      |     80|   228|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Medium   |     47|   228|
|QI      |6 months  |MAL-ED         |PERU         |High     |     93|   267|
|QI      |6 months  |MAL-ED         |PERU         |Low      |     97|   267|
|QI      |6 months  |MAL-ED         |PERU         |Medium   |     77|   267|
|QI      |6 months  |MAL-ED         |NEPAL        |High     |     63|   204|
|QI      |6 months  |MAL-ED         |NEPAL        |Low      |     98|   204|
|QI      |6 months  |MAL-ED         |NEPAL        |Medium   |     43|   204|
|QI      |6 months  |MAL-ED         |BRAZIL       |High     |     51|   214|
|QI      |6 months  |MAL-ED         |BRAZIL       |Low      |     69|   214|
|QI      |6 months  |MAL-ED         |BRAZIL       |Medium   |     94|   214|
|QI      |6 months  |MAL-ED         |TANZANIA     |High     |      5|   204|
|QI      |6 months  |MAL-ED         |TANZANIA     |Low      |     67|   204|
|QI      |6 months  |MAL-ED         |TANZANIA     |Medium   |    132|   204|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |High     |     87|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Low      |    160|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     38|   285|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |High     |    115|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |Low      |    132|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |Medium   |    144|   391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |High     |    217|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    180|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    140|   537|
|QI      |6 months  |PROBIT         |BELARUS      |High     |    793|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |Low      |   1993|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |Medium   |   2393|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH   |High     |    212|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Low      |    186|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Medium   |    213|   611|
|QI      |6 months  |SAS-CompFeed   |INDIA        |High     |     45|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Low      |    128|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Medium   |    100|   273|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |High     |     19|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |Low      |    216|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     20|   255|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |High     |    508|  1934|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Low      |     80|  1934|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1346|  1934|
|QI      |6 months  |Vellore Crypto |INDIA        |High     |    106|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |Low      |    144|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |Medium   |    133|   383|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |High     |   3454|  6303|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1311|  6303|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   1538|  6303|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |High     |     57|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |Low      |     36|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |Medium   |     52|   145|
|QI      |24 months |COHORTS        |GUATEMALA    |High     |      8|    30|
|QI      |24 months |COHORTS        |GUATEMALA    |Low      |     11|    30|
|QI      |24 months |COHORTS        |GUATEMALA    |Medium   |     11|    30|
|QI      |24 months |COHORTS        |PHILIPPINES  |High     |    128|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |Low      |    119|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |Medium   |     48|   295|
|QI      |24 months |EE             |PAKISTAN     |High     |      6|   112|
|QI      |24 months |EE             |PAKISTAN     |Low      |     90|   112|
|QI      |24 months |EE             |PAKISTAN     |Medium   |     16|   112|
|QI      |24 months |GMS-Nepal      |NEPAL        |High     |     20|   192|
|QI      |24 months |GMS-Nepal      |NEPAL        |Low      |    141|   192|
|QI      |24 months |GMS-Nepal      |NEPAL        |Medium   |     31|   192|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |High     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |Low      |      1|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |Medium   |      2|     3|
|QI      |24 months |JiVitA-3       |BANGLADESH   |High     |      2|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Low      |      2|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Medium   |      2|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH   |High     |     23|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |Low      |     16|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |Medium   |     19|    58|
|QI      |24 months |LCNI-5         |MALAWI       |High     |     33|    83|
|QI      |24 months |LCNI-5         |MALAWI       |Low      |     24|    83|
|QI      |24 months |LCNI-5         |MALAWI       |Medium   |     26|    83|
|QI      |24 months |MAL-ED         |INDIA        |High     |     37|    92|
|QI      |24 months |MAL-ED         |INDIA        |Low      |     30|    92|
|QI      |24 months |MAL-ED         |INDIA        |Medium   |     25|    92|
|QI      |24 months |MAL-ED         |BANGLADESH   |High     |     39|    89|
|QI      |24 months |MAL-ED         |BANGLADESH   |Low      |     36|    89|
|QI      |24 months |MAL-ED         |BANGLADESH   |Medium   |     14|    89|
|QI      |24 months |MAL-ED         |PERU         |High     |     27|    66|
|QI      |24 months |MAL-ED         |PERU         |Low      |     20|    66|
|QI      |24 months |MAL-ED         |PERU         |Medium   |     19|    66|
|QI      |24 months |MAL-ED         |NEPAL        |High     |     29|    95|
|QI      |24 months |MAL-ED         |NEPAL        |Low      |     47|    95|
|QI      |24 months |MAL-ED         |NEPAL        |Medium   |     19|    95|
|QI      |24 months |MAL-ED         |BRAZIL       |High     |     21|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |Low      |     18|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |Medium   |     32|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |High     |      2|    73|
|QI      |24 months |MAL-ED         |TANZANIA     |Low      |     15|    73|
|QI      |24 months |MAL-ED         |TANZANIA     |Medium   |     56|    73|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |High     |     31|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Low      |     43|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Medium   |     15|    89|
|QI      |24 months |NIH-Birth      |BANGLADESH   |High     |      6|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |Low      |     18|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |Medium   |      8|    32|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |High     |     22|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Low      |     14|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Medium   |     11|    47|
|QI      |24 months |PROBIT         |BELARUS      |High     |     21|   143|
|QI      |24 months |PROBIT         |BELARUS      |Low      |     50|   143|
|QI      |24 months |PROBIT         |BELARUS      |Medium   |     72|   143|
|QI      |24 months |PROVIDE        |BANGLADESH   |High     |     17|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |Low      |     22|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |Medium   |     16|    55|
|QI      |24 months |SAS-CompFeed   |INDIA        |High     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |Low      |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |Medium   |      2|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |High     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |Low      |      6|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |Medium   |      0|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |High     |     14|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Low      |      1|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Medium   |     39|    54|
|QI      |24 months |Vellore Crypto |INDIA        |High     |     51|   161|
|QI      |24 months |Vellore Crypto |INDIA        |Low      |     60|   161|
|QI      |24 months |Vellore Crypto |INDIA        |Medium   |     50|   161|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |High     |     71|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Low      |     32|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |     49|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```


