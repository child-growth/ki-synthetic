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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mage    | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |         0|    250|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |         1|     16|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |         0|     64|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<20     |         1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |         0|     36|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |         1|      4|   373|
|0-24 months |COHORTS        |INDIA        |[20-30) |         0|   2585|  4730|
|0-24 months |COHORTS        |INDIA        |[20-30) |         1|    272|  4730|
|0-24 months |COHORTS        |INDIA        |<20     |         0|    685|  4730|
|0-24 months |COHORTS        |INDIA        |<20     |         1|     71|  4730|
|0-24 months |COHORTS        |INDIA        |>=30    |         0|   1006|  4730|
|0-24 months |COHORTS        |INDIA        |>=30    |         1|    111|  4730|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |         0|    447|  1052|
|0-24 months |COHORTS        |GUATEMALA    |[20-30) |         1|     18|  1052|
|0-24 months |COHORTS        |GUATEMALA    |<20     |         0|    203|  1052|
|0-24 months |COHORTS        |GUATEMALA    |<20     |         1|      6|  1052|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |         0|    366|  1052|
|0-24 months |COHORTS        |GUATEMALA    |>=30    |         1|     12|  1052|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |         0|   1401|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |[20-30) |         1|     69|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |         0|    458|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |<20     |         1|     27|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |         0|    808|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |>=30    |         1|     48|  2811|
|0-24 months |EE             |PAKISTAN     |[20-30) |         0|    141|   376|
|0-24 months |EE             |PAKISTAN     |[20-30) |         1|     16|   376|
|0-24 months |EE             |PAKISTAN     |<20     |         0|      2|   376|
|0-24 months |EE             |PAKISTAN     |<20     |         1|      0|   376|
|0-24 months |EE             |PAKISTAN     |>=30    |         0|    200|   376|
|0-24 months |EE             |PAKISTAN     |>=30    |         1|     17|   376|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |         0|    303|   597|
|0-24 months |GMS-Nepal      |NEPAL        |[20-30) |         1|     54|   597|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |         0|    133|   597|
|0-24 months |GMS-Nepal      |NEPAL        |<20     |         1|     14|   597|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |         0|     81|   597|
|0-24 months |GMS-Nepal      |NEPAL        |>=30    |         1|     12|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |         0|    123|   244|
|0-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |         1|      2|   244|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |         0|     48|   244|
|0-24 months |Guatemala BSC  |GUATEMALA    |<20     |         1|      0|   244|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |         0|     70|   244|
|0-24 months |Guatemala BSC  |GUATEMALA    |>=30    |         1|      1|   244|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |         0|    651|  1646|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |         1|     92|  1646|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |         0|    266|  1646|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |         1|     38|  1646|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |         0|    532|  1646|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |         1|     67|  1646|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |         0|   6640| 15800|
|0-24 months |JiVitA-3       |BANGLADESH   |[20-30) |         1|    424| 15800|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |         0|   7135| 15800|
|0-24 months |JiVitA-3       |BANGLADESH   |<20     |         1|    392| 15800|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |         0|   1127| 15800|
|0-24 months |JiVitA-3       |BANGLADESH   |>=30    |         1|     82| 15800|
|0-24 months |Keneba         |GAMBIA       |[20-30) |         0|    728|  2440|
|0-24 months |Keneba         |GAMBIA       |[20-30) |         1|     47|  2440|
|0-24 months |Keneba         |GAMBIA       |<20     |         0|    212|  2440|
|0-24 months |Keneba         |GAMBIA       |<20     |         1|      7|  2440|
|0-24 months |Keneba         |GAMBIA       |>=30    |         0|   1355|  2440|
|0-24 months |Keneba         |GAMBIA       |>=30    |         1|     91|  2440|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |         0|    338|   650|
|0-24 months |LCNI-5         |MALAWI       |[20-30) |         1|      2|   650|
|0-24 months |LCNI-5         |MALAWI       |<20     |         0|    130|   650|
|0-24 months |LCNI-5         |MALAWI       |<20     |         1|      3|   650|
|0-24 months |LCNI-5         |MALAWI       |>=30    |         0|    176|   650|
|0-24 months |LCNI-5         |MALAWI       |>=30    |         1|      1|   650|
|0-24 months |MAL-ED         |INDIA        |[20-30) |         0|    145|   241|
|0-24 months |MAL-ED         |INDIA        |[20-30) |         1|     11|   241|
|0-24 months |MAL-ED         |INDIA        |<20     |         0|     32|   241|
|0-24 months |MAL-ED         |INDIA        |<20     |         1|      4|   241|
|0-24 months |MAL-ED         |INDIA        |>=30    |         0|     43|   241|
|0-24 months |MAL-ED         |INDIA        |>=30    |         1|      6|   241|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |         0|    138|   248|
|0-24 months |MAL-ED         |BANGLADESH   |[20-30) |         1|      7|   248|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |         0|     35|   248|
|0-24 months |MAL-ED         |BANGLADESH   |<20     |         1|      1|   248|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |         0|     62|   248|
|0-24 months |MAL-ED         |BANGLADESH   |>=30    |         1|      5|   248|
|0-24 months |MAL-ED         |PERU         |[20-30) |         0|    143|   284|
|0-24 months |MAL-ED         |PERU         |[20-30) |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |<20     |         0|     45|   284|
|0-24 months |MAL-ED         |PERU         |<20     |         1|      0|   284|
|0-24 months |MAL-ED         |PERU         |>=30    |         0|     95|   284|
|0-24 months |MAL-ED         |PERU         |>=30    |         1|      1|   284|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |         0|    144|   238|
|0-24 months |MAL-ED         |NEPAL        |[20-30) |         1|      3|   238|
|0-24 months |MAL-ED         |NEPAL        |<20     |         0|      8|   238|
|0-24 months |MAL-ED         |NEPAL        |<20     |         1|      1|   238|
|0-24 months |MAL-ED         |NEPAL        |>=30    |         0|     82|   238|
|0-24 months |MAL-ED         |NEPAL        |>=30    |         1|      0|   238|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |         0|    114|   218|
|0-24 months |MAL-ED         |BRAZIL       |[20-30) |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL       |<20     |         0|     25|   218|
|0-24 months |MAL-ED         |BRAZIL       |<20     |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |         0|     77|   218|
|0-24 months |MAL-ED         |BRAZIL       |>=30    |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |         0|    109|   253|
|0-24 months |MAL-ED         |TANZANIA     |[20-30) |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |<20     |         0|     13|   253|
|0-24 months |MAL-ED         |TANZANIA     |<20     |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |         0|    131|   253|
|0-24 months |MAL-ED         |TANZANIA     |>=30    |         1|      0|   253|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |         0|    120|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |         0|     38|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |<20     |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |         0|    115|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=30    |         1|      0|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |         0|    287|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |[20-30) |         1|     33|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |         0|     91|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |<20     |         1|      9|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |         0|    108|   533|
|0-24 months |NIH-Birth      |BANGLADESH   |>=30    |         1|      5|   533|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |         0|    476|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |         1|     21|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |         0|     61|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |<20     |         1|      1|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |         0|    167|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=30    |         1|      4|   730|
|0-24 months |PROBIT         |BELARUS      |[20-30) |         0|  11756| 16583|
|0-24 months |PROBIT         |BELARUS      |[20-30) |         1|     95| 16583|
|0-24 months |PROBIT         |BELARUS      |<20     |         0|   1773| 16583|
|0-24 months |PROBIT         |BELARUS      |<20     |         1|     13| 16583|
|0-24 months |PROBIT         |BELARUS      |>=30    |         0|   2920| 16583|
|0-24 months |PROBIT         |BELARUS      |>=30    |         1|     26| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |         0|    404|   641|
|0-24 months |PROVIDE        |BANGLADESH   |[20-30) |         1|     11|   641|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |         0|     64|   641|
|0-24 months |PROVIDE        |BANGLADESH   |<20     |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |         0|    158|   641|
|0-24 months |PROVIDE        |BANGLADESH   |>=30    |         1|      4|   641|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |         0|    920|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |[20-30) |         1|     85|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |         0|    189|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |<20     |         1|     18|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |         0|    143|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |>=30    |         1|     11|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |         0|    202|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |         1|     35|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |         0|     18|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |<20     |         1|      6|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |         0|     90|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |>=30    |         1|     24|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |         0|   1135|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |         1|     33|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |         0|    342|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |<20     |         1|     11|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |         0|    629|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=30    |         1|     14|  2164|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |         0|    247|   410|
|0-24 months |Vellore Crypto |INDIA        |[20-30) |         1|     34|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |         0|     50|   410|
|0-24 months |Vellore Crypto |INDIA        |<20     |         1|      4|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |         0|     65|   410|
|0-24 months |Vellore Crypto |INDIA        |>=30    |         1|     10|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |         0|   6460|  9515|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |         1|    111|  9515|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |         0|   1662|  9515|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<20     |         1|     35|  9515|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |         0|   1225|  9515|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |         1|     22|  9515|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |         0|    222|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |         1|     34|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |         0|     57|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<20     |         1|      6|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |         0|     29|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |         1|     10|   358|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |         0|    414|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |[20-30) |         1|     24|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |         0|    146|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |<20     |         1|      7|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |         0|    241|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |>=30    |         1|     21|   853|
|0-6 months  |EE             |PAKISTAN     |[20-30) |         0|    147|   370|
|0-6 months  |EE             |PAKISTAN     |[20-30) |         1|      8|   370|
|0-6 months  |EE             |PAKISTAN     |<20     |         0|      2|   370|
|0-6 months  |EE             |PAKISTAN     |<20     |         1|      0|   370|
|0-6 months  |EE             |PAKISTAN     |>=30    |         0|    196|   370|
|0-6 months  |EE             |PAKISTAN     |>=30    |         1|     17|   370|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |         0|    302|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |[20-30) |         1|     38|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |         0|    131|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |<20     |         1|     11|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |         0|     72|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |>=30    |         1|     13|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |         0|     23|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |[20-30) |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |         0|     19|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |<20     |         1|      2|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |         0|      6|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=30    |         1|      0|    50|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |         0|    630|  2042|
|0-6 months  |Keneba         |GAMBIA       |[20-30) |         1|     14|  2042|
|0-6 months  |Keneba         |GAMBIA       |<20     |         0|    188|  2042|
|0-6 months  |Keneba         |GAMBIA       |<20     |         1|      6|  2042|
|0-6 months  |Keneba         |GAMBIA       |>=30    |         0|   1161|  2042|
|0-6 months  |Keneba         |GAMBIA       |>=30    |         1|     43|  2042|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |         0|    143|   240|
|0-6 months  |MAL-ED         |INDIA        |[20-30) |         1|     12|   240|
|0-6 months  |MAL-ED         |INDIA        |<20     |         0|     33|   240|
|0-6 months  |MAL-ED         |INDIA        |<20     |         1|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |>=30    |         0|     45|   240|
|0-6 months  |MAL-ED         |INDIA        |>=30    |         1|      4|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |         0|    140|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |[20-30) |         1|      5|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |         0|     36|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |<20     |         1|      0|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |         0|     65|   248|
|0-6 months  |MAL-ED         |BANGLADESH   |>=30    |         1|      2|   248|
|0-6 months  |MAL-ED         |PERU         |[20-30) |         0|    143|   284|
|0-6 months  |MAL-ED         |PERU         |[20-30) |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |<20     |         0|     45|   284|
|0-6 months  |MAL-ED         |PERU         |<20     |         1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |>=30    |         0|     96|   284|
|0-6 months  |MAL-ED         |PERU         |>=30    |         1|      0|   284|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |         0|    143|   238|
|0-6 months  |MAL-ED         |NEPAL        |[20-30) |         1|      4|   238|
|0-6 months  |MAL-ED         |NEPAL        |<20     |         0|      8|   238|
|0-6 months  |MAL-ED         |NEPAL        |<20     |         1|      1|   238|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |         0|     80|   238|
|0-6 months  |MAL-ED         |NEPAL        |>=30    |         1|      2|   238|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |         0|    115|   218|
|0-6 months  |MAL-ED         |BRAZIL       |[20-30) |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |         0|     25|   218|
|0-6 months  |MAL-ED         |BRAZIL       |<20     |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |         0|     77|   218|
|0-6 months  |MAL-ED         |BRAZIL       |>=30    |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |         0|    109|   253|
|0-6 months  |MAL-ED         |TANZANIA     |[20-30) |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |         0|     13|   253|
|0-6 months  |MAL-ED         |TANZANIA     |<20     |         1|      0|   253|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |         0|    131|   253|
|0-6 months  |MAL-ED         |TANZANIA     |>=30    |         1|      0|   253|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |         0|    120|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |         0|     38|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<20     |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |         0|    114|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=30    |         1|      0|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |         0|     93|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |[20-30) |         1|      8|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |         0|     24|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<20     |         1|      3|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |         0|     41|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=30    |         1|      0|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |         0|    165|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |         0|     18|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<20     |         1|      0|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |         0|     62|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=30    |         1|      3|   250|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |         0|   8818| 13534|
|0-6 months  |PROBIT         |BELARUS      |[20-30) |         1|    796| 13534|
|0-6 months  |PROBIT         |BELARUS      |<20     |         0|   1347| 13534|
|0-6 months  |PROBIT         |BELARUS      |<20     |         1|    106| 13534|
|0-6 months  |PROBIT         |BELARUS      |>=30    |         0|   2272| 13534|
|0-6 months  |PROBIT         |BELARUS      |>=30    |         1|    195| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |         0|    402|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |[20-30) |         1|     12|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |         0|     64|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |<20     |         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |         0|    158|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |>=30    |         1|      2|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |         0|   1076|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |         1|     31|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |         0|    333|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<20     |         1|      6|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |         0|    598|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=30    |         1|     15|  2059|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |         0|    238|   402|
|0-6 months  |Vellore Crypto |INDIA        |[20-30) |         1|     39|   402|
|0-6 months  |Vellore Crypto |INDIA        |<20     |         0|     43|   402|
|0-6 months  |Vellore Crypto |INDIA        |<20     |         1|      9|   402|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |         0|     57|   402|
|0-6 months  |Vellore Crypto |INDIA        |>=30    |         1|     16|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |         0|    443|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |         1|     10|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |         0|    100|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<20     |         1|      1|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |         0|     75|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |         1|      3|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |         0|    250|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |         1|     16|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |         0|     64|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<20     |         1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |         0|     36|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=30    |         1|      4|   373|
|6-24 months |COHORTS        |INDIA        |[20-30) |         0|   2585|  4730|
|6-24 months |COHORTS        |INDIA        |[20-30) |         1|    272|  4730|
|6-24 months |COHORTS        |INDIA        |<20     |         0|    685|  4730|
|6-24 months |COHORTS        |INDIA        |<20     |         1|     71|  4730|
|6-24 months |COHORTS        |INDIA        |>=30    |         0|   1006|  4730|
|6-24 months |COHORTS        |INDIA        |>=30    |         1|    111|  4730|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |         0|    447|  1052|
|6-24 months |COHORTS        |GUATEMALA    |[20-30) |         1|     18|  1052|
|6-24 months |COHORTS        |GUATEMALA    |<20     |         0|    203|  1052|
|6-24 months |COHORTS        |GUATEMALA    |<20     |         1|      6|  1052|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |         0|    366|  1052|
|6-24 months |COHORTS        |GUATEMALA    |>=30    |         1|     12|  1052|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |         0|   1401|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |[20-30) |         1|     69|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |         0|    458|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |<20     |         1|     27|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |         0|    808|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |>=30    |         1|     48|  2811|
|6-24 months |EE             |PAKISTAN     |[20-30) |         0|    141|   376|
|6-24 months |EE             |PAKISTAN     |[20-30) |         1|     16|   376|
|6-24 months |EE             |PAKISTAN     |<20     |         0|      2|   376|
|6-24 months |EE             |PAKISTAN     |<20     |         1|      0|   376|
|6-24 months |EE             |PAKISTAN     |>=30    |         0|    200|   376|
|6-24 months |EE             |PAKISTAN     |>=30    |         1|     17|   376|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |         0|    303|   597|
|6-24 months |GMS-Nepal      |NEPAL        |[20-30) |         1|     54|   597|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |         0|    133|   597|
|6-24 months |GMS-Nepal      |NEPAL        |<20     |         1|     14|   597|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |         0|     81|   597|
|6-24 months |GMS-Nepal      |NEPAL        |>=30    |         1|     12|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |         0|    123|   244|
|6-24 months |Guatemala BSC  |GUATEMALA    |[20-30) |         1|      2|   244|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |         0|     48|   244|
|6-24 months |Guatemala BSC  |GUATEMALA    |<20     |         1|      0|   244|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |         0|     70|   244|
|6-24 months |Guatemala BSC  |GUATEMALA    |>=30    |         1|      1|   244|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |         0|    651|  1646|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |         1|     92|  1646|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |         0|    266|  1646|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<20     |         1|     38|  1646|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |         0|    532|  1646|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |         1|     67|  1646|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |         0|   6640| 15800|
|6-24 months |JiVitA-3       |BANGLADESH   |[20-30) |         1|    424| 15800|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |         0|   7135| 15800|
|6-24 months |JiVitA-3       |BANGLADESH   |<20     |         1|    392| 15800|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |         0|   1127| 15800|
|6-24 months |JiVitA-3       |BANGLADESH   |>=30    |         1|     82| 15800|
|6-24 months |Keneba         |GAMBIA       |[20-30) |         0|    728|  2440|
|6-24 months |Keneba         |GAMBIA       |[20-30) |         1|     47|  2440|
|6-24 months |Keneba         |GAMBIA       |<20     |         0|    212|  2440|
|6-24 months |Keneba         |GAMBIA       |<20     |         1|      7|  2440|
|6-24 months |Keneba         |GAMBIA       |>=30    |         0|   1355|  2440|
|6-24 months |Keneba         |GAMBIA       |>=30    |         1|     91|  2440|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |         0|    338|   650|
|6-24 months |LCNI-5         |MALAWI       |[20-30) |         1|      2|   650|
|6-24 months |LCNI-5         |MALAWI       |<20     |         0|    130|   650|
|6-24 months |LCNI-5         |MALAWI       |<20     |         1|      3|   650|
|6-24 months |LCNI-5         |MALAWI       |>=30    |         0|    176|   650|
|6-24 months |LCNI-5         |MALAWI       |>=30    |         1|      1|   650|
|6-24 months |MAL-ED         |INDIA        |[20-30) |         0|    145|   241|
|6-24 months |MAL-ED         |INDIA        |[20-30) |         1|     11|   241|
|6-24 months |MAL-ED         |INDIA        |<20     |         0|     32|   241|
|6-24 months |MAL-ED         |INDIA        |<20     |         1|      4|   241|
|6-24 months |MAL-ED         |INDIA        |>=30    |         0|     43|   241|
|6-24 months |MAL-ED         |INDIA        |>=30    |         1|      6|   241|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |         0|    138|   248|
|6-24 months |MAL-ED         |BANGLADESH   |[20-30) |         1|      7|   248|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |         0|     35|   248|
|6-24 months |MAL-ED         |BANGLADESH   |<20     |         1|      1|   248|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |         0|     62|   248|
|6-24 months |MAL-ED         |BANGLADESH   |>=30    |         1|      5|   248|
|6-24 months |MAL-ED         |PERU         |[20-30) |         0|    143|   284|
|6-24 months |MAL-ED         |PERU         |[20-30) |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |<20     |         0|     45|   284|
|6-24 months |MAL-ED         |PERU         |<20     |         1|      0|   284|
|6-24 months |MAL-ED         |PERU         |>=30    |         0|     95|   284|
|6-24 months |MAL-ED         |PERU         |>=30    |         1|      1|   284|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |         0|    144|   238|
|6-24 months |MAL-ED         |NEPAL        |[20-30) |         1|      3|   238|
|6-24 months |MAL-ED         |NEPAL        |<20     |         0|      8|   238|
|6-24 months |MAL-ED         |NEPAL        |<20     |         1|      1|   238|
|6-24 months |MAL-ED         |NEPAL        |>=30    |         0|     82|   238|
|6-24 months |MAL-ED         |NEPAL        |>=30    |         1|      0|   238|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |         0|    114|   218|
|6-24 months |MAL-ED         |BRAZIL       |[20-30) |         1|      2|   218|
|6-24 months |MAL-ED         |BRAZIL       |<20     |         0|     25|   218|
|6-24 months |MAL-ED         |BRAZIL       |<20     |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |         0|     77|   218|
|6-24 months |MAL-ED         |BRAZIL       |>=30    |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |         0|    109|   253|
|6-24 months |MAL-ED         |TANZANIA     |[20-30) |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |<20     |         0|     13|   253|
|6-24 months |MAL-ED         |TANZANIA     |<20     |         1|      0|   253|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |         0|    131|   253|
|6-24 months |MAL-ED         |TANZANIA     |>=30    |         1|      0|   253|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |         0|    120|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |[20-30) |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |         0|     38|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |<20     |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |         0|    115|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=30    |         1|      0|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |         0|    287|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |[20-30) |         1|     33|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |         0|     91|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |<20     |         1|      9|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |         0|    108|   533|
|6-24 months |NIH-Birth      |BANGLADESH   |>=30    |         1|      5|   533|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |         0|    476|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |[20-30) |         1|     21|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |         0|     61|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |<20     |         1|      1|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |         0|    167|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=30    |         1|      4|   730|
|6-24 months |PROBIT         |BELARUS      |[20-30) |         0|  11756| 16583|
|6-24 months |PROBIT         |BELARUS      |[20-30) |         1|     95| 16583|
|6-24 months |PROBIT         |BELARUS      |<20     |         0|   1773| 16583|
|6-24 months |PROBIT         |BELARUS      |<20     |         1|     13| 16583|
|6-24 months |PROBIT         |BELARUS      |>=30    |         0|   2920| 16583|
|6-24 months |PROBIT         |BELARUS      |>=30    |         1|     26| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |         0|    404|   641|
|6-24 months |PROVIDE        |BANGLADESH   |[20-30) |         1|     11|   641|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |         0|     64|   641|
|6-24 months |PROVIDE        |BANGLADESH   |<20     |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |         0|    158|   641|
|6-24 months |PROVIDE        |BANGLADESH   |>=30    |         1|      4|   641|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |         0|    920|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |[20-30) |         1|     85|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |         0|    189|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |<20     |         1|     18|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |         0|    143|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |>=30    |         1|     11|  1366|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |         0|    202|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |[20-30) |         1|     35|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |         0|     18|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |<20     |         1|      6|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |         0|     90|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |>=30    |         1|     24|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |         0|   1135|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |[20-30) |         1|     33|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |         0|    342|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |<20     |         1|     11|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |         0|    629|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=30    |         1|     14|  2164|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |         0|    247|   410|
|6-24 months |Vellore Crypto |INDIA        |[20-30) |         1|     34|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |         0|     50|   410|
|6-24 months |Vellore Crypto |INDIA        |<20     |         1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |         0|     65|   410|
|6-24 months |Vellore Crypto |INDIA        |>=30    |         1|     10|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |         0|   6460|  9515|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |         1|    111|  9515|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |         0|   1662|  9515|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<20     |         1|     35|  9515|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |         0|   1225|  9515|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=30    |         1|     22|  9515|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
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
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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


