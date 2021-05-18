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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mage    | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:-------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|    110|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|    156|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           0|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           1|     42|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           0|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     30|   373|
|0-24 months |COHORTS        |INDIA        |[20-30) |           0|   2483|  6156|
|0-24 months |COHORTS        |INDIA        |[20-30) |           1|   1246|  6156|
|0-24 months |COHORTS        |INDIA        |<20     |           0|    696|  6156|
|0-24 months |COHORTS        |INDIA        |<20     |           1|    290|  6156|
|0-24 months |COHORTS        |INDIA        |>=30    |           0|    944|  6156|
|0-24 months |COHORTS        |INDIA        |>=30    |           1|    497|  6156|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |           0|    436|  1339|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |           1|    156|  1339|
|0-24 months |COHORTS        |GUATEMALA    |<20     |           0|    194|  1339|
|0-24 months |COHORTS        |GUATEMALA    |<20     |           1|     72|  1339|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |           0|    369|  1339|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |           1|    112|  1339|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |           0|    939|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |           1|    641|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |           0|    308|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |           1|    215|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |           0|    569|  3045|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |           1|    373|  3045|
|0-24 months |EE             |PAKISTAN     |[20-30) |           0|     68|   379|
|0-24 months |EE             |PAKISTAN     |[20-30) |           1|     90|   379|
|0-24 months |EE             |PAKISTAN     |<20     |           0|      0|   379|
|0-24 months |EE             |PAKISTAN     |<20     |           1|      2|   379|
|0-24 months |EE             |PAKISTAN     |>=30    |           0|     86|   379|
|0-24 months |EE             |PAKISTAN     |>=30    |           1|    133|   379|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |           0|    158|   686|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |           1|    253|   686|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |           0|     76|   686|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |           1|     95|   686|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |           0|     47|   686|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |           1|     57|   686|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           0|    140|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           1|     14|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |           0|     56|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |           1|      5|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           0|     75|   299|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           1|      9|   299|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           0|   1142|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           1|    343|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           0|    437|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           1|    135|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           0|    905|  3230|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           1|    268|  3230|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           0|   9226| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           1|   3184| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |           0|   9011| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |           1|   3153| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |           0|   1757| 26948|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |           1|    617| 26948|
|0-24 months |Keneba         |GAMBIA       |[20-30) |           0|    530|  2915|
|0-24 months |Keneba         |GAMBIA       |[20-30) |           1|    389|  2915|
|0-24 months |Keneba         |GAMBIA       |<20     |           0|    150|  2915|
|0-24 months |Keneba         |GAMBIA       |<20     |           1|    113|  2915|
|0-24 months |Keneba         |GAMBIA       |>=30    |           0|    958|  2915|
|0-24 months |Keneba         |GAMBIA       |>=30    |           1|    775|  2915|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |           0|    375|   761|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |           1|     26|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |           0|    133|   761|
|0-24 months |LCNI-5         |MALAWI       |<20     |           1|     21|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |           0|    188|   761|
|0-24 months |LCNI-5         |MALAWI       |>=30    |           1|     18|   761|
|0-24 months |MAL-ED         |INDIA        |[20-30) |           0|     79|   251|
|0-24 months |MAL-ED         |INDIA        |[20-30) |           1|     82|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |           0|     21|   251|
|0-24 months |MAL-ED         |INDIA        |<20     |           1|     18|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |           0|     31|   251|
|0-24 months |MAL-ED         |INDIA        |>=30    |           1|     20|   251|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |           0|    108|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |           1|     46|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |           0|     22|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |           1|     16|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |           0|     46|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |           1|     25|   263|
|0-24 months |MAL-ED         |PERU         |[20-30) |           0|    142|   302|
|0-24 months |MAL-ED         |PERU         |[20-30) |           1|     10|   302|
|0-24 months |MAL-ED         |PERU         |<20     |           0|     37|   302|
|0-24 months |MAL-ED         |PERU         |<20     |           1|     10|   302|
|0-24 months |MAL-ED         |PERU         |>=30    |           0|     96|   302|
|0-24 months |MAL-ED         |PERU         |>=30    |           1|      7|   302|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |           0|    111|   240|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |           1|     36|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |           0|      4|   240|
|0-24 months |MAL-ED         |NEPAL        |<20     |           1|      5|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |           0|     51|   240|
|0-24 months |MAL-ED         |NEPAL        |>=30    |           1|     33|   240|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |           0|    116|   233|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |           1|     10|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |           0|     27|   233|
|0-24 months |MAL-ED         |BRAZIL       |<20     |           1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |           0|     70|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |           1|      8|   233|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |           0|     95|   261|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |           1|     16|   261|
|0-24 months |MAL-ED         |TANZANIA     |<20     |           0|     13|   261|
|0-24 months |MAL-ED         |TANZANIA     |<20     |           1|      1|   261|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |           0|    117|   261|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |           1|     19|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           0|    110|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     25|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |           0|     32|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |           1|     12|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           0|    106|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           1|     27|   312|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           0|    195|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           1|    179|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |           0|     65|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |           1|     51|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |           0|     66|   623|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |           1|     67|   623|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           0|    338|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           1|    178|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |           0|     48|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |           1|     19|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           0|    122|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           1|     53|   758|
|0-24 months |PROBIT         |BELARUS      |[20-30) |           0|   8980| 16898|
|0-24 months |PROBIT         |BELARUS      |[20-30) |           1|   3110| 16898|
|0-24 months |PROBIT         |BELARUS      |<20     |           0|   1363| 16898|
|0-24 months |PROBIT         |BELARUS      |<20     |           1|    450| 16898|
|0-24 months |PROBIT         |BELARUS      |>=30    |           0|   2239| 16898|
|0-24 months |PROBIT         |BELARUS      |>=30    |           1|    756| 16898|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |           0|    302|   700|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |           1|    155|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |           0|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |           1|     31|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |           0|    113|   700|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |           1|     60|   700|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |           0|    648|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |           1|    467|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |           0|    136|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |           1|     91|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |           0|     99|  1511|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |           1|     70|  1511|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           0|    141|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           1|    123|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |           0|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |           1|     13|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           0|     67|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           1|     61|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           0|    987|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    309|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |           0|    294|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |           1|     89|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           0|    546|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           1|    168|  2393|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |           0|     92|   410|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |           1|    189|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |           0|     19|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |           1|     35|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |           0|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |           1|     45|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|   7323| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|   2269| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           0|   1972| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           1|    620| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           0|   1331| 13924|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           1|    409| 13924|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|    129|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|    134|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |           0|     33|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |           1|     33|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |           0|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     23|   368|
|0-6 months  |COHORTS        |INDIA        |[20-30) |           0|   2688|  5920|
|0-6 months  |COHORTS        |INDIA        |[20-30) |           1|    903|  5920|
|0-6 months  |COHORTS        |INDIA        |<20     |           0|    734|  5920|
|0-6 months  |COHORTS        |INDIA        |<20     |           1|    220|  5920|
|0-6 months  |COHORTS        |INDIA        |>=30    |           0|   1004|  5920|
|0-6 months  |COHORTS        |INDIA        |>=30    |           1|    371|  5920|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |           0|    367|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |[20-30) |           1|     97|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |           0|    171|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |<20     |           1|     46|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |           0|    310|  1060|
|0-6 months  |COHORTS        |GUATEMALA    |>=30    |           1|     69|  1060|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |           0|   1199|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |           1|    381|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |           0|    404|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |           1|    119|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |           0|    724|  3044|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |           1|    217|  3044|
|0-6 months  |EE             |PAKISTAN     |[20-30) |           0|    103|   379|
|0-6 months  |EE             |PAKISTAN     |[20-30) |           1|     55|   379|
|0-6 months  |EE             |PAKISTAN     |<20     |           0|      2|   379|
|0-6 months  |EE             |PAKISTAN     |<20     |           1|      0|   379|
|0-6 months  |EE             |PAKISTAN     |>=30    |           0|    150|   379|
|0-6 months  |EE             |PAKISTAN     |>=30    |           1|     69|   379|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |           0|    247|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |           1|    164|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |           0|    116|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |           1|     55|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |           0|     65|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |           1|     39|   686|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |           0|    136|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |           1|      5|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |           0|     55|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |<20     |           1|      1|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |           0|     79|   279|
|0-6 months  |Guatemala BSC  |GUATEMALA    |>=30    |           1|      3|   279|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |           0|  10180| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |           1|   2188| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |           0|  10033| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |           1|   2083| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |           0|   1906| 26851|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |           1|    461| 26851|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |           0|    582|  2463|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |           1|    203|  2463|
|0-6 months  |Keneba         |GAMBIA       |<20     |           0|    158|  2463|
|0-6 months  |Keneba         |GAMBIA       |<20     |           1|     63|  2463|
|0-6 months  |Keneba         |GAMBIA       |>=30    |           0|   1050|  2463|
|0-6 months  |Keneba         |GAMBIA       |>=30    |           1|    407|  2463|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |           0|    113|   244|
|0-6 months  |LCNI-5         |MALAWI       |[20-30) |           1|      1|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |           0|     58|   244|
|0-6 months  |LCNI-5         |MALAWI       |<20     |           1|      1|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |           0|     70|   244|
|0-6 months  |LCNI-5         |MALAWI       |>=30    |           1|      1|   244|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |           0|    104|   251|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |           1|     57|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |           0|     29|   251|
|0-6 months  |MAL-ED         |INDIA        |<20     |           1|     10|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |           0|     36|   251|
|0-6 months  |MAL-ED         |INDIA        |>=30    |           1|     15|   251|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |           0|    123|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |           1|     31|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |           0|     25|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |           1|     13|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |           0|     55|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |           1|     16|   263|
|0-6 months  |MAL-ED         |PERU         |[20-30) |           0|    146|   302|
|0-6 months  |MAL-ED         |PERU         |[20-30) |           1|      6|   302|
|0-6 months  |MAL-ED         |PERU         |<20     |           0|     44|   302|
|0-6 months  |MAL-ED         |PERU         |<20     |           1|      3|   302|
|0-6 months  |MAL-ED         |PERU         |>=30    |           0|    101|   302|
|0-6 months  |MAL-ED         |PERU         |>=30    |           1|      2|   302|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |           0|    124|   240|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |           1|     23|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |           0|      6|   240|
|0-6 months  |MAL-ED         |NEPAL        |<20     |           1|      3|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |           0|     62|   240|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |           1|     22|   240|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |           0|    119|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |           1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |           0|     27|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |           1|      2|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |           0|     72|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |           1|      6|   233|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |           0|    106|   261|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |           1|      5|   261|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |           0|     14|   261|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |           1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |           0|    128|   261|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |           1|      8|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |           0|    122|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     13|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |           0|     36|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |           1|      8|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |           0|    119|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |           1|     14|   312|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |           0|    244|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |           1|    129|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |           0|     75|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |           1|     41|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |           0|     80|   621|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |           1|     52|   621|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |           0|    379|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |           1|    137|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |           0|     51|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |           1|     16|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |           0|    133|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |           1|     42|   758|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |           0|   9038| 16895|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |           1|   3050| 16895|
|0-6 months  |PROBIT         |BELARUS      |<20     |           0|   1374| 16895|
|0-6 months  |PROBIT         |BELARUS      |<20     |           1|    439| 16895|
|0-6 months  |PROBIT         |BELARUS      |>=30    |           0|   2259| 16895|
|0-6 months  |PROBIT         |BELARUS      |>=30    |           1|    735| 16895|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |           0|    347|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |           1|    110|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |           0|     47|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |           1|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |           0|    125|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |           1|     48|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |           0|    868|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |[20-30) |           1|    240|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |           0|    173|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |<20     |           1|     53|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |           0|    131|  1503|
|0-6 months  |SAS-CompFeed   |INDIA        |>=30    |           1|     38|  1503|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |           0|    217|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |           1|     47|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |           0|     21|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |<20     |           1|      5|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |           0|    102|   418|
|0-6 months  |SAS-FoodSuppl  |INDIA        |>=30    |           1|     26|   418|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |           0|   1121|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    175|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |           0|    328|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |           1|     55|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |           0|    611|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |           1|    103|  2393|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |           0|    126|   410|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |           1|    155|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |           0|     25|   410|
|0-6 months  |Vellore Crypto |INDIA        |<20     |           1|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |           0|     36|   410|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |           1|     39|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|   7794| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|   1737| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |           0|   2110| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |           1|    464| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |           0|   1419| 13832|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |           1|    308| 13832|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           0|    204|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |           1|     62|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           0|     46|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |           1|     21|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           0|     24|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |           1|     16|   373|
|6-24 months |COHORTS        |INDIA        |[20-30) |           0|   3049|  5767|
|6-24 months |COHORTS        |INDIA        |[20-30) |           1|    432|  5767|
|6-24 months |COHORTS        |INDIA        |<20     |           0|    830|  5767|
|6-24 months |COHORTS        |INDIA        |<20     |           1|     96|  5767|
|6-24 months |COHORTS        |INDIA        |>=30    |           0|   1187|  5767|
|6-24 months |COHORTS        |INDIA        |>=30    |           1|    173|  5767|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |           0|    466|  1212|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |           1|     69|  1212|
|6-24 months |COHORTS        |GUATEMALA    |<20     |           0|    210|  1212|
|6-24 months |COHORTS        |GUATEMALA    |<20     |           1|     30|  1212|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |           0|    383|  1212|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |           1|     54|  1212|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |           0|   1082|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |           1|    384|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |           0|    349|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |           1|    137|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |           0|    629|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |           1|    228|  2809|
|6-24 months |EE             |PAKISTAN     |[20-30) |           0|     94|   373|
|6-24 months |EE             |PAKISTAN     |[20-30) |           1|     63|   373|
|6-24 months |EE             |PAKISTAN     |<20     |           0|      0|   373|
|6-24 months |EE             |PAKISTAN     |<20     |           1|      2|   373|
|6-24 months |EE             |PAKISTAN     |>=30    |           0|    119|   373|
|6-24 months |EE             |PAKISTAN     |>=30    |           1|     95|   373|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |           0|    175|   590|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |           1|    176|   590|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |           0|     89|   590|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |           1|     58|   590|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |           0|     47|   590|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |           1|     45|   590|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           0|    124|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |           1|     11|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |           0|     48|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |           1|      4|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           0|     72|   265|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |           1|      6|   265|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           0|   1142|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |           1|    343|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           0|    437|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |           1|    135|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           0|    905|  3230|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |           1|    268|  3230|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           0|   6436| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |           1|   1275| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |           0|   6916| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |           1|   1346| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |           0|   1107| 17295|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |           1|    215| 17295|
|6-24 months |Keneba         |GAMBIA       |[20-30) |           0|    600|  2733|
|6-24 months |Keneba         |GAMBIA       |[20-30) |           1|    269|  2733|
|6-24 months |Keneba         |GAMBIA       |<20     |           0|    170|  2733|
|6-24 months |Keneba         |GAMBIA       |<20     |           1|     77|  2733|
|6-24 months |Keneba         |GAMBIA       |>=30    |           0|   1097|  2733|
|6-24 months |Keneba         |GAMBIA       |>=30    |           1|    520|  2733|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |           0|    370|   750|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |           1|     25|   750|
|6-24 months |LCNI-5         |MALAWI       |<20     |           0|    131|   750|
|6-24 months |LCNI-5         |MALAWI       |<20     |           1|     20|   750|
|6-24 months |LCNI-5         |MALAWI       |>=30    |           0|    187|   750|
|6-24 months |LCNI-5         |MALAWI       |>=30    |           1|     17|   750|
|6-24 months |MAL-ED         |INDIA        |[20-30) |           0|    110|   235|
|6-24 months |MAL-ED         |INDIA        |[20-30) |           1|     40|   235|
|6-24 months |MAL-ED         |INDIA        |<20     |           0|     24|   235|
|6-24 months |MAL-ED         |INDIA        |<20     |           1|     12|   235|
|6-24 months |MAL-ED         |INDIA        |>=30    |           0|     37|   235|
|6-24 months |MAL-ED         |INDIA        |>=30    |           1|     12|   235|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |           0|    114|   240|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |           1|     25|   240|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |           0|     30|   240|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |           1|      5|   240|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |           0|     53|   240|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |           1|     13|   240|
|6-24 months |MAL-ED         |PERU         |[20-30) |           0|    130|   270|
|6-24 months |MAL-ED         |PERU         |[20-30) |           1|      4|   270|
|6-24 months |MAL-ED         |PERU         |<20     |           0|     36|   270|
|6-24 months |MAL-ED         |PERU         |<20     |           1|      8|   270|
|6-24 months |MAL-ED         |PERU         |>=30    |           0|     86|   270|
|6-24 months |MAL-ED         |PERU         |>=30    |           1|      6|   270|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |           0|    125|   235|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |           1|     20|   235|
|6-24 months |MAL-ED         |NEPAL        |<20     |           0|      6|   235|
|6-24 months |MAL-ED         |NEPAL        |<20     |           1|      3|   235|
|6-24 months |MAL-ED         |NEPAL        |>=30    |           0|     68|   235|
|6-24 months |MAL-ED         |NEPAL        |>=30    |           1|     13|   235|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |           0|    106|   207|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |           1|      3|   207|
|6-24 months |MAL-ED         |BRAZIL       |<20     |           0|     22|   207|
|6-24 months |MAL-ED         |BRAZIL       |<20     |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |           0|     73|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |           1|      2|   207|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |           0|     91|   245|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |           1|     13|   245|
|6-24 months |MAL-ED         |TANZANIA     |<20     |           0|     10|   245|
|6-24 months |MAL-ED         |TANZANIA     |<20     |           1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |           0|    116|   245|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |           1|     14|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           0|     99|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |           1|     17|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |           0|     28|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |           1|      5|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           0|     95|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |           1|     15|   259|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           0|    224|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |           1|    100|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |           0|     77|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |           1|     25|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |           0|     82|   541|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |           1|     33|   541|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           0|    422|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |           1|     75|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |           0|     57|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |           1|      5|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           0|    155|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |           1|     16|   730|
|6-24 months |PROBIT         |BELARUS      |[20-30) |           0|  11767| 16598|
|6-24 months |PROBIT         |BELARUS      |[20-30) |           1|     95| 16598|
|6-24 months |PROBIT         |BELARUS      |<20     |           0|   1771| 16598|
|6-24 months |PROBIT         |BELARUS      |<20     |           1|     17| 16598|
|6-24 months |PROBIT         |BELARUS      |>=30    |           0|   2921| 16598|
|6-24 months |PROBIT         |BELARUS      |>=30    |           1|     27| 16598|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |           0|    333|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |           1|     66|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |           0|     48|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |           1|     13|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |           0|    135|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |           1|     20|   615|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |           0|    706|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |           1|    318|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |           0|    151|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |           1|     58|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |           0|    107|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |           1|     49|  1389|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           0|    164|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |           1|     91|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |           0|     15|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |           1|     10|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           0|     80|   402|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |           1|     42|   402|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           0|    898|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |           1|    183|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |           0|    279|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |           1|     50|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           0|    515|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |           1|     91|  2016|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |           0|    192|   410|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |           1|     89|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |           0|     36|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |           1|     18|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |           0|     55|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |           1|     20|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           0|   6764| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |           1|    689| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           0|   1744| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |           1|    217| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           0|   1258| 10800|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |           1|    128| 10800|


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
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


